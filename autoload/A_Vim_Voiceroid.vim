
function! A_Vim_Voiceroid#voiceroid(...) abort
    let l:text =''
    for n in range(a:1 , a:2)
        let l:text = l:text . getline( n ) . g:A_Voiceroid_Separater
    endfor
    call system(g:tamiyasu_talk_PATH . '\' . g:tamiyasu_talk_EXE . ' ' . l:text )
    "call system(g:tamiyasu_talk_PATH . '\vrx.exe' . ' ' . l:text . '')
endfunction
        
function! A_Vim_Voiceroid#yukkuri(...) abort
    call system(g:SofTalk_PATH . '\SofTalk.exe' . ' /W:' . getline( '.' ) )
endfunction

function! A_Vim_Voiceroid#yukkurisave(...) abort
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
