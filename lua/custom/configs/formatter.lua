local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    },
    html = {
      require("formatter.filetypes.html").prettier  -- Add HTML formatter
    },
    css = {
      require("formatter.filetypes.css").prettier   -- Add CSS formatter
    },
    javascriptreact = {
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote"},
          stdin = true
        }
      end
    },
    jsx = {
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote"},
          stdin = true
        }
      end
    },
  }
}

vim.api.nvim_create_autocmd({"BufWritePost"} , {
  command = "FormatWriteLock"
})
return M
