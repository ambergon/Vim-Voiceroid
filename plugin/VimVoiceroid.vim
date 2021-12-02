"if exists('g:loaded_A_Vim_Voiceroid')
"   finish
"endif
"g:loaded_A_Vim_Voiceroid = 1

let g:tamiyasu_talk_PATH = 'D:\aviutl\aviutl_tools\tamiyasu_talk1_30_1'
let g:tamiyasu_talk_EXE = 'run.bat'
"let g:tamiyasu_talk_EXE = 'vrx.exe'
let g:A_Voiceroid_Separater = '!LF!'

""settings
""民安talk vrx.exeのdirectory
"let g:tamiyasu_talk_PATH = 'directory'
"起動したいソフト
"let g:tamiyasu_talk_EXE = 'vrx.exe'
"Voiceroid側の文字列の区切り
"let g:A_Voiceroid_Separater = '!LF!'
"let g:A_Voiceroid_Separater = '/'

""YUKKURI
""SofTalkのPATH
"let g:SofTalk_PATH = 'path'
"let g:kansikun_PATH = 'path'
"


command! -range Voiceroid   call VimVoiceroid#voiceroid(<line1>,<line2>)

command!        Yukkuri     call VimVoiceroid#yukkuri()
command! -range YukkuriSave call VimVoiceroid#yukkurisave(<line1>,<line2>)









