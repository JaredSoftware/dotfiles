local M = {}

function M.cowboy()
  ---@type table?
  local id = nil
  local count = 0
  local timer = vim.loop.new_timer()

  local function reset_count()
    count = 0
  end

  for _, key in ipairs({ "h", "j", "k", "l", "+", "-" }) do
    vim.keymap.set("n", key, function()
      if vim.v.count > 0 then
        count = 0
      end
      count = count + 1
      if count >= 10 then
        if not id then
          id = vim.notify("Hold it cowboy", vim.log.levels.WARN, {
            icon = " ",
            on_close = function()
              id = nil
            end,
          })
        end
      else
        if id and vim.notify_close then
          vim.notify_close(id)
          id = nil
        end
        timer:start(2000, 0, reset_count)
      end
      return key
    end, { expr = true, silent = true })
  end
end

return M
