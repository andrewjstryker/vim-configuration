" YAML configuration

if exists("b:loaded_yaml_config")
  finish
endif
let b:loaded_yaml_config = 1

" wrap at 80 columns
set textwidth=80
set formatoptions+=tj
set formatoptions-=wa

set shiftwidth=2
set softtabstop=2
set expandtab
