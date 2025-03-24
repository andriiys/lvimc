local Util = require("lazyvim.util")
local pick = require("telescope")

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-file-browser.nvim",
  },
  keys = {
    {
      ";S",
      function()
        Util.pick("live_grep", { cwd = require("telescope.utils").buffer_dir() })()
      end,
      desc = "Search in current folder",
    },
    {
      ";s",
      function()
        Util.pick("live_grep", { cwd = require("lazyvim.util.root").git() })()
      end,
      desc = "Search",
    },
    {
      ";sc",
      function()
        Util.pick("current_buffer_fuzzy_find")()
      end,
      desc = "Search in current file",
    },
    {
      ";F",
      function()
        Util.pick("files", { cwd = require("telescope.utils").buffer_dir() })()
      end,
      desc = "Search files in current folder",
    },
    {
      ";f",
      function()
        Util.pick("files", { cwd = require("lazyvim.util.root").git() })()
      end,
      desc = "Search files",
    },
    {
      ";;",
      function()
        Util.pick("resume")()
      end,
      desc = "Open last window",
    },
  },
  opts = function(_, opts)
    opts.extensions = {
      file_browser = {
        hijack_netrw = true,
      },
    }
    pick.setup(opts)
    pick.load_extension("file_browser")
  end,
}
