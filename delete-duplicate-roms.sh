# delete roms from countries, that I don't speak the language of, betas, samples, etc
find . -name "*(Japan)*" -print -exec rm {} \;
find . -name "*(Asia)*" -print -exec rm {} \;
find . -name "*(Ja)*" -print -exec rm {} \;
find . -name "*(Germany)*" -print -exec rm {} \;
find . -name "*(Sweden)*" -print -exec rm {} \;
find . -name "*(Australia)*" -print -exec rm {} \;
find . -name "*(Taiwan)*" -print -exec rm {} \;
find . -name "*(Korea)*" -print -exec rm {} \;

find . -name "*(Brazil)*" -print -exec rm {} \;
find . -name "*(Beta*" -print -exec rm {} \;
find . -name "*(Rev*" -print -exec rm {} \;
find . -name "*(Virtual*" -print -exec rm {} \;
find . -name "*(Sample)*" -print -exec rm {} \;


# delete roms that have a Europe _and_ a USA version
(IFS='
'; for x in `find . -name "*(Europe)*" | cut -d '(' -f 1 | cut -d '/' -f 2`; do find . -name "$x*(USA)*" -print -exec rm {} \;; done)

