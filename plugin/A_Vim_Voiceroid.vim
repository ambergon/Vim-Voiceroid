"settings
"
"無効化処理
""vimrc側に記述
"g:loaded_A-Vim-Voiceroid = 1
"
"if exists('g:loaded_session')
"   finish
"endif
"
""民安talkのpath
"talk_path
"tag = >
""たぶん使わない
"who = voiceroid_name
""区切り文字の指定
"sep = /


command! -range Avoiceroid call A_Vim_Voiceroid#voiceroid(<line1>,<line2>)










