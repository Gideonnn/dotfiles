

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

function drawPoint(x, y)
  local point = hs.canvas.new{x=x, y=y, w=100, h=100}
  point[1] = {
    type = "circle",
    action = "fill",
    fillColor = {["red"]=1,["blue"]=0,["green"]=0,["alpha"]=1},
    radius = 50
  }
  point:show()
end

function showAnchor(x, y)
  local circleSize = 30
  local textSize = 18
  local canvasRect = {x = x - circleSize/2, y = y - circleSize/2, w = circleSize, h = circleSize}
  local canvas = hs.canvas.new(canvasRect)
  canvas:appendElements({
    type = "circle",
    action = "fill",
    fillColor = {red = 1},
  })
  canvas:appendElements({
    type = "text",
    text = "1",
    textColor = {white = 1},
    textSize = textSize,
    textAlignment = "center",
    frame = {x = 0, y = 4, w = circleSize, h = textSize}
  })
  canvas:show()
  hs.timer.doAfter(2, function() canvas:delete(.5) end)
end


local windowFrame = hs.window.desktop():frame()
showAnchor(windowFrame.w/2, windowFrame.h/2)


-- Bind hotkeys for resizing windows
hs.hotkey.bind({ "alt","shift", "ctrl", "cmd" }, "h", resizeVertically(50))
hs.hotkey.bind({ "alt","shift", "ctrl", "cmd" }, "t", resizeVertically(-50))
hs.hotkey.bind({ "alt","shift", "ctrl", "cmd" }, "left", resizeHorizontally(-75))
hs.hotkey.bind({ "alt","shift", "ctrl", "cmd" }, "right", resizeHorizontally(75))
hs.hotkey.bind({ "alt","shift", "ctrl", "cmd" }, "", resizeHorizontally(75))
