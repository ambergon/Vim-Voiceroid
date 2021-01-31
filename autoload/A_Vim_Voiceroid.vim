
function! A_Vim_Voiceroid#voiceroid(...) abort
    " echo a:0
    " echo a:1
    " echo a:2
    " echo getline( 1 )
    let l:text =''
    for n in range(a:1 , a:2)
        let l:text = l:text . getline( n ) . g:A_Vim_Separater

    endfor
    echo l:text
    "call system(tamiyasu_talk_path . ' ' . l:text)
endfunction
        
""vimのpackage名に-は使えない；・・？
"function! A_Vim_Voiceroid#aaa(msg) abort
"    echo a:msg
"endfunction
