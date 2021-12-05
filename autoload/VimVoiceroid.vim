


""settings
"let g:VimVoiceroid_vrx =

let s:dir = expand('<sfile>:p:h')
let s:path_run = s:dir . '\run.bat'
let s:path_vrx = expand( g:VimVoiceroid_vrx )
let s:VimVoiceroidSep = '!LF!'


""YUKKURI
""SofTalkのPATH
"let g:SofTalk_PATH = 'path'
"let g:kansikun_PATH = 'path'

"#############
"##Voiceroid##
"#############

function! VimVoiceroid#voiceroid(...) abort
    let l:text =''
    for n in range(a:1 , a:2)
        let l:text =  l:text . substitute( getline( n ) ,'"','','g') . s:VimVoiceroidSep
    endfor
    let l:text = '"' . l:text . '"'
    eval( system( s:path_run . ' ' . s:path_vrx . ' ' . l:text ))
endfunction
        


"############
"##SofTalk ##
"############

function! VimVoiceroid#yukkuri(...) abort
    call system(g:SofTalk_PATH . '\SofTalk.exe' . ' /W:' . getline( '.' ) )
endfunction

function! VimVoiceroid#yukkurisave(...) abort
    for n in range(a:1 , a:2)
        let l:text = getline( n )
        if l:text =~ "^yaruo:.*"
            call system(g:SofTalk_PATH . '\SofTalk.exe' . ' /R:' . g:kansikun_PATH . '\tmp\Yukkuri_' . n  .  '.wav' . ' /W:' . getline(n) )
        elseif l:text =~ "^yara:.*"
            call system(g:SofTalk_PATH . '\SofTalk.exe' . ' /R:' . g:kansikun_PATH . '\tmp\Yukkuri_' . n  .  '.wav' . ' /W:' . getline(n) )
        else
            echo "skip:" . getline(n)
        endif
    endfor
endfunction





