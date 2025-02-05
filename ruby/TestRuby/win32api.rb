#!c:/ruby/bin/ruby.exe
require 'Win32API'

#取到API 函数GetCursorPos
getCursorPos = Win32API.new("user32", "GetCursorPos", ['P'], 'V')

#使用string来分配空间，存储两个LONG
lpPoint = " " * 8 # store two LONGs
getCursorPos.Call(lpPoint)

#unpack在这里终于有了用途
x, y = lpPoint.unpack("LL") # get the actual values

print "x: ", x, "\n"
print "y: ", y, "\n"

ods = Win32API.new("kernel32", "OutputDebugString", ['P'], 'V')
ods.Call("Hello, World\n")

GetDesktopWindow = Win32API.new("user32", "GetDesktopWindow", [], 'L')
GetActiveWindow = Win32API.new("user32", "GetActiveWindow", [], 'L')

SendMessage = Win32API.new("user32", "SendMessage", ['L'] * 4, 'L')
SendMessage.Call GetDesktopWindow.Call, 274, 0xf140, 0
