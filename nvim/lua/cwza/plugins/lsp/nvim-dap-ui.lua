return {
    "rcarriga/nvim-dap-ui",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        dapui.setup()
        dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end

        local keymap = vim.keymap
        keymap.set("n", "<leader>dd", function()
            dapui.toggle()
        end, { desc = "Toggle debugger ui" })
    end,
}
