#!/usr/bin/awk -f
# $MawkId: decl.awk,v 1.12 2020/09/19 13:46:31 tom Exp $

# parse a C declaration by recursive descent
# based on a C program in K&R ANSI edition
#
# run on a C file it finds the declarations
#
# restrictions: one declaration per line
#               doesn't understand struct {...}
#               makes assumptions about type names
#
#
#  some awks need double escapes on strings used as
#  regular expressions.  If not run on mawk, use gdecl.awk

################################################
#   lexical scanner -- gobble()
#   input : string s -- treated as a regular expression
#   gobble eats SPACE, then eats longest match of s off front
#   of global variable line.
#   Cuts the matched part off of line

function gobble(s,  xg)
{
  if ( length(line) > 0 ) {
    sub( /^ /, "", line)  # eat SPACE if any

    # surround s with parenthesis to make sure ^ acts on the
    # whole thing

    if ( match(line, "^" "(" s ")") > 0 ) {
      xg = substr(line, 1, RLENGTH)
      line = (RLENGTH < length(line)) ? substr(line, RLENGTH+1) : ""
      return xg
    } else {
      return "";
    }
  } else {
    return "";
  }
}

function ptr_to(n,  xp)  # print "pointer to" , n times
{ n = int(n)
  if ( n <= 0 )  return ""
  xp = "pointer to" ; n--
  while ( n-- )  xp = xp " pointer to"
  return xp
}

#recursively get a decl
# returns an english description of the declaration or
# "" if not a C declaration.
function  decl(   xd, t, ptr_part)
{

  xd = gobble("[* ]+")   # get list of *** ...
  gsub(/ /, "", xd)   # remove all SPACES
  ptr_part = ptr_to( length(xd) )

  # We expect to see either an identifier or '('
  #

  if ( gobble("[(]") )
  {
    # this is the recursive descent part
    # we expect to match a declaration and closing ')'
    # If not return "" to indicate  failure

    if ( (xd = decl()) == "" || gobble( "[)]" ) == "" ) return ""

  }
  else  #  expecting an identifier
  {
    if ( (xd = gobble(id)) == "" )  return ""
    xd = xd ":"
  }

  # finally look for ()
  # or  [ opt_size ]

  while ( 1 )
     if ( gobble( funct_mark ) )  xd = xd " function returning"
     else
     if ( ( t = gobble( array_mark ) ) != "" )
     { gsub(/ /, "", t)
       xd = xd " array" t " of"
     }
     else  break

   xd = xd " "  ptr_part
   return xd
}

BEGIN {
  id = "[_A-Za-z][_A-Za-z0-9]*"
  funct_mark = "[(][ \t]*[)]"
  array_mark = "[[ \t]*[_A-Za-z0-9]*[ \t]*]"

# I've assumed types are keywords or all CAPS or end in _t
# Other conventions could be added.

   type0 = "int|char|short|long|double|float|void"
   type1 = "[_A-Z][_A-Z0-9]*"  #  types are CAPS
   type2 = "[_A-Za-z][_A-Za-z0-9]*_t"  # end in _t

   types = "(" type0 "|" type1 "|" type2 ")"
}


{
    gsub( "/[*]([^*]|[*][^/])*([*]/|$)" , " ") # remove comments
    gsub( /[ \t]+/, " ")  # squeeze white space to a single space

    line = $0

    scope = gobble( "extern|static" )

    if ( ( type = gobble("(struct|union|enum) ") ) != "" )
      type = type gobble(id)  #  get the tag
    else
    {
      type = gobble("(un)?signed ") gobble( types )
    }

    if ( ! type )  next

    if ( (x = decl()) != "" && gobble( ";") )
    {
      x  =  x " " type
      if ( scope )  x = x " (" scope ")"
      gsub( /  +/, " ", x)  #
      print x
    }
}
