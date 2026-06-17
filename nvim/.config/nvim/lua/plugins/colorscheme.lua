return {
  {
    "dylanaraps/wal.vim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme wal")
      vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")
      vim.cmd("highlight NormalNC ctermbg=NONE guibg=NONE")
      vim.cmd("highlight NormalFloat ctermbg=NONE guibg=NONE")
    end,
  },
}
