return {
	{
		"neoclide/coc.nvim",
		branch = "release",
		-- Should be high priority to override Enter and Tab keys early
		priority = 20,
		config = function()
			local map = vim.api.nvim_set_keymap
			local set = vim.keymap.set

			local noremap = { silent = true, noremap = true }
			local expr = { silent = true, expr = true, noremap = true, replace_keycodes = false }
			local nowait = { silent = true, expr = true, noremap = true, nowait = true }

			function _G.check_back_space()
				local col = vim.fn.col('.') - 1
				return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
			end

			-- Completion options
			set("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], expr)
			set("i", "<M-space>", "coc#refresh()", {silent = true, expr = true})
			map("i", "<Tab>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', expr)
			map('i', '<S-Tab>', 'coc#pum#visible() ? coc#pum#prev(1) : "<S-Tab>"', expr)

			-- Diagnostics
			map('n', '<F2>', '<Plug>(coc-diagnostic-prev)', noremap)
			map('n', '<F3>', '<Plug>(coc-diagnostic-next)', noremap)
			set("n", "<F4>", ":CocList diagnostics<CR>", noremap)

			-- Gotos
			map('n', 'gd', '<Plug>(coc-definition)', noremap)
			map('n', 'gD', '<Plug>(coc-type-definition)', noremap)
			map('n', 'gI', '<Plug>(coc-implementation)', noremap)
			map('n', 'gr', '<Plug>(coc-references)', noremap)

			map('n', '<C-f>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', nowait)
			map('n', '<C-b>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', nowait)
			map('i', '<C-f>', 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<CR>" : "<Right>"', nowait)
			map('i', '<C-b>', 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<CR>" : "<Left>"', nowait)
			map('v', '<C-f>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', nowait)
			map('v', '<C-b>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', nowait)

			-- Range selection
			map('x', '<C-s>', '<Plug>(coc-range-select)', noremap)
			map('n', '<C-s>', '<Plug>(coc-range-select)', noremap)

			-- Format
			map('x', '<leader>f', '<Plug>(coc-format-selected)', noremap)
			map('n', '<leader>f', '<Plug>(coc-format-selected)', noremap)
			map('n', '<leader>F', ':call CocActionAsync("format")<CR>', noremap)
			map('n', '<leader>OI', ':call CocActionAsync("runCommand", "editor.action.organizeImport")<CR>', noremap)

			-- Code actions
			map('x', '<leader>a', '<Plug>(coc-codeaction-selected)', noremap)
			map('n', '<leader>a', '<Plug>(coc-codeaction-selected)', noremap)
			map('n', '<leader>ac', '<Plug>(coc-codeaction-cursor)', noremap)
			map('n', '<leader>as', '<Plug>(coc-codeaction-source)', noremap)
			map('n', '<leader>qf', '<Plug>(coc-fix-current)', noremap)
			map('n', '<leader>cl', '<Plug>(coc-codelens-action)', noremap)

			-- Renames
			map('n', '<leader>rn', '<Plug>(coc-rename)', noremap)
			map('n', '<leader>rf', '<Plug>(coc-codeaction-refactor)', noremap)
			map('x', '<leader>r', '<Plug>(coc-codeaction-refactor-selected)', noremap)
			map('n', '<leader>r', '<Plug>(coc-codeaction-refactor-selected)', noremap)

			-- Show Docs
			set('n', 'K', function()
				local call = vim.api.nvim_call_function
				if call('CocAction', { 'hasProvider', 'hover' }) then
					call('CocActionAsync', { 'doHover' })
				else
					call('feedkeys', { 'K', 'in' })
				end
			end, noremap)

			-- CocList
			map('n', '<leader>Ce', ':CocList extensions<CR>', noremap)
			map('n', '<leader>Cs', ':CocList services<CR>', noremap)
			map('n', '<leader>Ce', ':CocList commands<CR>', noremap)
			map('n', '<leader>S', ':CocList symbols<CR>', noremap)
		end
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	"towolf/vim-helm",
	-- { "fatih/vim-go", ft = { "go" }}
}
