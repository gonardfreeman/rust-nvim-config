local dap = require("dap")

dap.adapters.lldb = {
  type = "executable",
  name = "lldb",
  port = "${port}",
}

local rust_lldb = {
  name = "Launch lldb",
  type = "lldb",
  request = "launch",
  program = function()
    return vim.fn.input("Path to executable", vim.fn.getcwd().."/","file")
  end,
  cwd = "${workspaceFolder}",
  stopOnEntry = false,
--  args = {},
  runInTerminal = false,
}

dap.configurations.rust = {
  rust_lldb,
}
