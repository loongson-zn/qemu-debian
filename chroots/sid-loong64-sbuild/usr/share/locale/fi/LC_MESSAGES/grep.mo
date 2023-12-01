��    r      �  �   <      �	  �   �	  �   �
  �  y    O  �   `  �  ]  U    �  j  �  &  F  �          &     E  &   ]     �  -   �     �  !   �          ,     H  ,   ]     �  .   �  '   �  (        *  %   J     p     r     v     �     �  *   �     �  �   �  &   �     �     �     �       $        B     T  �   o          +     4     S     c  <   x  #   �     �     �       "        B     J  &   ]     �     �     �     �     �  )   �       �   (     "  ;   9  3   u  /   �  +   �  '      #   -      Q      q      �      �      �   4   �      �   !   !  -   2!  .   `!     �!     �!     �!     �!     �!     "     )"     ;"     L"     `"     n"     �"     �"     �"  $   �"     �"  ,   �"  *    #     K#     X#     e#     r#     �#     �#     �#  -   �#  ?   �#     1$     =$  �  Z$  �   '&  �   '  �  �'  �  �)  �  o+  �   -  �  �.  T  w0  �  �2  i  �4     �5  "   6     $6  (   D6     m6  6   �6     �6  *   �6     
7  &   '7     N7  -   `7  +   �7  8   �7  *   �7  +   8  &   J8  -   q8     �8     �8     �8     �8     �8  /   �8     9  �    9  1   �9     �9      :     :     ;:  /   Y:     �:  $   �:  �   �:     �;     �;  +   �;     �;     �;  T   �;  .   T<  &   �<  ;   �<  9   �<  "    =     C=     L=  .   ^=     �=     �=     �=     �=  
   �=  0   �=     &>  0  C>     t?  :   �?  4   �?  0   �?  ,   .@  (   [@  $   �@      �@     �@     �@     �@  /   �@  1   -A  '   _A      �A  6   �A  >   �A  #   B  '   BB     jB     �B  (   �B     �B     �B     C     C     0C  &   =C     dC     sC      �C  *   �C     �C  #   �C  .   D  	   >D  	   HD  	   RD     \D  &   yD  $   �D     �D  1   �D  E   E     JE     YE     r       N   '   c          X      R   I              	       V   f   P   #       S              >       o   (   5           D   Y   G   -   C                m   \       n          H              q       g   :   Q       <   k             b   d             F   /   ]               l   &       )   i      *   2   M       p       %   ^      h   $   ?   B   
           O   =   Z   _   .   K       "             +       ;   6      4       L      J      A   W      0   3              e             !       9       j             `           T   U   1   8          @   E      [   ,           7   a        
Context control:
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context=NUM         print NUM lines of output context
 
Miscellaneous:
  -s, --no-messages         suppress error messages
  -v, --invert-match        select non-matching lines
  -V, --version             display version information and exit
      --help                display this help text and exit
 
Output control:
  -m, --max-count=NUM       stop after NUM selected lines
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
      --line-buffered       flush output on every line
  -H, --with-filename       print file name with output lines
  -h, --no-filename         suppress the file name prefix on output
      --label=LABEL         use LABEL as the standard input file name prefix
       --include=GLOB        search only files that match GLOB (a file pattern)
      --exclude=GLOB        skip files that match GLOB
      --exclude-from=FILE   skip files that match any file pattern from FILE
      --exclude-dir=GLOB    skip directories that match GLOB
   -E, --extended-regexp     PATTERNS are extended regular expressions
  -F, --fixed-strings       PATTERNS are strings
  -G, --basic-regexp        PATTERNS are basic regular expressions
  -P, --perl-regexp         PATTERNS are Perl regular expressions
   -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories;
                            ACTION is 'read', 'recurse', or 'skip'
  -D, --devices=ACTION      how to handle devices, FIFOs and sockets;
                            ACTION is 'read' or 'skip'
  -r, --recursive           like --directories=recurse
  -R, --dereference-recursive  likewise, but follow all symlinks
   -L, --files-without-match  print only names of FILEs with no selected lines
  -l, --files-with-matches  print only names of FILEs with selected lines
  -c, --count               print only a count of selected lines per FILE
  -T, --initial-tab         make tabs line up (if needed)
  -Z, --null                print 0 byte after FILE name
   -NUM                      same as --context=NUM
      --group-separator=SEP  print SEP on line between matches with context
      --no-group-separator  do not print separator for matches with context
      --color[=WHEN],
      --colour[=WHEN]       use markers to highlight the matching strings;
                            WHEN is 'always', 'never', or 'auto'
  -U, --binary              do not strip CR characters at EOL (MSDOS/Windows)

   -e, --regexp=PATTERNS     use PATTERNS for matching
  -f, --file=FILE           take PATTERNS from FILE
  -i, --ignore-case         ignore case distinctions in patterns and data
      --no-ignore-case      do not ignore case distinctions (default)
  -w, --word-regexp         match only whole words
  -x, --line-regexp         match only whole lines
  -z, --null-data           a data line ends in 0 byte, not newline
   -o, --only-matching       show only nonempty parts of lines that match
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE;
                            TYPE is 'binary', 'text', or 'without-match'
  -a, --text                equivalent to --binary-files=text
 %s home page: <%s>
 %s: PCRE detected recurse loop %s: binary file matches %s: exceeded PCRE's backtracking limit %s: exceeded PCRE's heap limit %s: exceeded PCRE's nested backtracking limit %s: exhausted PCRE JIT stack %s: input file is also the output %s: internal PCRE error: %d %s: invalid option -- '%c'
 %s: memory exhausted %s: option '%s%s' doesn't allow an argument
 %s: option '%s%s' is ambiguous
 %s: option '%s%s' is ambiguous; possibilities: %s: option '%s%s' requires an argument
 %s: option requires an argument -- '%c'
 %s: unrecognized option '%s%s'
 %s: warning: recursive directory loop ' (C) (standard input) * at start of expression + at start of expression -P supports only unibyte and UTF-8 locales ? at start of expression Example: %s -i 'hello world' menu.h main.c
PATTERNS can contain multiple patterns separated by newlines.

Pattern selection and interpretation:
 General help using GNU software: <%s>
 Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression License GPLv3+: GNU GPL version 3 or later <%s>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
 Memory exhausted No match No previous regular expression Packaged by %s
 Packaged by %s (%s)
 Perl matching not supported in a --disable-perl-regexp build Premature end of regular expression Regular expression too big Report %s bugs to: %s
 Report bugs to: %s
 Search for PATTERNS in each FILE.
 Success Trailing backslash Try '%s --help' for more information.
 Unknown system error Unmatched ( or \( Unmatched ) or \) Unmatched [, [^, [:, [., or [= Unmatched \{ Usage: %s [OPTION]... PATTERNS [FILE]...
 Valid arguments are: When FILE is '-', read standard input.  With no FILE, read '.' if
recursive, '-' otherwise.  With fewer than two FILEs, assume -h.
Exit status is 0 if any line is selected, 1 otherwise;
if any error occurs and -q is not given, the exit status is 2.
 Written by %s and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, %s, and others.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
and %s.
 Written by %s, %s, %s,
%s, %s, %s, and %s.
 Written by %s, %s, %s,
%s, %s, and %s.
 Written by %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
and %s.
 Written by %s, %s, and %s.
 Written by %s.
 ` ambiguous argument %s for %s character class syntax is [[:space:]], not [:space:] conflicting matchers specified exceeded PCRE's line length limit failed to return to initial working directory failed to set file descriptor text/binary mode input is too large to count invalid argument %s for %s invalid character class invalid content of \{\} invalid context length argument invalid matcher %s invalid max count memory exhausted no syntax specified program error regular expression too big stack overflow stray \ stray \ before %lc stray \ before unprintable character stray \ before white space the -P option only supports a single pattern unable to record current working directory unbalanced ( unbalanced ) unbalanced [ unfinished \ escape unknown binary-files type unknown devices method warning: %s warning: --unix-byte-offsets (-u) is obsolete warning: GREP_COLOR='%s' is deprecated; use GREP_COLORS='mt=%s' write error {...} at start of expression Project-Id-Version: grep 3.7.98
Report-Msgid-Bugs-To: bug-grep@gnu.org
PO-Revision-Date: 2022-07-03 21:37+0300
Last-Translator: Lauri Nurmi <lanurmi@iki.fi>
Language-Team: Finnish <translation-team-fi@lists.sourceforge.net>
Language: fi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Bugs: Report translation errors to the Language-Team address.
X-Generator: Poedit 3.0.1
 
Kontekstin hallinta:
  -B, --before-context=N    tulosta N riviä edeltävää konteksia
  -A, --after-context=N     tulosta N riviä seuraavaa kontekstia
  -C, --context=N           tulosta N riviä tulostekonteksia
 
Sekalaista:
  -s, --no-messages         vaienna virheilmoitukset
  -v, --invert-match        valitse täsmäämättömät rivit
  -V, --version             näytä versiotiedot ja poistu
      --help                näytä tämä ohje ja poistu
 
Tulostehallinta:
  -m, --max-count=MÄÄRÄ     pysäytä MÄÄRÄn täsmäävän rivin jälkeen
  -b, --byte-offset         tulosta tavusiirros tulosteriveille
  -n, --line-number         tulosta rivinumero tulosteriveille
      --line-buffered       huuhtele tuloste joka rivillä
  -H, --with-filename       tulosta tiedostonimi tulosteriveille
  -h, --no-filename         vaienna tiedostonimet tulosteesta
      --label=NIMIÖ         tulosta NIMIÖ tiedostonimenä vakiosyötteelle
       --include=GLOB        etsi vain GLOBiin (tiedostohahmo) täsmäävistä
                              tiedostoista
      --exclude=GLOB        ohita GLOBiin täsmäävät tiedostot ja hakemistot
      --exclude-from=TIED   ohita mihin tahansa TIEDoston tiedostohahmoon
                              täsmäävät tiedostot
      --exclude-dir=GLOB    ohita GLOBiin täsmäävät hakemistot
   -E, --extended-regexp     HAHMOT ovat laajennettuja säännöllisiä
                              lausekkeita
  -F, --fixed-strings       HAHMOT ovat merkkijonoja
  -G, --basic-regexp        HAHMOT ovat tavallisia säännöllisiä
                              lausekkeita (oletus)
  -P, --perl-regexp         HAHMOT ovat Perl-tyyppisiä säännöllisiä
                              lausekkeita
   -I                        sama kuin --binary-files=without-match
  -d, --directories=TEKO    kuinka käsitellä hakemistoja;
                            TEKO on ”read”, ”recurse”, tai ”skip”
  -D, --devices=TEKO        kuinka käsitellä laitteita, FIFOja ja pistokkeita;
                            TEKO on ”read” tai ”skip”
  -r, --recursive           sama kuin --directories=recurse
  -R, --dereference-recursive  samoin, mutta seuraa kaikkia symlinkkejä
   -L, --files-without-match tulosta vain TIEDOSTOjen nimet, joissa ei yhtään valittua riviä
  -l, --files-with-matches  tulosta vain TIEDOSTOjen nimet, joissa on valittuja rivejä
  -c, --count               tulosta vain valittujen rivien lukumäärä TIEDOSTOa kohden
  -T, --initial-tab         kohdista sarkaimet (jos tarpeellista)
  -Z, --null                tulosta 0-tavu TIEDOSTOnimen jälkeen
   -MÄÄRÄ                    sama kuin --context=MÄÄRÄ
      --group-separator=EROT tulosta EROTin kontekstillisten täsmäävyyksien
                            välisille riveille
      --no-group-separator  älä tulosta erotinta kontekstillisille
                            täsmäävyyksille
      --color[=KUN],
      --colour[=KUN]        korosta täsmäävyydet väreillä;
                            KUN voi olla ”always” (aina), ”never”
                            (ei koskaan) tai ”auto”.
  -U, --binary              jätä CR-merkit rivien loppuun (MSDOS/Windows)

   -e, --regexp=HAHMOT       käytä HAHMOja täsmäämiseen
  -f, --file=TIEDOSTO       ota HAHMOT TIEDOSTOsta
  -i, --ignore-case         älä erottele pieniä ja suuria kirjaimia
                              hahmoissa eikä datassa
  -w, --word-regexp         täsmää vain kokonaisiin sanoihin
  -x, --line-regexp         täsmää vain kokonaisiin riveihin
  -z, --null-data           datarivi päättyy 0-tavuun, ei rivinvaihtoon
   -o, --only-matching       näytä vain täsmäävien rivien epätyhjät osat
  -q, --quiet, --silent     vaienna kaikki normaali tuloste
      --binary-files=TYYPPI otaksu, että binääritiedostot ovat TYYPPIä;
                            TYYPPI on ”binary”, ”text”, tai ”without-match”
  -a, --text                sama kuin --binary-files=text
 %s -kotisivu: <%s>
 %s: PCRE havaitsi rekursiosilmukan %s: binääritiedosto täsmää %s: ylitettiin PCRE:n paluujäljitysraja %s: ylitettiin PCRE:n kekoraja %s: ylitettiin PCRE:n sisäkkäinen paluujäljitysraja %s: PCRE JIT -pino täyttyi %s: syötetiedosto on myös tuotostiedosto %s: sisäinen PCRE-virhe: %d %s: virheellinen valitsin -- ”%c”
 %s: muisti loppui %s: valitsin ”%s%s” ei salli argumenttia
 %s: valitsin ”%s%s” on moniselitteinen
 %s: valitsin ”%s%s” on moniselitteinen; vaihtoehdot: %s: valitsin ”%s%s” vaatii argumentin
 %s: valitsin vaatii argumentin -- ”%c”
 %s: tunnistamaton valitsin ”%s%s”
 %s: varoitus: rekursiivinen hakemistosilmukka ” © (vakiosyöte) * lausekkeen alussa + lausekkeen alussa -P tukee vain yksitavu- ja UTF-8-maa-asetustoja ? lausekkeen alussa Esimerkki: %s -i 'hei maailma' menu.h main.c
HAHMOT voivat sisältää useita rivinvaihdoin
eroteltuja hahmoja.

Hahmojen valinta ja tulkinta:
 Yleisohjeita GNU-ohjelmistojen käyttöön: <%s>
 Virheellinen takaisinviittaus Virheellinen merkkiluokan nimi Virheellinen vertailumerkki Virheellinen \{\}:n sisältö Virheellinen edeltävä säännöllinen lauseke Virheellinen välin loppu Virheellinen säännöllinen lauseke Lisenssi GPLv3+: GNU GPL versio 3 tai myöhäisempi <%s>.
Tämä on vapaa ohjelma: voit vapaasti muuttaa ja jakaa sitä edelleen.
Ohjelmalla EI OLE TAKUUTA siinä laajuudessa kuin laki sen sallii.
 Muisti loppui Ei täsmäävyyttä Ei edeltävää säännöllistä lauseketta Paketoinut %s
 Paketoinut %s (%s)
 Perl-täsmäystä ei tueta --disable-perl-regexp -valitsimellisessa käännöksessä Ennenaikainen säännöllisen lausekkeen loppu Säännöllinen lauseke on liian suuri Ilmoita %s ohjelmistovioista (englanniksi) osoitteeseen %s
 Ilmoita ohjelmistovioista (englanniksi) osoitteeseen: %s
 Hae HAHMOja kustakin TIEDOSTOsta.
 Onnistui Kenoviiva lopussa Komento ”%s --help” antaa lisää tietoa.
 Tuntematon järjestelmävirhe Pariton ( tai \( Pariton ) tai \) Pariton [, [^, [:, [. tai [= Pariton \{ Käyttö: %s [VALITSIN]... HAHMOT [TIEDOSTO]...
 Kelvolliset argumentit ovat: Kun TIEDOSTO on ”-”, lue vakiosyötettä. Ilman TIEDOSTOa lue ”.” jos
haetaan rekursiivisesti, muuten ”-” . Jos alle kaksi TIEDOSTOa
on annettu, oleta valitsin -h.
Paluuarvo on 0, jos mikä tahansa rivi valitaan, muuten 1; jos
tapahtuu mikä tahansa virhe ja -q on antamatta, paluuarvo on 2.
 Kirjoittaneet %s ja %s.
 Kirjoittaneet %s, %s,
%s, %s, %s, %s,
%s, %s, %s ja muut.
 Kirjoittaneet %s, %s, %s,
%s, %s, %s, %s,
%s ja %s.
 Kirjoittaneet %s, %s,
%s, %s, %s, %s,
%s ja %s.
 Kirjoittaneet %s, %s, %s,
%s, %s, %s ja %s.
 Kirjoittaneet %s, %s, %s,
%s, %s ja %s.
 Kirjoittaneet %s, %s, %s,
%s ja %s.
 Kirjoittaneet %s, %s,
%s ja %s.
 Kirjoittaneet %s, %s ja %s.
 Kirjoittanut %s.
 ” monimerkityksellinen argumentti %s kohteelle %s merkkiluokkasyntaksi on [[:space:]], ei [:space:] määritelty ristiriitaiset täsmäimet ylitettiin PCRE:n rivipituusraja palaaminen alkuperäiseen työhakemistoon epäonnistui tiedostokahvan teksti-/binääritilan asettaminen epäonnistui syöte on liian suuri laskettavaksi virheellinen argumentti %s kohteelle %s virheellinen merkkiluokka virheellinen \{\}:n sisältö virheellinen kontekstin pituusargumentti virheellinen täsmäin %s virheellinen enimmäismäärä muisti loppui syntaksia ei ole määritelty ohjelmavirhe säännöllinen lauseke on liian suuri pinon ylivuoto harhautunut \ harhautunut \ ennen merkkiä %lc harhautunut \ ennen ei-tulostuvaa merkkiä harhautunut \ ennen tyhjettä valitsin -P tukee vain yhtä hahmoa nykyisen työhakemiston kirjaaminen ei onnistu pariton ( pariton ) pariton [ keskeneräinen \-ohjaussarja tuntematon binääritiedostojen tyyppi tuntematon laitteiden käsittelytapa varoitus: %s varoitus: --unix-byte-offsets (-u) on vanhentunut varoitus: GREP_COLOR='%s' on vanhentunut; käytä GREP_COLORS='mt=%s' kirjoitusvirhe ? lausekkeen alussa 