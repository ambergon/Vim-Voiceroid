
function! A_Vim_Voiceroid#voiceroid(...) abort
    let l:text =''
    for n in range(a:1 , a:2)
        "textの無毒化
        let l:text = l:text . getline( n ) . g:A_Vim_Separater
    endfor
    call system(g:tamiyasu_talk_PATH . '\vrx.exe' . ' "' . l:text . '"')
endfunction
        
function! A_Vim_Voiceroid#yukkuri(...) abort
    call system(g:SofTalk_PATH . '\SofTalk.exe' . ' /W:' . getline( '.' ) )
endfunction

function! A_Vim_Voiceroid#yukkurisave(...) abort
    for n in range(a:1 , a:2)
        let l:text = getline( n )
        if l:text =~ "^yaruo:.*"
            call system(g:SofTalk_PATH . '\SofTalk.exe' . ' /R:' . g:kansikun_PATH . '\tmp\' . n  .  '.wav' . ' /W:' . getline(n) )
        elseif l:text =~ "^yaranaio:.*"
            call system(g:SofTalk_PATH . '\SofTalk.exe' . ' /R:' . g:kansikun_PATH . '\tmp\' . n  .  '.wav' . ' /W:' . getline(n) )
        else
            echo "skip:" . getline(n)
        endif
    endfor
endfunction
