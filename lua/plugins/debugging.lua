return {
  "mfussenegger/nvim-dap",
  "nvim-neotest/nvim-nio",
  "mfussenegger/nvim-dap-python",

  dependencies = {
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    local dapui = require("dapui")
    local dap = require("dap")

    require("dapui").setup()
    require("dap-python").setup()


    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end

    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end

    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end

    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end


    vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<leader>dc", dap.continue, {})
  end
}
