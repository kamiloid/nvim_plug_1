if exists('g:loaded_alpha') | finish | endif 

let s:save_cpo = &cpo 
set cpo&vim

command! AlphaHelloWorld :lua require("nvim_plug_1").say_hello_world()

let &cpo = s:save_cpo 
unlet s:save_cpo

let g:loaded_alpha = 1
