


""settings
let g:tamiyasu_talk_EXE = 'run.bat'
let g:VimVoiceroidSep = '!LF!'
let s:path_run = expand("~/my_workspace/vim/VimVoiceroid/run.bat")
let s:path_vrx = expand("~/Documents/my_bin/tamiyasu_talk1_30_1/vrx.exe")


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
        let l:text =  l:text . getline( n ) . g:VimVoiceroidSep
    endfor
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





