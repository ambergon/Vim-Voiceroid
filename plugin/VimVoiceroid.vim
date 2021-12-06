if exists('g:loaded_VimVoiceroid')
   finish
endif
let g:loaded_VimVoiceroid = 1


command! -range Voiceroid   call VimVoiceroid#voiceroid(<line1>,<line2>)










