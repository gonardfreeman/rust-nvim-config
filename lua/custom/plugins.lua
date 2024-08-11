local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
          "rust-analyzer",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
    end
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
  },
  {
    "nvim-neotest/nvim-nio"
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
    },
    config = function ()
      local dap = require("dap")
      local dapui = require("dapui")

      vim.keymap.set("n", "<F8>", function() dap.continue() end, {
        desc = "continue"
      })
      vim.keymap.set("n", "<F10>", function() dap.step_over() end, {
        desc = "step over"
      })
      vim.keymap.set("n", "<F9>", function() dap.step_into() end, {
        desc = "step into"
      })
      vim.keymap.set("n", "<Leader>db", function() dap.toggle_breakpoint() end, {
        desc = "toggle breakpoint"
      })
      vim.keymap.set("n", "<Leader>dB", function() dap.set_breakpoint() end, {
        desc = "set breakpoint"
      })
      vim.keymap.set("n", "<Leader>duo", function() dapui.open() end, {
        desc = "open dapui"
      })

      dap.listeners.before.attach.dapui_config = function ()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function ()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function ()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function ()
        dapui.close()
      end

    end
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio"
    },
    config = function ()
      require("dapui").setup()
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({})
      -- nsd
    end
  },
  {
    "tpope/vim-fugitive",
  },
}

return plugins
