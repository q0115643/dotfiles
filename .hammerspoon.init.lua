hs.hotkey.bind({'control'}, 'c', function()
  local inputEnglish = "com.apple.keylayout.ABC"

  local input_source = hs.keycodes.currentSourceID()
  
  if not (input_source == inputEnglish) then
      hs.eventtap.keyStroke({}, 'right')
      hs.keycodes.currentSourceID(inputEnglish)
      hs.eventtap.keyStroke({}, 'escape')
  end
  
  hs.eventtap.keyStroke({}, 'escape')
end)

