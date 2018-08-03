function! MyFunction()
let s:Fsep = javaunit#util#Fsep()
let s:Psep = javaunit#util#Psep()
let g:JavaUnit_Home = fnamemodify(expand('<sfile>'), ':p:h:h:gs?\\?'. s:Fsep. '?')

let s:JavaUnit_TestMethod_Source =
            \g:JavaUnit_Home
            \.s:Fsep
            \.join(['src' , 'com' , 'wsdjeg' , 'util' , '*.java'],s:Fsep)

let s:JavaUnit_tempdir = g:JavaUnit_Home .s:Fsep .'bin'
let s:JavaUnit_Home_lib = g:JavaUnit_Home .s:Fsep .'lib/*'



" let s:JavaUnit_ProjectFile = s:JavaUnit_tempdir ." *.java"


let s:JavaUnit_Home_lib = g:JavaUnit_Home .s:Fsep .'lib/*'

let s:lll= "!{javac -d "
            \.s:JavaUnit_tempdir 
            \." *.java}"


let s:cmdall="java -cp '"
            \.s:JavaUnit_tempdir
            \.s:Psep
            \.get(g:,'JavaComplete_LibsPath','.')
            \.s:Psep
            \.s:JavaUnit_Home_lib
            \."' com.wsdjeg.util.TestMethod "

"exec "!{javac -d  /Users/mymac/.vim/bundle/JavaUnit.vim/bin *.java}"

" let s:JavaUnit_ProjectFile = s:JavaUnit_tempdir.join(['* .java'],s:FSEP)

" echom s:JavaUnit_Home
" echom s:JavaUnit_ProjectFile
" echom s:JavaUnit_TestMethod_Source
" echom s:JavaUnit_tempdir
echom s:lll
echom s:cmdall
endfunction
call MyFunction()
