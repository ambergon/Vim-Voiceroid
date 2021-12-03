"if exists('g:loaded_A_Vim_Voiceroid')
"   finish
"endif
"g:loaded_A_Vim_Voiceroid = 1


command! -range Voiceroid   call VimVoiceroid#voiceroid(<line1>,<line2>)

command!        Yukkuri     call VimVoiceroid#yukkuri()
command! -range YukkuriSave call VimVoiceroid#yukkurisave(<line1>,<line2>)









