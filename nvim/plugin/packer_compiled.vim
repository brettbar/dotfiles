" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/bbarinaga/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/bbarinaga/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/bbarinaga/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/bbarinaga/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/bbarinaga/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  ["awesome-vim-colorschemes"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/awesome-vim-colorschemes"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["dart-vim-plugin"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/dart-vim-plugin"
  },
  ["lexima.vim"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/lexima.vim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["resize.vim"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/resize.vim"
  },
  ["telescope-symbols.nvim"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-fahrenheit"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-fahrenheit"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-javascript"
  },
  ["vim-lsp-cxx-highlight"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-lsp-cxx-highlight"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-misc"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-misc"
  },
  ["vim-notes"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-notes"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-sublime-monokai"] = {
    loaded = true,
    path = "/home/bbarinaga/.local/share/nvim/site/pack/packer/start/vim-sublime-monokai"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
