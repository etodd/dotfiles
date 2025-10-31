local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "ctrlpvim/ctrlp.vim" },
  { "mg979/vim-visual-multi", branch = "master" },
})

local opt = vim.opt

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.hidden = false
opt.hlsearch = false
opt.autoindent = true
opt.copyindent = true
opt.smartindent = true
opt.breakindent = true
opt.wrap = false
opt.expandtab = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.scrolloff = 5
opt.sidescrolloff = 5
opt.errorbells = false
opt.incsearch = true
opt.smartcase = true
opt.showmatch = true
opt.background = "dark"
opt.autoread = true
opt.history = 1000
opt.undolevels = 1000
opt.backup = false
opt.swapfile = false
opt.title = true
opt.ruler = false
opt.shortmess:append("Ia")
opt.ttimeoutlen = 0
opt.synmaxcol = 900
opt.cursorline = true
opt.cursorcolumn = true
opt.showmode = false
opt.backspace = { "indent", "eol", "start" }
opt.whichwrap:append('h')
opt.whichwrap:append('l')
opt.whichwrap:append('~')
opt.whichwrap:append('[')
opt.whichwrap:append(']')
opt.secure = true
opt.exrc = true
opt.magic = true
opt.diffopt:append({ "filler", "iwhite" })
opt.laststatus = 0

opt.wildignore:append({
  "*/.yarn-cache/*",
  "*/.vscode/*",
  "*/bin/*",
  "*/obj/*",
  "*/node_modules/*",
  "*/.git/*",
  "*/.jj/*",
})

opt.completeopt = { "menu", "menuone", "noselect" }

vim.cmd([[cmap w!! w !sudo tee % > /dev/null]])

-- Return to last cursor position when reopening a file
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local row = vim.fn.line([[\'"]])
    if row > 1 and row <= vim.fn.line('$') then
      pcall(vim.cmd, [[normal! g`"]])
    end
  end,
})

-- Redefine :E to always open netrw's Explore
pcall(vim.api.nvim_del_user_command, "E")
vim.api.nvim_create_user_command("E", function()
  vim.cmd("Explore")
end, { desc = "Open netrw file explorer" })
