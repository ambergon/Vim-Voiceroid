


""settings
"let g:VimVoiceroid_vrx =

let s:dir = expand('<sfile>:p:h')
let s:path_run = s:dir . '\run.bat'
let s:path_vrx = expand( g:VimVoiceroid_vrx )
let s:VimVoiceroidSep = '!LF!'


"#############
"##Voiceroid##
"#############

function! VimVoiceroid#voiceroid(...) abort
    let l:text =''
    for n in range(a:1 , a:2)
        let l:text =  l:text . substitute( getline( n ) ,'"',"'",'g') . s:VimVoiceroidSep
    endfor
    eval( system( s:path_run . ' ' . s:path_vrx . ' ' . shellescape( l:text ) ))
endfunction
        





