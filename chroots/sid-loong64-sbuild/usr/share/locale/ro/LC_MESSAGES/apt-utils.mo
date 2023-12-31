��    :      �  O   �      �  )   �     #  "   ?     b     �     �     �     �     �  1        5  ,   D  m   q  #   �  (        ,     0     I     f  %   �  '   �     �     �     �  #     "   +     N     d     ~     �     �  #   �  "   �  "   		  "   ,	  $   O	     t	  "   �	  5   �	  !   �	     
     
     0
     B
  "   `
     �
  �   �
  �   &  &    �   <  �   �  �   �     �     �     �  !   �  #   �  *    /   ;  #   k  1   �     �     �  -   �  0   #     T  &   r  I   �     �  ?   �  �   4  2   �  B   �     :  '   C  %   k  $   �  0   �  /   �          *  !   C  .   e  ;   �     �  "   �       "   *  )   M  (   w  2   �  2   �  2     4   9      n  0   �  =   �  0   �     /     N     m  4   �  *   �  %   �  �     0  �  n  �   �   W(  �   +)  b  �)     Q+  &   X+  ,   +      �+  $   �+     +   #      
      6                            4           	                 2              /                   $   .         )             *          !   7       :         "   '                  0   ,                    8       9   &          5      (   -      1   3   %                %s has no binary override entry either
   %s has no override entry
   %s has no source override entry
   %s maintainer is %s not %s
  DeLink %s [%s]
  DeLink limit of %sB hit.
 *** Failed to link %s to %s Archive had no package field Archive has no control record Cannot get debconf version. Is debconf installed? Compress child Compressed output %s needs a compression set DB format is invalid. If you upgraded from an older version of apt, please remove and re-create the database. DB is old, attempting to upgrade %s DB was corrupted, file renamed to %s.old E:  E: Errors apply to file  Error processing contents %s Error processing directory %s Error writing header to contents file Failed to create IPC pipe to subprocess Failed to fork Failed to open %s Failed to read .dsc Failed to read the override file %s Failed to read while computing MD5 Failed to readlink %s Failed to rename %s to %s Failed to resolve %s Failed to stat %s IO to subprocess/file failed Internal error, failed to create %s Malformed override %s line %llu #1 Malformed override %s line %llu #2 Malformed override %s line %llu #3 Malformed override %s line %llu (%s) No selections matched Package extension list is too long Some files are missing in the package file group `%s' Source extension list is too long Tree walking failed Unable to get a cursor Unable to open %s Unable to open DB file %s: %s Unknown compression algorithm '%s' Unknown package record! Usage: apt-dump-solver

apt-dump-solver is an interface to store an EDSP scenario in
a file and optionally forwards it to another solver.
 Usage: apt-extracttemplates file1 [file2 ...]

apt-extracttemplates is used to extract config and template files
from debian packages. It is used mainly by debconf(1) to prompt for
configuration questions before installation of packages.
 Usage: apt-ftparchive [options] command
Commands: packages binarypath [overridefile [pathprefix]]
          sources srcpath [overridefile [pathprefix]]
          contents path
          release path
          generate config [groups]
          clean config

apt-ftparchive generates index files for Debian archives. It supports
many styles of generation from fully automated to functional replacements
for dpkg-scanpackages and dpkg-scansources

apt-ftparchive generates Package files from a tree of .debs. The
Package file contains the contents of all the control fields from
each package as well as the MD5 hash and filesize. An override file
is supported to force the value of Priority and Section.

Similarly apt-ftparchive generates Sources files from a tree of .dscs.
The --source-override option can be used to specify a src override file

The 'packages' and 'sources' command should be run in the root of the
tree. BinaryPath should point to the base of the recursive search and 
override file should contain the override flags. Pathprefix is
appended to the filename fields if present. Example usage from the 
Debian archive:
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

Options:
  -h    This help text
  --md5 Control MD5 generation
  -s=?  Source override file
  -q    Quiet
  -d=?  Select the optional caching database
  --no-delink Enable delinking debug mode
  --contents  Control contents file generation
  -c=?  Read this configuration file
  -o=?  Set an arbitrary configuration option Usage: apt-internal-planner

apt-internal-planner is an interface to use the current internal
installation planner for the APT family like an external one,
for debugging or the like.
 Usage: apt-internal-solver

apt-internal-solver is an interface to use the current internal
resolver for the APT family like an external one, for debugging or
the like.
 Usage: apt-sortpkgs [options] file1 [file2 ...]

apt-sortpkgs is a simple tool to sort package information files.
By default it sorts by binary package information, but the -s option
can be used to switch to source package ordering instead.
 W:  W: Unable to read directory %s
 W: Unable to stat %s
 Waited for %s but it wasn't there realloc - Failed to allocate memory Project-Id-Version: apt 2.7.2
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
PO-Revision-Date: 2023-07-13 19:58+0200
Last-Translator: Remus-Gabriel Chelu <remusgabriel.chelu@disroot.org>
Language-Team: Romanian <debian-l10n-romanian@lists.debian.org>
Language: ro
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bugs: Report translation errors to the Language-Team address.
Plural-Forms: nplurals=3; plural=n==1 ? 0 : (n==0 || (n%100 > 0 && n%100 < 20)) ? 1 : 2;
X-Generator: Poedit 3.2.2
   %s nu are nici intrare „binary override”
   %s nu are intrare „override”
   %s nu are nici o intrare „source override”
   %s responsabil este %s nu %s
  Dezlegare %s [%s]
  Limita de %sB a dezlegării a fost atinsă.
 *** Nu s-a putut face legătura între %s și %s Arhiva nu are câmp de pachet Arhiva nu are înregistrare de control Nu s-a putut obține versiunea de «debconf». Este «debconf» instalat? Comprimare copil Rezultatul comprimat %s are nevoie de o ajustare a comprimării Formatul bazei de date nu este valid. Dacă ați făcut înnoirea de la o versiune mai veche de «apt», eliminați și recreați baza de date. Baza de date este veche se încearcă înnoirea %s Baza de date a fost coruptă, fișierul a fost redenumit la %s.old Eroare:  Eroare: Erorile se aplică fișierului  Eroare la procesarea conținutului %s Eroare la procesarea directorului %s Eroare la scrierea antetului în fișierul index Eșec la crearea conductei IPC către subproces Eșec la bifurcare Nu s-a putut deschide %s Eșec la citirea fișierului .dsc Nu s-a putut citi fișierul  „override” %s Eșec la citire în timpul calculării sumei de control MD5 Nu s-a putut citi legătura %s Eșec la redenumirea lui %s în %s Nu s-a putut rezolva %s Nu s-a putut obține starea lui %s In/Ieș către subproces/fișier a eșuat Eroare internă, eșec la crearea lui %s Intrare „override” incorectă %s linia %llu #1 Intrare „override” incorectă %s linia %llu #2 Intrare „override” incorectă %s linia %llu #3 Intrare „override” incorectă %s linia %llu (%s) Nu s-a potrivit nici o selecție Lista de extensii pentru pachet este prea lungă Unele fișiere lipsesc din grupul de fișiere pachet „%s” Lista de extensii pentru sursă este prea lungă Parcurgerea arborelui a eșuat Nu s-a putut obține un cursor Nu s-a putut deschide %s Nu s-a putut deschide fișierul bazei de date %s: %s Algoritm de comprimare necunoscut „%s” Înregistrare de pachet necunoscută! Utilizare: apt-dump-solver

«apt-dump-solver» este o interfață pentru a stoca un scenariu EDSP
într-un fișier și, opțional, îl transmite unui alt soluționator.
 Utilizare: apt-extracttemplates fișier1 [fișier2 ...]

«apt-extracttemplates» este utilizat pentru a extrage fișierele
de configurare și șabloane din pachetele debian. Este utilizat
în principal de debconf(1) pentru a solicita întrebări legate
de configurare înainte de instalarea pachetelor.
 Utilizare: apt-ftparchive [opțiuni] comanda
Comenzi: packages ruta_binare [fișier_înlocuire [prefix_rută]]
          sources ruta_surse [fișier_înlocuire [prefix_rută]]
          contents ruta
          release ruta
          generate config [grupuri]
          clean config

«apt-ftparchive» generează fișiere de indexare pentru arhivele Debian. Suportă
multe stiluri de generare de la complet automat la înlocuiri funcționale
pentru «dpkg-scanpackage» și «dpkg-scansources»

«apt-ftparchive» generează fișierele Package dintr-un arbore de .deb-uri.
Fișierul Package înglobează conținutul tuturor câmpurilor de control din fiecare
pachet cât și suma de control MD5 și dimensiunea fișierului. Un fișier de înlocuire
este furnizat pentru a forța valoarea Priorității și Secțiunii.

În mod asemănător «apt-ftparchive» generează fișierele Sources dintr-un arbore de .dsc-uri.
Opțiunea „--source-override” poate fi folosită pentru a specifica fișierul de înlocuire

Comenzile „packages” și „sources” ar trebui executate în rădăcina arborelui.
Ruta_binare ar trebui să indice baza căutării recursive și fișierul de înlocuire ar
trebui să conțină semnalizatorul de înlocuire. Prefix_rută este adăugat câmpului
de nume fișier dacă acesta este prezent. Exemplu de utilizare din arhiva
Debian:
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

Opțiuni:
  -h   Acest mesaj de ajutor.
  --md5 Generarea sumelor de control MD5
  -s=?  Fișierul de înlocuire pentru surse
  -q    Lucrează silențios
  -d=?  Selectează baza de date de cache opțională
  --no-delink Activează modul de depanare dezlegare
  --contents  Generarea fișierului cu sumarul de control
  -c=? Citește acest fișier de configurare
  -o=? Definește o opțiune de configurare arbitrară Utilizare: apt-internal-planner

«apt-internal-planner» este o interfață pentru a utiliza planificatorul
intern de instalare curent pentru familia APT ca pe unul extern, pentru
depanare sau altele asemenea.
 Utilizare: apt-internal-solver

«apt-internal-solver» este o interfață pentru a utiliza rezolvatorul
intern curent pentru familia APT ca pe unul extern, pentru depanare
sau altele asemenea.
 Utilizare: apt-sortpkgs [opțiuni] fișier1 [fișier2 ...]

«apt-sortpkgs» este un instrument simplu pentru a sorta fișierele cu
informații despre pachete. În mod implicit, sortează în funcție de
informațiile despre pachete binare, dar opțiunea „-s” poate fi utilizată
pentru al face să treacă în schimb la ordonarea pachetelor sursă.
 Aviz:  Aviz: Nu s-a putut citi directorul %s
 Aviz: Nu s-a putut obține starea pentru %s
 Se aștepta %s, dar nu era acolo realloc - Eșec la alocarea memoriei 