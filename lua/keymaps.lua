local keymap = vim.keymap
vim.g.mapleader = " "
--Abrir navegador y buscar en archivo en arbol
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- keymap.set("n", "<leader>d", ":NvimTreeFindFile<CR>", opts)

--"guardar archivo
keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "" })
keymap.set("i", "<C-s>", "<Esc><cmd>w<CR>", { desc = "" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x', { desc = "" })
-- keymap.set("n", "<C-c>", ":<C-w>q<cr>", { desc = "Cerrar buffer" }) -- close current split window
keymap.set("n", "<C-c>", ":bdelete<cr>", { desc = "Cerrar buffer", silent = true }) -- close current split window
-- keymap.set("n", "<C-x>", ":bdelete<CR>", { desc = "" }) -- cerrar buffer
-- keymap.set("n", "<leader>+", ":<C-a>", { desc = "sumar" }) -- close current split window
-- keymap.set("n", "<leader>-", ":<C-x>", { desc = "restar" }) -- cerrar buffer
-- Reemplazar todo en el archivo
keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Reemplazar palabra" })
-- Buscar palabra en todo el archivo
keymap.set("n", "<c-.>", [[:/\<<C-r><C-w>\><Left><Left><CR>:set hlsearch<CR>n]], { desc = "Buscar palabra" })
-- Move Lines
keymap.set("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
keymap.set("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
keymap.set("i", "<C-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
keymap.set("i", "<C-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
-- better up/down
keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
--Indentacion
keymap.set("v", "<", "<gv", { noremap = true, silent = false })
keymap.set("v", ">", ">gv", { noremap = true, silent = false })
-- Mover entre buffers
-- keymap.set("n", "<tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Move right" })
-- keymap.set("n", "<s-tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Move left" })
--Mostrar/ocultar barra de cambios
-- keymap.set("n", "<F4>", ":UndotreeToggle<CR>", { noremap = true, silent = false })
-- keymap.set(
--   "v",
--   "n",
--   [[:<c-u>let temp_variable=@"<CR>gvy:<c-u>let @/='\V<C-R>=escape(@",'/\')<CR>'<CR>:let @"=temp_variable<CR>]],
--   { silent = true }
-- )
vim.keymap.set("n", "<leader>p", function()
	local val = vim.fn.getreg("+")
	vim.api.nvim_command([[normal! p]])
	vim.fn.setreg("+", val)
end, {})
