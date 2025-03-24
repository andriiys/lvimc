return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {},
    setup = {
      tailwindcss = function(_, opts)
        opts.settings = {
          tailwindCSS = {
            experimental = {
              classRegex = {
                "(?:.*:? \\/\\*tw\\*\\/ )(?:'|\"|`)([^\"'`]*)(?:'|\"|`)", -- Twig, looks for string preceded by 'class:'
              },
            },
          },
        }
      end,
    },
  },
}
