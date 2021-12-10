" clear cache so this reloads changes.
" useful for development
lua package.loaded['monokaipro'] = nil
lua package.loaded['monokaipro.theme'] = nil
lua package.loaded['monokaipro.colors'] = nil
lua package.loaded['monokaipro.util'] = nil
lua package.loaded['monokaipro.config'] = nil

lua require('monokaipro').colorscheme()
