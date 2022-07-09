function! Reload_Hello()
lua << EOF
    for k in pairs(package.loaded) do
        if k:match("^hello") then
            package.loaded[k] = nil
        end
    end
EOF
endfunction

command! Reload :call Reload_Hello()
command! Hello :lua require("nvim_plug_1").say_hello_world()
