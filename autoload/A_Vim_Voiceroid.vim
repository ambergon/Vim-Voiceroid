
function! A_Vim_Voiceroid#voiceroid(...) abort
    let l:text =''
    for n in range(a:1 , a:2)
        "textの無毒化
        let l:text = l:text . getline( n ) . g:A_Vim_Separater
    endfor
    call system(tamiyasu_talk_path . ' ' . l:text)
endfunction
        
