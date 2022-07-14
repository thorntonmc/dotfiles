let configs = [
\ "general",
\ "ui",
\ "commands",
\ "plugins",
\ "plugin-settings",
\]

for file in configs
    let x = expand("~/.vim/".file.".vim")
    if filereadable(x)
        execute 'source' x
    endif
endfor

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256          " Remove this line if not necessary
  source ~/.vimrc_background
endif
