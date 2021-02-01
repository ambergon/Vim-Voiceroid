
function! A_Vim_Voiceroid#voiceroid(...) abort
    let l:text =''
    for n in range(a:1 , a:2)
        "textの無毒化
        let l:text = l:text . getline( n ) . g:A_Vim_Separater
    endfor
    call system(g:tamiyasu_talk_PATH . ' "' . l:text . '"')
endfunction
        
function! A_Vim_Voiceroid#yukkuri(...) abort
    call system(g:SofTalk_PATH . '/W:' . getline( '.' ) )
endfunction

function! A_Vim_Voiceroid#yukkuri_save(...) abort
    let l:text =''
    for n in range(a:1 , a:2)
        call system(g:SofTalk_PATH . '/R:' . SofTalk_SAVE_PATH . ' /W:' . getline( n ) . '.wav' )
    endfor
endfunction
