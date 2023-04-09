-- Resize a window to a specified size
function resizeWindow(win, size)
  local f = win:frame()
  f.w = size.w
  f.h = size.h
  win:setFrame(f)
end

-- Center a window on a specified point, taking into account the macOS menu bar
function centerOnPoint(win, x, y)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  local menuBarHeight = 22  -- the height of the menu bar on macOS Ventura

  f.x = x - f.w/2
  f.y = y - f.h/2 + menuBarHeight
  win:setFrame(f)
end

-- Resize a window vertically
function resizeVertically(step)
  return function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.h = f.h + step
    win:setFrame(f)

    -- Center the window on the center of the screen
    centerOnPoint(win, max.w/2, max.h/2)
  end
end

-- Resize a window horizontally
function resizeHorizontally(step)
  return function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.w = f.w + step
    win:setFrame(f)

    -- Center the window on the center of the screen
    centerOnPoint(win, max.w/2, max.h/2)
  end
end

-- Bind hotkeys for resizing windows
hs.hotkey.bind({ "alt","shift", "ctrl", "cmd" }, "up", resizeVertically(50))
hs.hotkey.bind({ "alt","shift", "ctrl", "cmd" }, "down", resizeVertically(-50))
hs.hotkey.bind({ "alt","shift", "ctrl", "cmd" }, "left", resizeHorizontally(-75))
hs.hotkey.bind({ "alt","shift", "ctrl", "cmd" }, "right", resizeHorizontally(75))
