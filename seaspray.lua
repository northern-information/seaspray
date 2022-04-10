function init()
  seaspray = screen.load_png("/home/we/dust/code/seaspray/seaspray.png")
  screen_dirty = true
  redraw_clock_id = clock.run(redraw_clock)
end

function redraw_clock()
  while true do
    clock.sleep(1/15)
    if screen_dirty then
      redraw()
      screen_dirty = false
    end
  end
end

function redraw()
  screen.clear()
  screen.display_image_region(seaspray, 0, 0, 8, 8, 0, 0)
  screen.update()
end

function r()
  norns.script.load(norns.state.script)
end

function cleanup()
  clock.cancel(redraw_clock_id)
end