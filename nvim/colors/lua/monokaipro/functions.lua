-- Define filter_switch
if vim.g.monokaipro_filter_switch == nil then
    vim.g.monokaipro_filter_switch = 0
end

-- Change_filter takes a filter name as a parameter and switches to that filter
 local change_filter = function (filter)
     vim.g.monokaipro_filter = filter
     vim.cmd[[colorscheme monokaipro]]
 end

-- Toggle_filter takes no parameters toggles the filter on every function call
 local toggle_filter = function ()
    local switch = { "default", "machine", "ristretto", "octogon", "spectrum", "classic" }
    vim.g.monokaipro_filter_switch = (vim.g.monokaipro_filter_switch % table.getn(switch)) + 1
  change_filter(switch[vim.g.monokaipro_filter_switch])
 end

 toggle_filter()

 return {
     change_filter = change_filter,
     toggle_filter = toggle_filter,
}
