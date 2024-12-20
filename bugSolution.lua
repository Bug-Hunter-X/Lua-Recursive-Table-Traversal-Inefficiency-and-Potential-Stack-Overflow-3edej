local function foo(t)
  local queue = {}
  table.insert(queue, t)

  while #queue > 0 do
    local current = table.remove(queue, 1)
    for k, v in pairs(current) do
      if type(v) == "table" then
        table.insert(queue, v)
      end
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)

--This iterative solution avoids recursive function calls,
--making it significantly more efficient for large and deep tables and preventing stack overflow issues.