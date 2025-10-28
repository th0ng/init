function _G.winbar_filepath()
  local bufnr = vim.api.nvim_win_get_buf(0)  -- Get buffer for current window
  local file_path = vim.api.nvim_buf_get_name(bufnr)
  
  if file_path == "" then
      return "[No Name]"
  end
  
  -- Use relative path for brevity, or full path with :p
  local display_path = vim.fn.fnamemodify(file_path, ":~:.")
  if display_path == "" then
      display_path = file_path
  end
  
  local modified = vim.bo[bufnr].modified and " ●" or ""
  local readonly = vim.bo[bufnr].readonly and " [RO]" or ""
  
  return "./" .. display_path .. modified .. readonly
end

-- Set winbar to use our function
vim.opt.winbar = "%{%v:lua.winbar_filepath()%}"
