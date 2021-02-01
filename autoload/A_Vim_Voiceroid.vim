
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

function! A_Vim_Voiceroid#yukkuri_save(...) abort
    let l:text =''
    for n in range(a:1 , a:2)
        call system(g:SofTalk_PATH . '\SofTalk.exe' . ' /R:' . SofTalk_PATH . '\voice\' . getline( n ) . '.wav' . ' /W: 'getline( n ) )
    endfor
endfunction
