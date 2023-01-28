local status, nvim_cursorline = pcall(require, "nvim-cursorline")
if not status then
    vim.notify("Connot find nvim-cursorline")
  return
end

nvim_cursorline.setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}

