local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then 
  return 
end

-- recommend settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- configure nvim-tree
nvimtree.setup({
  sort_by = "case_sensitive",
  disable_netrw = true,
  update_cwd = true,   
  update_focused_file = {
      enable = true,
      update_cwd = false,
  },
	-- change folder arrow icons
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
			},
		},
	},
	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
  view = {
    side = "right"
  }
})
