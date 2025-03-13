return {
    -- telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- color theme
    { "EdenEast/nightfox.nvim" },
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            require("nvim-treesitter.install").update({ with_sync = true })()
        end,
    },
    -- harpoon
    { 'ThePrimeagen/harpoon' },
    -- undotree
    { 'mbbill/undotree' },
    -- git
    { 'tpope/vim-fugitive' },
    -- lsp
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    -- mason
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    -- autopair brackets
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    -- hotplate
    { 'Oliver-K3003/hotplate' },
    -- hotplate dev
    --{
    --    dir = '~/projects/hotplate',
    --    dev = true,
    --},
    -- latex viewer
--    {
--        'lervag/vimtex',
--        lazy = false,
--        init = function()
--            vim.g.vimtex_view_method = 'zathura'
--        end
--    },
    -- markdown viewer
    -- install with yarn or npm
--    {
--        "iamcco/markdown-preview.nvim",
--        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--        build = "cd app && npm install",
--        init = function()
--            vim.g.mkdp_filetypes = { "markdown" }
--        end,
--        ft = { "markdown" },
--    },

}
