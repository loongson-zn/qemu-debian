��    �      �  �   L        �   	  �  �  U  �  Z     ~  m  �  �  �  �  }  y!  U  �"  �  M%  �   J'  m   �'  r   c(  �   �(  n  �)  d  +  [   �,  `   �,  N   =-  �   �-  �  L.  |  �3  �   e:  �  *;  �  �=  @   �?  /  �?  '  A    /B     KC     bC     }C  %   �C  *   �C     �C  6   �C     ,D  )   JD  J   tD  I   �D  L   	E  L   VE  $   �E     �E     �E  $   �E  E   F  !   UF  $   wF     �F     �F  0   �F     �F      G  -   8G     fG     �G  ,   �G  !   �G  (   �G     H      2H  ,   SH     �H     �H     �H      �H     �H     I     %I     BI     YI     tI     �I     �I  -   �I      �I  %   J  #   <J     `J  0   uJ  2   �J  $   �J  &   �J     %K  H   @K     �K     �K     �K     �K     �K     �K     L      L     6L  =   HL  *   �L  D   �L  $   �L  (   M  '   DM  !   lM  +   �M  .   �M     �M  B   N  9   FN  3   �N     �N  #   �N  5   �N     (O     >O     ^O     xO     �O     �O  '   �O  &   �O     P     -P  ,   EP  A   rP  1   �P     �P     �P     Q  0   "Q  1   SQ     �Q  #   �Q     �Q  %   �Q  #   R  <   (R  &   eR  O   �R  �   �R  S   �S  3   T  X   OT  .   �T  ,   �T     U  @   U  (   \U  )   �U     �U  0   �U  �   �U     �V  =   �V  3   %W     YW  ]   xW  *   �W  N   X  �   PX  +   @Y     lY  K   �Y  3   �Y     Z  �   (Z  �   �Z  +   d[  )   �[  +   �[  8   �[  m   \     �\     �\      �\     �\  7   �\  .   -]  /   \]  >   �]  i  �]  V  5_  &  �`  8  �c  a   �j  [  Nk    �m  �  �q  �  ^s  �  ,u  t  x  �   �z  �   N{  �   �{  �   W|  �  C}  �  �~  h   ��  ]   �  9   `�  �   ��  �  t�  �  <�  �   �  ^  �  �  E�  ^   �  y  n�  p  �  ;  Y�     ��     ��     Л  '   �  D   �     U�  7   m�  :   ��  ;   ��  c   �  P   ��  \   ѝ  �   .�  /   Ȟ     ��     �  +   +�  T   W�  "   ��  0   ϟ      �      �  :   ;�  (   v�  (   ��  A   Ƞ  &   
�  )   1�  =   [�  <   ��  4   ֡  '   �  ,   3�  D   `�  #   ��     ɢ     �  "   ��  <   �      Y�      z�     ��  %   ��  '   ݣ     �      �  8   @�  %   y�  '   ��  ,   Ǥ     ��  ?   �  A   O�  ,   ��  !   ��     �  W    �     X�     o�     ��     ��  #   ��     ڦ  (   ��     !�     5�  U   I�  4   ��  U   ԧ  1   *�  .   \�  *   ��  *   ��  8   �  7   �     R�  _   m�  ?   ͩ  7   �     E�  .   b�  F   ��     ت  !   �     �  (   2�      [�     |�  5   ��  +   Ϋ     ��  %   �  4   ;�  f   p�  <   ׬     �     ,�     E�  >   ^�  C   ��     �  +   ��     *�  ,   H�  !   u�  e   ��  -   ��  V   +�  5  ��  e   ��  A   �  q   `�  2   ұ  <   �     B�  @   ]�  *   ��  +   ɲ     ��  1   �  �   G�     �  >   4�  5   s�  !   ��  ^   ˴  0   *�  R   [�  �   ��  ,   ��     Ѷ  O   �  5   >�      t�  �   ��  �   �  -   Ը  ,   �  -   /�  9   ]�  {   ��     �     1�  !   E�     g�  ?   �  7   ��  <   ��  S   4�        7   l   �      r       �       �   V   �      �   {   T   �              g         H   �   |   -   +   �   �   �       �   C   �               �   _   W          �   �   S   =   v       )   k       �   4       m   %   f      Y   �   2   �       ;   �   �   �       B   $   /   Q   a   x   t   �   q   y   G       �   �   �   e   �               ,   �          !   K   P   9   F             D   �   �   ^      .   `   n   �   �   �       �   0   <   \   z       b                     O   �       �   p   E       �   #          o       J           ]   &       �   �             (                  5       �       '   �   s               6      U   u   	          Z   N   M      1       �           }           *       �       X      @   L   �       I                 j   �           A   i   �   �      ?   [   3           �   "   >   �   �   �   
          h   R   c   d   �   8              w          ~      :   �        
Add one or more files to the topmost or named patch.  Files must be
added to the patch before being modified.  Files that are modified by
patches already applied on top of the specified patch cannot be added.

-P patch
	Patch to add files to.
 
Create a new patch with the specified file name, and insert it after the
topmost patch. The name can be prefixed with a sub-directory name, allowing
for grouping related patches together.

-p n	Create a -p n style patch (-p0 or -p1 are supported).

-p ab	Create a -p1 style patch, but use a/file and b/file as the
	original and new filenames instead of the default
	dir.orig/file and dir/file names.

Quilt can be used in sub-directories of a source tree. It determines the
root of a source tree by searching for a %s directory above the
current working directory. Create a %s directory in the intended root
directory if quilt chooses a top-level directory that is too high up
in the directory tree.
 
Create mail messages from a specified range of patches, or all patches in
the series file, and either store them in a mailbox file, or send them
immediately. The editor is opened with a template for the introduction.
Please see %s for details.
When specifying a range of patches, a first patch name of \`-' denotes the
first, and a last patch name of \`-' denotes the last patch in the series.

-m text
	Text to use as the text in the introduction. When this option is
	used, the editor will not be invoked, and the patches will be
	processed immediately.

-M file
	Like the -m option, but read the introduction from file.

--prefix prefix
	Use an alternate prefix in the bracketed part of the subjects
	generated. Defaults to \`patch'.

--mbox file
	Store all messages in the specified file in mbox format. The mbox
	can later be sent using formail, for example.

--send
	Send the messages directly.

--sender
	The envelope sender address to use. The address must be of the form
	\`user@domain.name'. No display name is allowed.

--from, --subject
	The values for the From and Subject headers to use. If no --from
	option is given, the value of the --sender option is used.

--to, --cc, --bcc
	Append a recipient to the To, Cc, or Bcc header.

--charset
	Specify a particular message encoding on systems which don't use
	UTF-8 or ISO-8859-15. This character encoding must match the one
	used in the patches.

--signature file
	Append the specified signature to messages (defaults to ~/.signature
	if found; use \`-' for no signature).

--reply-to message
	Add the appropriate headers to reply to the specified message.
 
Edit the specified file(s) in \$EDITOR (%s) after adding it (them) to
the topmost patch.
 
Fork the topmost patch.  Forking a patch means creating a verbatim copy
of it under a new name, and use that new name instead of the original
one in the current series.  This is useful when a patch has to be
modified, but the original version of it should be preserved, e.g.
because it is used in another series, or for the history.  A typical
sequence of commands would be: fork, edit, refresh.

If new_name is missing, the name of the forked patch will be the current
patch name, followed by \`-2'.  If the patch name already ends in a
dash-and-number, the number is further incremented (e.g., patch.diff,
patch-2.diff, patch-3.diff).
 
Generate a dot(1) directed graph showing the dependencies between
applied patches. A patch depends on another patch if both touch the same
file or, with the --lines option, if their modifications overlap. Unless
otherwise specified, the graph includes all patches that the topmost
patch depends on.
When a patch name is specified, instead of the topmost patch, create a
graph for the specified patch. The graph will include all other patches
that this patch depends on, as well as all patches that depend on this
patch.

--all	Generate a graph including all applied patches and their
	dependencies. (Unapplied patches are not included.)

--reduce
	Eliminate transitive edges from the graph.

--lines[=num]
	Compute dependencies by looking at the lines the patches modify.
	Unless a different num is specified, two lines of context are
	included.

--edge-labels=files
	Label graph edges with the file names that the adjacent patches
	modify.

-T ps	Directly produce a PostScript output file.
 
Global options:

--trace
	Runs the command in bash trace mode (-x). For internal debugging.

--quiltrc file
	Use the specified configuration file instead of ~/.quiltrc (or
	%s/quilt.quiltrc if ~/.quiltrc does not exist).  See the pdf
	documentation for details about its possible contents.  The
	special value \"-\" causes quilt not to read any configuration
	file.

--version
	Print the version number and exit immediately.\n 
Grep through the source files, recursively, skipping patches and quilt
meta-information. If no filename argument is given, the whole source
tree is searched. Please see the grep(1) manual page for options.

-h	Print this help. The grep -h option can be passed after a
	double-dash (--). Search expressions that start with a dash
	can be passed after a second double-dash (-- --).
 
Import external patches.  The patches will be inserted following the
current top patch, and must be pushed after import to apply them.

-p num
	Number of directory levels to strip when applying (default=1)

-R
	Apply patch in reverse.

-P patch
	Patch filename to use inside quilt. This option can only be
	used when importing a single patch.

-f	Overwrite/update existing patches.

-d {o|a|n}
	When overwriting in existing patch, keep the old (o), all (a), or
	new (n) patch header. If both patches include headers, this option
	must be specified. This option is only effective when -f is used.
 
Integrate the patch read from standard input into the topmost patch:
After making sure that all files modified are part of the topmost
patch, the patch is applied with the specified strip level (which
defaults to 1).

-R	Apply patch in reverse.

-q	Quiet operation.

-f	Force apply, even if the patch has rejects. Unless in quiet mode,
	apply the patch interactively: the patch utility may ask questions.

-p strip-level
	The number of pathname components to strip from file names
	when applying patchfile.
 
Please remove all patches using \`quilt pop -a' from the quilt version used to create this working tree, or remove the %s directory and apply the patches from scratch.\n 
Print a list of applied patches, or all patches up to and including the
specified patch in the file series.
 
Print a list of patches that are not applied, or all patches that follow
the specified patch in the series file.
 
Print an annotated listing of the specified file showing which
patches modify which lines. Only applied patches are included.

-P patch
	Stop checking for changes at the specified rather than the
	topmost patch.
 
Print the list of files that the topmost or specified patch changes.

-a	List all files in all applied patches.

-l	Add patch name to output.

-v	Verbose, more user friendly output.

--combine patch
	Create a listing for all patches between this patch and
	the topmost or specified patch. A patch name of \`-' is
	equivalent to specifying the first applied patch.

 
Print the list of patches that modify any of the specified files. (Uses a
heuristic to determine which files are modified by unapplied patches.
Note that this heuristic is much slower than scanning applied patches.)

-v	Verbose, more user friendly output.

--color[=always|auto|never]
	Use syntax coloring (auto activates it only if the output is a tty).
 
Print the name of the next patch after the specified or topmost patch in
the series file.
 
Print the name of the previous patch before the specified or topmost
patch in the series file.
 
Print the name of the topmost patch on the current stack of applied
patches.
 
Print the names of all patches in the series file.

--color[=always|auto|never]
	Use syntax coloring (auto activates it only if the output is a tty).

-v	Verbose, more user friendly output.
 
Produces a diff of the specified file(s) in the topmost or specified
patch.  If no files are specified, all files that are modified are
included.

-p n	Create a -p n style patch (-p0 or -p1 are supported).

-p ab	Create a -p1 style patch, but use a/file and b/file as the
	original and new filenames instead of the default
	dir.orig/file and dir/file names.

-u, -U num, -c, -C num
	Create a unified diff (-u, -U) with num lines of context. Create
	a context diff (-c, -C) with num lines of context. The number of
	context lines defaults to 3.

--no-timestamps
	Do not include file timestamps in patch headers.

--no-index
	Do not output Index: lines.

-z	Write to standard output the changes that have been made
	relative to the topmost or specified patch.

-R	Create a reverse diff.

-P patch
	Create a diff for the specified patch.  (Defaults to the topmost
	patch.)

--combine patch
	Create a combined diff for all patches between this patch and
	the patch specified with -P. A patch name of \`-' is equivalent
	to specifying the first applied patch.

--snapshot
	Diff against snapshot (see \`quilt snapshot -h').

--diff=utility
	Use the specified utility for generating the diff. The utility
	is invoked with the original and new file name as arguments.

--color[=always|auto|never]
	Use syntax coloring (auto activates it only if the output is a tty).

--sort	Sort files by their name instead of preserving the original order.
 
Refreshes the specified patch, or the topmost patch by default.
Documentation that comes before the actual patch in the patch file is
retained.

It is possible to refresh patches that are not on top.  If any patches
on top of the patch to refresh modify the same files, the script aborts
by default.  Patches can still be refreshed with -f.  In that case this
script will print a warning for each shadowed file, changes by more
recent patches will be ignored, and only changes in files that have not
been modified by any more recent patches will end up in the specified
patch.

-p n	Create a -p n style patch (-p0 or -p1 supported).

-p ab	Create a -p1 style patch, but use a/file and b/file as the
	original and new filenames instead of the default
	dir.orig/file and dir/file names.

-u, -U num, -c, -C num
	Create a unified diff (-u, -U) with num lines of context. Create
	a context diff (-c, -C) with num lines of context. The number of
	context lines defaults to 3.

-z[new_name]
	Create a new patch containing the changes instead of refreshing the
	topmost patch. If no new name is specified, \`-2' is added to the
	original patch name, etc. (See the fork command.)

--no-timestamps
	Do not include file timestamps in patch headers.

--no-index
	Do not output Index: lines.

--diffstat
	Add a diffstat section to the patch header, or replace the
	existing diffstat section.

-f	Enforce refreshing of a patch that is not on top.

--backup
	Create a backup copy of the old version of a patch as patch~.

--sort	Sort files by their name instead of preserving the original order.

--strip-trailing-whitespace
	Strip trailing whitespace at the end of lines.
 
Remove one or more files from the topmost or named patch.  Files that
are modified by patches on top of the specified patch cannot be removed.

-P patch
	Remove named files from the named patch.
 
Remove patch(es) from the stack of applied patches.  Without options,
the topmost patch is removed.  When a number is specified, remove the
specified number of patches.  When a patch name is specified, remove
patches until the specified patch end up on top of the stack.  Patch
names may include the patches/ prefix, which means that filename
completion can be used.

-a	Remove all applied patches.

-f	Force remove. The state before the patch(es) were applied will
	be restored from backup files.

-R	Always verify if the patch removes cleanly; don't rely on
	timestamp checks.

-q	Quiet operation.

-v	Verbose operation.

--refresh
	Automatically refresh every patch before it gets unapplied.
 
Remove the specified or topmost patch from the series file.  If the
patch is applied, quilt will attempt to remove it first. (Only the
topmost patch can be removed right now.)

-n	Delete the next patch after topmost, rather than the specified
	or topmost patch.

-r	Remove the deleted patch file from the patches directory as well.

--backup
	Rename the patch file to patch~ rather than deleting it.
	Ignored if not used with \`-r'.
 
Rename the topmost or named patch.

-P patch
	Patch to rename.
 
Revert uncommitted changes to the topmost or named patch for the specified
file(s): after the revert, 'quilt diff -z' will show no differences for those
files. Changes to files that are modified by patches on top of the specified
patch cannot be reverted.

-P patch
	Revert changes in the named patch.
 
Take a snapshot of the current working state.  After taking the snapshot,
the tree can be modified in the usual ways, including pushing and
popping patches.  A diff against the tree at the moment of the
snapshot can be generated with \`quilt diff --snapshot'.

-d	Only remove current snapshot.
 
Upgrade the meta-data in a working tree from an old version of quilt to the
current version. This command is only needed when the quilt meta-data format
has changed, and the working tree still contains old-format meta-data. In that
case, quilt will request to run \`quilt upgrade'.
        quilt --version %s is not a regular file\n %s: I'm confused.
 Appended text to header of patch %s\n Applied patch %s (forced; needs refresh)\n Applying patch %s\n Can only refresh the topmost patch with -z currently\n Cannot add symbolic link %s\n Cannot change into parent directory %s/\n Cannot create patches with -p%s, please specify -p0, p1, or -pab instead\n Cannot diff patches with -p%s, please specify -p0, -p1, or -pab instead\n Cannot refresh patches with -p%s, please specify -p0, -p1, or -pab instead\n Cannot use --strip-trailing-whitespace on a patch that has shadowed files.\n Changes to %s in patch %s reverted\n Commands are: Conversion failed\n Converting meta-data to version %s\n Could not determine the envelope sender address. Please use --sender. Delivery address `%s' is invalid
 Diff failed on file '%s', aborting\n Diff failed, aborting\n Directory %s exists\n Display name `%s' contains unpaired parentheses
 Failed to back up file %s\n Failed to backup patch file %s\n Failed to copy files to temporary directory\n Failed to create patch %s\n Failed to import patch %s\n Failed to insert patch %s into file series\n Failed to patch temporary files\n Failed to remove file %s from patch %s\n Failed to remove patch %s\n Failed to remove patch file %s\n Failed to revert changes to %s in patch %s\n File %s added to patch %s\n File %s does not exist\n File %s exists\n File %s is already in patch %s\n File %s is located below %s\n File %s is not being modified\n File %s is not in patch %s\n File %s is unchanged\n File %s may be corrupted\n File %s modified by patch %s\n File %s not found\n File %s removed from patch %s\n File series fully applied, ends at patch %s\n Fork of patch %s created as %s\n Fork of patch %s to patch %s failed\n Importing patch %s (stored as %s)\n Importing patch %s\n Interrupted by user; patch %s was not applied.\n Introduction has no subject header (saved as %s)\n Introduction has no subject header\n Introduction message already specified Introduction saved as %s\n More recent patches modify files in patch %s. Enforce refresh with -f.\n No next patch\n No patch applied\n No patch removed\n No patches applied\n No patches in series\n No series file found\n No snapshot to diff against\n Nothing in patch %s\n Now at patch %s\n Option \`-P' can only be used when importing a single patch\n Options %s and %s are mutually exclusive\n Options \`--combine', \`--snapshot', and \`-z' cannot be combined.\n Patch %s already exists in series.\n Patch %s appears to be empty, removing\n Patch %s appears to be empty; applied\n Patch %s can be reverse-applied\n Patch %s does not apply (enforce with -f)\n Patch %s does not exist; applied empty patch\n Patch %s does not exist\n Patch %s does not remove cleanly (refresh it or enforce with -f)\n Patch %s exists already, please choose a different name\n Patch %s exists already, please choose a new name\n Patch %s exists already\n Patch %s exists. Replace with -f.\n Patch %s is already applied; check your series file\n Patch %s is applied\n Patch %s is currently applied\n Patch %s is not applied\n Patch %s is not in series\n Patch %s is now on top\n Patch %s is unchanged\n Patch %s needs to be refreshed first.\n Patch %s not applied before patch %s\n Patch %s renamed to %s\n Patch headers differ:\n Patches %s have duplicate subject headers.\n Please use -d {o|a|n} to specify which patch header(s) to keep.\n QUILT_PATCHES(%s) must differ from QUILT_PC(%s)\n Refreshed patch %s\n Removed patch %s\n Removing patch %s\n Removing trailing whitespace from line %s of %s
 Removing trailing whitespace from lines %s of %s
 Renaming %s to %s: %s
 Renaming of patch %s to %s failed\n Replaced header of patch %s\n Replacing patch %s with new version\n SYNOPSIS: %s [-p num] [-n] [patch]
 The %%prep section of %s failed; results may be incomplete\n The -v option will show rpm's output\n The quilt meta-data in %s are already in the version %s format; nothing to do\n The quilt meta-data in this tree has version %s, but this version of quilt can only handle meta-data formats up to and including version %s. Please pop all the patches using the version of quilt used to push them before downgrading.\n The series file no longer matches the applied patches. Please run 'quilt pop -a'.\n The topmost patch %s needs to be refreshed first.\n The working tree was created by an older version of quilt. Please run 'quilt upgrade'.\n Trying alternative patches and series names... Unable to extract a subject header from %s\n Unpacking archive %s\n Usage: quilt [--trace[=verbose]] [--quiltrc=XX] command [-h] ... Usage: quilt add [-P patch] {file} ...\n Usage: quilt annotate [-P patch] {file}\n Usage: quilt applied [patch]\n Usage: quilt delete [-r] [--backup] [patch|-n]\n Usage: quilt diff [-p n|-p ab] [-u|-U num|-c|-C num] [--combine patch|-z] [-R] [-P patch] [--snapshot] [--diff=utility] [--no-timestamps] [--no-index] [--sort] [--color[=always|auto|never]] [file ...]\n Usage: quilt edit file ...\n Usage: quilt files [-v] [-a] [-l] [--combine patch] [patch]\n Usage: quilt fold [-R] [-q] [-f] [-p strip-level]\n Usage: quilt fork [new_name]\n Usage: quilt graph [--all] [--reduce] [--lines[=num]] [--edge-labels=files] [-T ps] [patch]\n Usage: quilt grep [-h|options] {pattern}\n Usage: quilt import [-p num] [-R] [-P patch] [-f] [-d {o|a|n}] patchfile ...\n Usage: quilt mail {--mbox file|--send} [-m text] [-M file] [--prefix prefix] [--sender ...] [--from ...] [--to ...] [--cc ...] [--bcc ...] [--subject ...] [--reply-to message] [--charset ...] [--signature file] [first_patch [last_patch]]\n Usage: quilt new [-p n|-p ab] {patchname}\n Usage: quilt next [patch]\n Usage: quilt patches [-v] [--color[=always|auto|never]] {file} [files...]\n Usage: quilt pop [-afRqv] [--refresh] [num|patch]\n Usage: quilt previous [patch]\n Usage: quilt push [-afqvm] [--fuzz=N] [--merge[=merge|diff3]] [--leave-rejects] [--color[=always|auto|never]] [--refresh] [num|patch]\n Usage: quilt refresh [-p n|-p ab] [-u|-U num|-c|-C num] [-z[new_name]] [-f] [--no-timestamps] [--no-index] [--diffstat] [--sort] [--backup] [--strip-trailing-whitespace] [patch]\n Usage: quilt remove [-P patch] {file} ...\n Usage: quilt rename [-P patch] new_name\n Usage: quilt revert [-P patch] {file} ...\n Usage: quilt series [--color[=always|auto|never]] [-v]\n Usage: quilt setup [-d path-prefix] [-v] [--sourcedir dir] [--fuzz=N] [--slow|--fast] {specfile|seriesfile}\n Usage: quilt snapshot [-d]\n Usage: quilt top\n Usage: quilt unapplied [patch]\n Usage: quilt upgrade\n Warning: more recent patches modify files in patch %s\n Warning: trailing whitespace in line %s of %s
 Warning: trailing whitespace in lines %s of %s
 You have to install '%s' (from package %s) to use 'quilt %s'\n Project-Id-Version: quilt 0.64
PO-Revision-Date: 2016-11-07 12:11+0200
Last-Translator: Holger Wansing <linux@wansing-online.de>
Language-Team: German <debian-l10n-german@lists.debian.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=(n != 1);
 
Fügt eine oder mehrere Dateien zum obersten oder angegebenen Patch
hinzu. Dateien müssen einem Patch hinzugefügt werden, bevor sie
verändert werden. Dateien können einem Patch nur hinzugefügt werden,
solange sie von keinem Patch höher auf dem Stapel verändert werden.

-P patch
	Patch, zu dem die Dateien hinzugefügt werden sollen.
 
Erzeugen eines neuen Patches mit dem angegebenen Dateinamen und anfügen
nach dem obersten Patch. Dem Name kann der Name eines Unterverzeichnisses
vorangestellt werden; dies erlaubt es, zusammengehörige Patches
zusammenzufassen.

-p n	Erzeugen eines Patches der Art -p n (-p0 oder -p1 werden unterstützt).

-p ab	Erzeugen eines Patches der Art -p1, jedoch a/datei und b/datei
	als ursprüngliche und neue Dateinamen verwenden anstelle von
	dir.orig/datei und dir/datei.

Quilt kann aus Unterverzeichnissen eines Quellbaums heraus verwendet werden.
Es bestimmt die Wurzel des Quellbaums, in dem es nach %s-Verzeichnissen
oberhalb des aktuellen Verzeichnisses sucht. Erzeugen Sie ein
%s-Verzeichnis im vorgesehenen Wurzelverzeichnis, falls Quilt ein
Verzeichnis zu weit oben im Verzeichnisbaum verwendet.
 
Erzeugen von E-Mail-Nachrichten für einen angegebenen Bereich von Patches
oder alle Patches in der series-Datei, und sie entweder in einer Mailbox-
Datei speichern oder sofort versenden. Der Editor wird mit einem
Einleitungstext als Vorlage geöffnet. Für Details lesen Sie %s.
Wenn ein Bereich von Patches angegeben wird, kann \`-' für den ersten bzw.
\`-' für den letzten Patch der Serie angegeben werden.

-m text
	Text, der als Einleitungstext verwendet werden soll. Bei Verwendung
	dieser Option wird der Editor nicht gestartet und die Patches werden
	sofort abgearbeitet.

-M datei
	Wie -m, jedoch wird der Einleitungstext aus der Datei gelesen.

--prefix präfix
	Einen anderen Präfix statt \`patch' in dem durch eckige Klammern
	eingefassten Text der Subject-Kopfzeile verwenden.

--mbox datei
	Alle Nachrichten in der angegebenen Datei im mbox-Format speichern.
	Die Mailbox kann dann später mit formail o.ä. verschickt werden.

--send
	Die Nachrichten direkt verschicken.

--sender
	Die angegebene Envelope-Adresse verwenden. Die Adresse muss der Form
	\`user@domain.name' entsprechen; Anzeigenamen sind nicht möglich.

--from, --subject
	Die Werte für die From- und Subject-Kopfzeilen. Wenn keine --from-
	Option angegeben ist, wird der Wert der Option --sender verwendet.

--to, --cc, --bcc
	Einen Empfänger zur To-, Cc-, oder Bcc-Kopfzeile hinzufügen.

--charset
	Eine bestimmte Nachrichtenkodierung angeben auf Systemen, die keinen
	UTF-8- oder ISO-8859-15-Zeichensatz verwenden. Diese Zeichenkodierung
	muss derjenigen in den Patches entsprechen.

--signature datei
	Die angegebene Signatur an Nachrichten anhängen (Standard ist
	~/.signature, falls vorhanden; bei \`-' wird keine Signatur
	verwendet.

--reply-to nachrichten-header
	Die entsprechenden Header hinzufügen, um auf die angegebene
	Nachricht zu antworten.
 
Die angegebene(n) Datei(en) dem obersten Patch hinzufügen und dann im
\$EDITOR (%s) editieren.
 
Den obersten Patch aufspalten. Aufspalten bedeutet, dass eine neue Kopie
des Patches unter einem anderen Namen angelegt wird, und der neue Patch
anstelle des ursprünglichen in die series-Datei eingetragen wird. Das ist
praktisch, wenn ein Patch verändert werden soll, aber die ursprüngliche
Version erhalten bleiben soll. Eine typische Abfolge von Befehlen ist:
fork, edit, refresh.

Wenn neuer_name fehlt, wird der Name des ursprünglichen Patches verwendet,
gefolgt von \`-2'. Falls der Name bereits auf Bindestrich+Zahl endet,
wird die Zahl erhöht (z.B. patch.diff, patch-2.diff, patch-3.diff).
 
Erzeugen eines gerichteten dot(1)-Graphen, der die Abhängigkeiten zwischen
den angewandten Patches zeigt. Ein Patch hängt von einem anderen ab, wenn
beide dieselbe Datei verändern, oder mit der --lines-Option, wenn sich die
Änderungen in den Patches überlappen. Wenn nicht anders angegeben, zeigt
der Graph alle Patches, von denen der oberste Patch abhängt.
Wenn ein Patchname angegeben wird, wird ein Graph erzeugt, der alle Patches
beinhaltet, von denen der angegebene Patch abhängt, sowie alle, die von
diesem Patch abhängen.

--all	Erzeugen eines Graphs, der alle Abhängigkeiten zwischen allen
	angewandten Patches beinhaltet. (Nicht angewandte Patches sind nicht
	enthalten.)

--reduce
	Eliminieren von transitiven Kanten im Graph.

--lines[=num]
	Ermitteln von Abhängigkeiten durch Vergleich der veränderten Zeilen.
	Solange nicht anders angegeben, werden zwei Kontextzeilen angenommen.

--edge-labels=files
	Beschriften der Kanten mit den Namen der betroffenen Dateien.

-T ps	Direkt eine PostScript-Datei erzeugen.
 
Globale Optionen:

--trace
	Die Befehle in bash im Trace-Modus (-x) ausführen, für Debugging.

--quiltrc datei
	Die angegebene Konfigurationsdatei verwenden statt ~/.quiltrc (oder
	%s/quilt.quiltrc, wenn ~/.quiltrc fehlt). Details über mögliche
	Inhalte finden Sie in der pdf-Dokumentation.
	Der Dateiname \`-' bedeutet, dass keine Konfigurationsdatei
	eingelesen werden soll.

--version
	Gibt die Versionsummer aus.\n 
Die Quelldateien rekursiv durchsuchen und Patches sowie Quilt-
Metainformation überspringen. Wenn kein Dateiname angegeben wird, wird
der gesamte Quellbaum durchsucht. Lesen Sie die Handbuchseite (manpage)
von grep(1) für weitere Optionen.

-h	Diese Hilfe ausgeben. Die grep-Option -h kann nach einem
	Doppel-Bindestrich (--) angegeben werden. Suchausdrücke, die mit
	einem Strich beginnen, können nach einem weiteren Doppel-Bindestrich
	angegeben werden.
 
Importieren externer Patches. Die Patches werden nach dem momentan obersten
Patch eingefügt und müssen dann mit dem push-Befehl angewandt werden.

-p num
	Die Anzahl der Komponenten im Pfadnamen, die beim Anwenden des Patches
	entfernt werden sollen (Standard = 1).

-R
	Patch umgekehrt anwenden.

-P patch
	Dateiname, den Quilt für den Patch verwenden soll. Diese Option kann
	nur beim Import eines einzelnen Patches angegeben werden.

-f	Überschreiben/aktualisieren existierender Patches.

-d {o|a|n}
	Beim Überschreiben von Patches den alten (o), alle (a) oder den neuen
	(n) Patchheader erhalten. Wenn beide Patches Header enthalten, muss
	diese Option angegeben werden. Diese Option ist nur in Kombination mit
	-f wirksam.
 
Den Patch von der Standardeingabe in den obersten Patch integrieren:
Es wird zuerst sichergestellt, dass alle Dateien, die verändert werden,
im obersten Patch enthalten sind, dann wird der neue Patch mit der
angegebenen Anzahl an Strip-Ebenen angewandt (Standardwert = 1).

-R	Patch verkehrt herum anwenden.

-q	Wenige Meldungen ausgeben.

-f	Anwenden erzwingen, selbst wenn dabei Fehler auftreten. Wenn -q
	nicht angegeben ist, wird der Patch interaktiv angewandt und das
	Patchprogramm könnte Fragen stellen.

-p strip-ebenen
	Die Anzahl der Komponenten im Pfadnamen, die beim Anwenden des Patches
	entfernt werden sollen.
 
Bitte entfernen Sie mit \`quilt pop -a' alle Patches der quilt-Version, die zur Erzeugung des Arbeitsverzeichnis verwendet wurde, oder entfernen Sie das Verzeichnis %s und wenden Sie die Patches neu an.\n 
Gibt eine Liste der angewandten Patches aus, oder eine Liste aller
Patches vom Anfang der series-Datei bis zum angegebenen Patch.
 
Eine Liste der Patches ausgeben, die momentan nicht angewandt sind, bzw.
eine Liste der Patches, die dem angegebenen Patch folgen.
 
Erzeuge ein Listing der angegebenen Datei, das anzeigt, welche
Patches welche Zeilen verändern. Nur angewandte Patches werden
angezeigt.

-P patch
	Nur bis zum angegebenen Patch statt bis zum obersten Patch
	nach Änderungen suchen.
 
Ausgabe einer Liste der Dateien, die der oberste oder angegebene Patch
beinhaltet.

-a	Alle Dateien in allen angewandten Patches anzeigen.

-l	Auch die Patchnamen mit ausgeben.

-v	Ausführlichere, benutzerfreundliche Ausgabe.

--combine patch
	Erzeugen einer Liste für alle Patches zwischen diesem und dem obersten
	oder angegebenen Patch am Stack. Der Patchname \`-'
	entspricht dem ersten angewandten Patch.

 
Die Liste der Patches ausgeben, die die angegebene Datei verändern.
(Verwendet eine Heuristik, um zu erkennen, welche Dateien von nicht
angewandten Patches modifiziert werden. Beachten Sie, dass diese
Heuristik erheblich langsamer ist als die Suche in angewandten Patches.)

-v	Ausführlichere, benutzerfreundliche Ausgabe.

--color[=always|auto|never]
	Syntaxeinfärbung verwenden (wird bei auto nur aktiviert, wenn Ausgabe
	auf tty).
 
Gibt den Namen des nächsten Patches nach dem obersten oder angegebenen
Patch in der series-Datei aus.
 
Den Namen des Patches vor dem obersten oder angegebenen Patch in
der series-Datei ausgeben.
 
Den Namen des obersten Patches auf dem Stapel ausgeben.
 
Die Namen aller Patches in der series-Datei ausgeben.

--color[=always|auto|never]
	Syntaxeinfärbung verwenden (wird bei auto nur aktiviert, wenn Ausgabe
	auf tty).

-v	Ausführlichere, benutzerfreundliche Ausgabe.
 
Erzeugt ein Diff der angegebenen Dateien im obersten oder angegebenen
Patch. Wenn keine Dateien angegeben sind, werden alle im Patch
enthaltenen Dateien einbezogen.

-p n	Erzeugen eines Patches der Art -p n (n=0 oder n=1 wird
	unterstützt).

-p ab	Erzeugen einen Patches der Art -p1, jedoch a/datei und b/datei
	als ursprüngliche und neue Dateinamen verwenden anstelle von
	dir.orig/datei und dir/datei.

-u, -U anzahl, -c, -C anzahl
	Erzeugen eines Unified-Diffs (-u, -U) mit der angegebenen Anzahl von
	Kontextzeilen bzw. erzeugen eines Context-Diffs (-c, -C) mit der
	angegebenen Anzahl von Kontextzeilen. Die Anzahl der Kontextzeilen ist
	3, wenn nicht anders angegeben.

--no-timestamps
	Keine Datei-Zeitstempel in Patch-Kopfzeilen angeben.

--no-index
	Keine \`Index:'-Zeilen ausgeben.

-z	Änderungen, die relativ zum obersten oder angegebenen Patch
	angewandt wurden, auf die Standardausgabe ausgeben.

-R	Erzeugen eines umgekehrten Diffs.

-P patch
	Erzeugen eines Diffs für den angegebenen Patch (wenn nicht angegeben,
	oberster Patch).
--combine patch
	Ein kombiniertes Diff für alle Patches zwischen diesem und dem durch
	-P angegebenen Patch erzeugen. Der Patchname \`-' ist
	gleichbedeutend mit der Angabe des ersten angewandten Patches.

--snapshot
	Erzeugen eines Patches gegen den Snapshot (siehe \`quilt
	snapshot -h').

--diff=programm
	Verwenden des angegebenen Programms zur Generierung des Patches. Das
	Programm wird mit dem Dateinamen der ursprünglichen und der
	neuen Datei aufgerufen.

--color[=always|auto|never]
	Syntaxeinfärbung verwenden (wird bei auto nur aktiviert, wenn Ausgabe
	auf tty).

--sort	Dateien im Patch nach ihren Namen sortieren, statt die
	ursprüngliche Reihenfolge beizubehalten.
 
Den obersten oder angegebenen Patch aktualisieren. Dokumentation in der
Patchdatei, die vor dem eigentlichen Patch steht, bleibt dabei
erhalten.

Es können beliebige angewandte Patches aktualisiert werden. Wenn
Patches, die nach dem angegebenen Patch angewandt sind, dieselben
Dateien verändern, die auch dieser Patch verändert, bricht dieses Skript
normalerweise ab. Mit der Option -f kann das Aktualisieren trotzdem
erzwungen werden. Dann wird für jede Datei, die später noch verändert
wurde, eine Warnung ausgegeben, und nur Änderungen in Dateien, die
danach nicht von anderen Patches weiter verändert werden, werden beim
Aktualisieren berücksichtigt.

-p n	Erzeugen eines Patch der Art -p n (n=0 oder n=1 werden
	unterstützt).

-p ab	Erzeugen einen Patches der Art -p1, jedoch a/datei und b/datei
	als ursprüngliche und neue Dateinamen verwenden anstelle von
	dir.orig/datei und dir/datei.

-u, -U anzahl, -c, -C anzahl
	Erzeugen eines Unified-Diffs (-u, -U) mit der angegebenen Anzahl von
	Kontextzeilen bzw. erzeugen eines Context-Diffs (-c, -C) mit der
	angegebenen Anzahl von Kontextzeilen. Die Anzahl der Kontextzeilen ist
	3, wenn nicht anders angegeben.

-z[neuer_name]
	Erzeugen eines neuen Patches mit den Änderungen, statt den obersten
	Patch zu aktualisieren. Wenn kein neuer Name angegeben wird, wird
	\`-2' an den Namen angehängt usw. (siehe den fork-Befehl).

--no-timestamps
	Keine Zeitstempel in Patch-Kopfzeilen angeben.

--no-index
	Keine \`Index:'-Zeilen ausgeben.

--diffstat
	Den Patch-Kopfzeilen einen diffstat-Abschnitt hinzufügen oder den
	bestehenden Abschnitt ersetzen.

-f	Das Aktualisieren eines Patches erzwingen, der sich nicht an
	oberster Position befindet.

--backup
	Erzeugen eines Backups der alten Version von patch als patch~

--sort	Dateien im Patch nach ihren Namen sortieren, statt die
	ursprüngliche Reihenfolge beizubehalten.

--strip-trailing-whitespace
	Whitespace-Zeichen an Zeilenenden entfernen.
 
Eine oder mehrere Dateien aus dem obersten oder angegebenen Patch
entfernen. Dateien, die durch Patches oberhalb des angegebenen Patches
verändert werden, können nicht entfernt werden.

-P patch
	Angegebene Dateien aus dem genannten Patch entfernen.
 
Patches vom Stapel der angewandten Patches entfernen. Ohne angegebene
Option wird der oberste Patch entfernt. Bei Angabe einer Zahl wird die
entsprechende Anzahl von Patches entfernt. Wenn ein Name angegeben wird,
werden alle Patches oberhalb des angegebenen Patches entfernt. Patchnamen
können den patches/-Präfix enthalten, was bedeutet, dass
Autovervollständigung für die Dateinamen genutzt werden kann.

-a	Alle angewandten Patches entfernen.

-f	Erzwungenes Entfernen. Der Zustand vor dem Anwenden das Patches wird
	über die Sicherungsdateien wiederhergestellt.

-R	Immer überprüfen, ob sich Patches vollständig entfernen lassen,
	nicht auf die Zeitspempel der Dateien verlassen.

-q	Wenige Meldungen ausgeben.

-v	Ausführliche Meldungen ausgeben.

--refresh
	Jeden Patch automatisch neu erzeugen, bevor seine Anwendung rückgängig
gemacht wird.
 
Den obersten oder angegebenen Patch aus der series-Datei löschen. Falls
dieser Patch angewandt ist, wird er zuerst von quilt entfernt. (Momentan
kann nur der oberste Patch entfernt werden.)

-n	Den nächsten (dem obersten folgenden) Patch löschen statt den
	obersten oder angegebenen.

-r	Den Patch auch aus dem patches-Verzeichnis entfernen.

--backup
	Den Patch in patch~ umbenennen, statt ihn zu löschen.
	Hat nur in Kompination mit -r eine Wirkung.
 
Den obersten oder angegebenen Patch umbenennen.

-P patch
	Patch, der umbenannt werden soll.
 
Nicht übernommene Änderungen an dem obersten oder angegebenen Patch für
die angegebenen Dateien zurücknehmen. Danach zeigt 'quilt diff -z' keine
Unterschiede für diese Dateien mehr an. Änderungen an Dateien, die von
Patches oberhalb des angegebenen Patches verändert werden, können nicht
entfernt werden.

-P patch
	Änderungen in dem angegebenen Patch zurücknehmen.
 
Erzeugen eines Snapshots des aktuellen Zustands des Quellbaums. Danach
kann der Quellbaum auf den üblichen Wegen verändert werden, inklusive
Hinzufügen und Entfernen von Patches. Ein Patch zwischen dem Quellbaum
zum Zeitpunkt des Snapshots und dem aktuellen Zustand kann mit
\`quilt diff --snapshot' erzeugt werden.

-d	Lediglich den aktuellen Snapshot entfernen.
 
Die Metadaten in einem Arbeitsverzeichnis von einer älteren quilt-Version
zur neuesten aktualisieren. Dieser Befehl wird nur benötigt, wenn sich das
Format der Metadaten verändert hat und das Arbeitsverzeichnis noch alte
Metadaten enthält. In diesem Fall fordert quilt dazu auf, \`quilt upgrade'
auszuführen.
             quilt --version %s ist keine reguläre Datei\n %s: konfuse Situation.
 Text an Header von Patch %s angefügt\n Patch %s angewandt (erzwungen, muss aktualisiert werden (refresh))\n Anwenden von Patch %s\n Nur der oberste Patch kann mit -z aktualisiert werden\n Symbolische Verknüpfung %s kann nicht hinzufügt werden\n Wechsel in übergeordnetes Verzeichnis %s/ nicht möglich\n Patches mit Level -p%s können nicht erzeugt werden, bitte stattdessen -p0, -p1 oder -pab angeben\n Es kann kein Diff mit -p%s erzeugt werden, bitte -p0, -p1 oder -pab verwenden.\n Patches mit Level -p%s können nicht aktualisiert werden, bitte -p0, -p1 oder -pab angeben\n --strip-trailing-whitespace kann nicht für Patches verwendt werden, die Dateien enthalten, welche danach von anderen Patches weiter verändert werden.\n Änderungen an %s in Patch %s zurückgenommen\n Vorhandene Befehle: Konvertierung fehlgeschlagen\n Konvertieren der Metadaten auf Version %s\n Die Envelope-Adresse konnte nicht festgestellt werden. Bitte verwenden Sie --sender. Zustelladresse `%s' ist ungültig
 Diff gegen Datei '%s' fehlgeschlagen, Abbruch.\n Diff fehlgeschlagen, Abbruch.\n Verzeichnis %s existiert\n Anzeigename `%s' enthält eine unvollständige Klammerung
 Datei %s konnte nicht gesichert werden\n Datei %s konnte nicht gesichert werden\n Dateien konnten nicht in temporäres Verzeichnis kopiert werden\n Patch %s konnte nicht erzeugt werden\n Patch %s konnte nicht importiert werden\n Patch %s konnte nicht in die series-Datei eingefügt werden\n Patch konnte nicht auf temporäre Dateien angewandt werden\n Datei %s konnte nicht aus Patch %s entfernt werden\n Patch %s konnte nicht entfernt werden\n Patchdatei %s konnte nicht entfernt werden\n Änderungen an %s in Patch %s konnten nicht zurückgenommen werden\n Datei %s zu Patch %s hinzugefügt\n Datei %s existiert nicht\n Datei %s existiert\n Datei %s ist bereits in Patch %s\n Die Datei %s befindet sich unterhalb des Verzeichnisses %s\n Datei %s wird nicht verändert\n Datei %s ist nicht in Patch %s\n Datei %s ist unverändert\n Datei %s ist möglicherweise defekt\n Datei %s wird von Patch %s verändert\n Datei %s nicht gefunden\n Datei %s aus Patch %s entfernt\n series-Datei vollständig angewandt, endet in Patch %s\n Neue Version von %s erstellt als %s\n Fehler beim Aufspalten von %s nach %s\n Importieren von Patch %s (abgelegt als %s)\n Importieren von Patch %s\n Unterbrechung durch Benutzer; Patch %s wurde nicht angewandt.\n Die Einleitung hat keine Subject-Kopfzeile (gespeichert als %s)\n Die Einleitung hat keine Subject-Kopfzeile\n Einleitungstext bereits angegeben Einleitung gespeichert als %s\n Später angewandte Patches verändern Dateien von %s. Aktualisieren mit -f erzwingen.\n Kein folgender Patch\n Kein Patch angewandt\n Kein Patch entfernt\n Keine Patches angewandt\n Keine Patches in der series-Datei\n Keine series-Datei gefunden\n Kein Snapshot, um ein Diff zu erzeugen\n Patch %s ist leer\n Jetzt in Patch %s\n Die Option \`-P' kann nur beim Importieren eines einzelnen Patches verwendet werden\n Optionen %s und %s können nicht kombiniert werden\n Die Optionen \`--combine', \`--snapshot' und \`-z' können nicht kombiniert werden.\n Patch %s existiert bereits in der series-Datei.\n Patch %s scheint leer zu sein; wird entfernt\n Patch %s scheint leer zu sein; angewandt\n Patch %s kann umgekehrt angewandt werden\n Patch %s lässt sich nicht anwenden (erzwingen mit -f)\n Patch %s existiert nicht; leerer Patch wird angewandt\n Patch %s existiert nicht\n Patch %s kann nicht entfernt werden (Patch aktualisieren oder das Entfernen mit -f erzwingen)\n Patch %s existiert bereits, bitte einen anderen Namen wählen\n Patch %s existiert bereits, bitte neuen Namen wählen\n Patch %s existiert bereits\n Patch %s existiert bereits. Ersetzen mit -f.\n Patch %s wurde bereits angewandt; überprüfen Sie Ihre series-Datei\n Patch %s ist angewandt\n Patch %s ist momentan angewandt\n Patch %s ist nicht angewandt\n Patch %s ist nicht in der series-Datei\n Der oberste Patch ist jetzt %s\n Patch %s ist unverändert\n Patch %s muss zuerst aktualisiert werden (refresh).\n Patch %s ist nicht vor Patch %s angewandt\n Patch %s umbenannt in %s\n Die Patchheader unterscheiden sich:\n Die Patches %s haben dieselben Subject-Kopfzeilen.\n Bitte verwenden Sie die Option -d {o|a|n}, um anzugeben, welche Patchheader erhalten bleiben sollen.\n QUILT_PATCHES(%s) muss sich von QUILT_PC(%s) unterscheiden\n Patch %s aktualisiert\n Entfernen von Patch %s\n Entfernen von Patch %s\n Abschliessende Leerzeichen in Zeile %s von %s werden entfernt
 Abschliessende Leerzeichen in den Zeilen %s von %s werden entfernt
 Umbenennen von %s in %s: %s
 Fehler beim Umbenennen von Patch %s in %s\n Header von Patch %s ersetzt\n Ersetzen von Patch %s durch neuere Version\n Aufruf: %s [-p num] [-n] [patch]
 Der %%prep-Abschnitt von %s ist fehlgeschlagen; die Ergebnisse sind möglicherweise unvollständig.\n Die Option -v zeigt die Ausgaben von rpm an\n Die Metadaten in %s haben bereits das Format Version %s; keine Aktualisierung nötig\n Die quilt-Metadaten in diesem Arbeitsverzeichnis haben Version %s, aber diese Version von quilt kann nur mit Metadaten der Versionen %s und darunter umgehen. Bitte entfernen Sie vor dem Downgrade von quilt alle Patches mit der Version von quilt, die zur Erstellung des Arbeitsverzeichnisses verwendet wurde.\n Die series-Datei passt nicht mehr zu den angewandten Patches. Bitte führen Sie 'quilt pop -a' aus.\n Der oberste Patch %s muss zuerst aktualisiert werden (refresh).\n Das Arbeitsverzeichnis wurde von einer älteren quilt-Version erstellt. Bitte führen Sie \`quilt upgrade' aus.\n Versuch alternativer patches- und series-Namen ... Es konnte keine Subject-Kopfzeile aus %s extrahiert werden\n Entpacken des Archivs %s\n Aufruf: quilt [--trace[=verbose]] [--quiltrc=XX] befehl [-h] ... Aufruf: quilt add [-P patch] {datei} ...\n Aufruf: quilt annotate [-P patch] {datei}\n Aufruf: quilt applied [patch]\n Aufruf: quilt delete [-r] [--backup] [patch|-n]\n Aufruf: quilt diff [-p n|-p ab] [-u|-U num|-c|-C num] [--combine patch|-z] [-R] [-P patch] [--snapshot] [--diff=programm] [--no-timestamps] [--no-index] [--sort] [--color[=always|auto|never]] [datei ...]\n Aufruf: quilt edit datei ...\n Aufruf: quilt files [-v] [-a] [-l] [--combine patch] [patch]\n Aufruf: quilt fold [-R] [-q] [-f] [-p strip-ebenen]\n Aufruf: quilt fork [neuer_name]\n Aufruf: quilt graph [--all] [--reduce] [--lines[=num]] [--edge-labels=files] [-T ps] [patch]\n Aufruf: quilt grep [-h|options] {suchausdruck}\n Aufruf: quilt import [-p num] [-R] [-P patch] [-f] [-d {o|a|n}] [patchdatei] ...\n Aufruf: quilt mail {--mbox datei|--send} [-m text] [-M datei] [--prefix präfix] [--sender ...] [--from ...] [--to ...] [--cc ...] [--bcc ...] [--subject ...] [--reply-to message]  [--charset ...] [--signature datei] [first_patch [last_patch]]\n Aufruf: quilt new [-p n|-p ab] {patchname}\n Aufruf: quilt next [patch]\n Aufruf: quilt patches [-v] [--color[=always|auto|never]] {datei} [dateien...]\n Aufruf: quilt pop [-afRqv] [--refresh] [num|patch]\nn Aufruf: quilt previous [patch]\n Aufruf: quilt push [-afqvm] [--fuzz=N]  [--merge[=merge|diff3]] [--leave-rejects] [--color[=always|auto|never]] [--refresh] [num|patch]\n Aufruf: quilt refresh [-p n|-p ab] [-u|-U num|-c|-C num] [-z[new_name]] [-f] [--no-timestamps] [--no-index] [--diffstat] [--sort] [--backup] [--strip-trailing-whitespace] [patch]\n Aufruf: quilt remove [-P patch] {datei} ...\n Aufruf: quilt rename [-P patch] neuer_name\n Aufruf: quilt revert [-P patch] {datei} ...\n Aufruf: quilt series [--color[=always|auto|never]] [-v]\n Aufruf: quilt setup [-d pfad-präfix] [-v] [--sourcedir verzeichnis] [--fuzz=N] [--slow|--fast] {spec-datei|series-datei}\n Aufruf: quilt snapshot [-d]\n Aufruf: quilt top\n Aufruf: quilt unapplied [patch]\n Aufruf: quilt upgrade\n Warnung: später angewandte Patches verändern Dateien von %s\n Warnung: abschliessende Leerzeichen in Zeile %s von %s
 Warnung: abschliessende Leerzeichen in den Zeilen %s von %s
 Sie müssen '%s' (aus dem Paket %s) installieren, um 'quilt %s' nutzen zu können\n 