-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/aidan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/aidan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/aidan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/aidan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/aidan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\t\0\17\1 6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\2\5\0=\2\4\0019\1\2\0009\1\6\0014\2\3\0009\3\a\0'\5\b\0'\6\t\0'\a\n\0004\b\0\0B\3\5\2>\3\1\0029\3\a\0'\5\v\0'\6\f\0'\a\r\0004\b\0\0B\3\5\0?\3\0\0=\2\4\0016\1\0\0'\3\14\0B\1\2\0029\1\15\0019\3\16\0B\1\2\1K\0\1\0\vconfig\nsetup\nalpha\f:qa<CR>\14ﰌ  Quit\6q\27:e ~/.config/nvim/<CR>\21  Edit Config\6c\vbutton\fbuttons\1\n\0\0000　　　 　　/＾>》, -―‐‐＜＾}(　　　 　./:::/,≠´::::::ヽ.)　　　　/::::〃::::／}::丿ハ*　　　./:::::i{l|／　ﾉ／ }::}+　　 /:::::::瓜イ＞　´＜ ,:ﾉ2　 ./::::::|ﾉﾍ.{､　(_ﾌ_ノﾉイ＿)　 |:::::::|／}｀ｽ /          //.　|::::::|(_:::つ/ ThinkPad /　neovim!>.￣￣￣￣￣￣￣＼/＿＿＿＿＿/￣￣￣￣￣\bval\vheader\fsection\27alpha.themes.dashboard\frequire\5����\4\0" },
    loaded = true,
    path = "/home/aidan/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/aidan/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  nvim = {
    loaded = true,
    path = "/home/aidan/.local/share/nvim/site/pack/packer/start/nvim",
    url = "https://github.com/catppuccin/nvim"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\t\1\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\3'\5\b\0B\3\2\0?\3\0\0B\0\2\1K\0\1\0Lset foldmethod=expr\n            set foldexpr=nvim_treesitter#foldexpr()\bcmd\bvim\21ensure_installed\1\0\0\1\4\0\0\blua\trust\ttoml\nsetup\28nvim-treesitter.configs\frequire\3����\4\0" },
    loaded = true,
    path = "/home/aidan/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/aidan/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/aidan/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-smoothie"] = {
    config = { "\27LJ\2\n@\0\0\2\0\3\0\0056\0\0\0009\0\1\0+\1\2\0=\1\2\0K\0\1\0#smoothie_experimental_mappings\6g\bvim\0" },
    loaded = true,
    path = "/home/aidan/.local/share/nvim/site/pack/packer/start/vim-smoothie",
    url = "https://github.com/psliwka/vim-smoothie"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\t\1\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\3'\5\b\0B\3\2\0?\3\0\0B\0\2\1K\0\1\0Lset foldmethod=expr\n            set foldexpr=nvim_treesitter#foldexpr()\bcmd\bvim\21ensure_installed\1\0\0\1\4\0\0\blua\trust\ttoml\nsetup\28nvim-treesitter.configs\frequire\3����\4\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-smoothie
time([[Config for vim-smoothie]], true)
try_loadstring("\27LJ\2\n@\0\0\2\0\3\0\0056\0\0\0009\0\1\0+\1\2\0=\1\2\0K\0\1\0#smoothie_experimental_mappings\6g\bvim\0", "config", "vim-smoothie")
time([[Config for vim-smoothie]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n�\5\0\0\t\0\17\1 6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\2\5\0=\2\4\0019\1\2\0009\1\6\0014\2\3\0009\3\a\0'\5\b\0'\6\t\0'\a\n\0004\b\0\0B\3\5\2>\3\1\0029\3\a\0'\5\v\0'\6\f\0'\a\r\0004\b\0\0B\3\5\0?\3\0\0=\2\4\0016\1\0\0'\3\14\0B\1\2\0029\1\15\0019\3\16\0B\1\2\1K\0\1\0\vconfig\nsetup\nalpha\f:qa<CR>\14ﰌ  Quit\6q\27:e ~/.config/nvim/<CR>\21  Edit Config\6c\vbutton\fbuttons\1\n\0\0000　　　 　　/＾>》, -―‐‐＜＾}(　　　 　./:::/,≠´::::::ヽ.)　　　　/::::〃::::／}::丿ハ*　　　./:::::i{l|／　ﾉ／ }::}+　　 /:::::::瓜イ＞　´＜ ,:ﾉ2　 ./::::::|ﾉﾍ.{､　(_ﾌ_ノﾉイ＿)　 |:::::::|／}｀ｽ /          //.　|::::::|(_:::つ/ ThinkPad /　neovim!>.￣￣￣￣￣￣￣＼/＿＿＿＿＿/￣￣￣￣￣\bval\vheader\fsection\27alpha.themes.dashboard\frequire\5����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
