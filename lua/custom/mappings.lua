---@type MappingsTable
local M = {}

M.dap = {
  plugin=true,
  n = {
    ["<leader>db"]= {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add Breakpoint at line"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the dubugger"
    }
  },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
