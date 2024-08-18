---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'catppuccin',
}
M.plugins = 'custom.plugins'
M.mappings = {
  gitsigns = {
    i = {
      ["<F2>"] = {
        function()
          vim.lsp.buf.rename()
        end,
        "Smart rename"
      },
    },
    v = {
      ["<Leader>rx"] = {
        function()
          vim.lsp.buf.rename()
        end,
        "Smart rename"
      }
    },
    n = {
      ["<Leader>rx"] = {
        function()
          vim.lsp.buf.rename()
        end,
        "Smart Rename",
      },
      ["<Leader>gj"] = {
        function()
          require("gitsigns").next_hunk()
        end,
        "Next hunk",
      },
      ["<Leader>gk"] = {
        function()
          require("gitsigns").prev_hunk()
        end,
        "Prev hunk",
      },
      ["<Leader>gs"] = {
        function ()
          require("gitsigns").stage_hunk()
        end,
        "Stage hunk",
      },
      ["<Leader>gu"] = {
        function()
          require("gitsigns").undo_stage_hunk()
        end,
        "Undo stage hunk",
      },
      ["<Leader>gp"] = {
        function()
          require("gitsigns").preview_hunk()
        end,
        "Preview hunk"
      },
    }
  }
}

return M
