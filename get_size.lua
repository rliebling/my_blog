-- get_size.lua
local terminal = "com.superlogical.terminal"
local size_info = rex.block.call(terminal, "size", {})

print("--- Tab Size Details ---")
print("size: " .. rex.inspect(size_info))
print("Columns: " .. size_info.cells.columns)
print("Rows:    " .. size_info.cells.rows)

