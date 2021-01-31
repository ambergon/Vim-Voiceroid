"無効化処理
"g:loaded_A_Vim_Voiceroid = 1
"
"if exists('g:loaded_A_Vim_Voiceroid')
"   finish
"endif

""settings
""民安talk vrx.exeのpath
"let g:tamiyasu_talk_path = "path"
"Voiceroid側の文字列の区切り
"let g:A_Vim_Separater = "/"

command! -range Avoiceroid call A_Vim_Voiceroid#voiceroid(<line1>,<line2>)










