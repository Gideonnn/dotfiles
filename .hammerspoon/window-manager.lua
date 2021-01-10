local OS_TITLE_BAR_HEIGHT = 25
local GUTTER = 20

function rectFactory(gutter, osTopBarHeight)
  return function(x, y, w, h)
    return hs.geometry(x, y, w, h)
  end
end

local rect = rectFactory(GUTTER, OS_TITLE_BAR_HEIGHT)

function create3840x1600(left, center, right)
  return {
    maximize = rect(640, 80, 2560, 1440),
    bottomLeftSixth = rect(0, 800, left, 800),
    bottomCenterSixth = rect(left, 800, center, 800),
    bottomRightSixth = rect(left + center, 800, right, 800),
    leftThird = rect(0, 0, left, 1600),
    centerThird = rect(left, 0, center, 1600),
    rightThird = rect(left + center, 0, right, 1600),
    topLeftSixth = rect(0, 0, left, 800),
    topCenterSixth = rect(left, 0, center, 800),
    topRightSixth = rect(left + center, 0, right, 800)
  }
end

local zoneDefs = {
  ['3840x1600'] = create3840x1600(1120, 1280, 1440)
}

function move(direction)
  return function()
    local win = hs.window.focusedWindow()
    local winFrame = win:frame()
    
    local screen = win:screen()
    local screenFrame = screen:fullFrame()
    local screenWidth = math.floor(screenFrame.w)
    local screenHeight = math.floor(screenFrame.h)
    
    local resolution = screenWidth .. 'x' .. screenHeight
    local zones = zoneDefs[resolution]

    if zones then
      if zones[direction] then
        win:setFrame(zones[direction])
      else
        print(direction .. ' not supported on ' .. resolution);
      end
    else
      print(resolution .. ' not supported');
    end
  end
end

hs.hotkey.bind({"cmd", "alt"}, "0", move('maximize'))
hs.hotkey.bind({"cmd", "alt"}, "1", move('bottomLeftSixth'))
hs.hotkey.bind({"cmd", "alt"}, "2", move('bottomCenterSixth'))
hs.hotkey.bind({"cmd", "alt"}, "3", move('bottomRightSixth'))
hs.hotkey.bind({"cmd", "alt"}, "4", move('leftThird'))
hs.hotkey.bind({"cmd", "alt"}, "5", move('centerThird'))
hs.hotkey.bind({"cmd", "alt"}, "6", move('rightThird'))
hs.hotkey.bind({"cmd", "alt"}, "7", move('topLeftSixth'))
hs.hotkey.bind({"cmd", "alt"}, "8", move('topCenterSixth'))
hs.hotkey.bind({"cmd", "alt"}, "9", move('topRightSixth'))