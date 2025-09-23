---@diagnostic disable: undefined-global

function love.conf(t)
    t.identity = "the_prism_sequence"      -- Save directory name
    t.version = "11.5"                     -- LOVE version
    t.console = false                      -- Attach console (Windows)
    t.window.title = "The Prism Sequence"  -- Window title
    t.window.width = 1280                  -- Window width
    t.window.height = 720                  -- Window height
    t.window.resizable = true              -- Allow window resizing
    t.window.vsync = 1                     -- Enable vsync
    t.window.msaa = 2                      -- Multisample anti-aliasing
    t.modules.audio = true                 -- Enable audio module
    t.modules.physics = false              -- Disable physics module
end