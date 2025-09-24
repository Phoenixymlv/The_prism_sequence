---@diagnostic disable: undefined-global

function love.conf(t)
    t.identity = "the_prism_sequence"      -- Save directory name
    t.appendidentity = false               -- Search for files in source directory before save directory
    t.version = "11.5"                     -- LOVE version
    t.console = false                      -- Attach console (Windows)
    t.accelerometerjoystick = true         -- Enable accelerometer as joystick (mobile)
    t.externalstorage = false              -- Enable external storage (Android)
    t.gammacorrect = false                 -- Enable gamma-correct rendering

    t.audio.mixwithsystem = true           -- Keep background music playing (mobile)

    t.window.title = "The Prism Sequence"  -- Window title
    t.window.icon = nil                    -- Filepath to window icon
    t.window.width = 1280                  -- Window width
    t.window.height = 720                  -- Window height
    t.window.borderless = false            -- No window border
    t.window.resizable = true              -- Allow window resizing
    t.window.minwidth = 1                  -- Minimum window width
    t.window.minheight = 1                 -- Minimum window height
    t.window.fullscreen = false            -- Enable fullscreen
    t.window.fullscreentype = "desktop"    -- Fullscreen type: "desktop" or "exclusive"
    t.window.vsync = 1                     -- Enable vsync
    t.window.msaa = 2                      -- Multisample anti-aliasing
    t.window.depth = nil                   -- Depth buffer bits
    t.window.stencil = nil                 -- Stencil buffer bits
    t.window.display = 1                   -- Display index
    t.window.highdpi = false               -- Enable high-dpi mode
    t.window.x = nil                       -- Window X position
    t.window.y = nil                       -- Window Y position

    t.modules.audio = true                 -- Enable audio module
    t.modules.data = true                  -- Enable data module
    t.modules.event = true                 -- Enable event module
    t.modules.font = true                  -- Enable font module
    t.modules.graphics = true              -- Enable graphics module
    t.modules.image = true                 -- Enable image module
    t.modules.joystick = true              -- Enable joystick module
    t.modules.keyboard = true              -- Enable keyboard module
    t.modules.math = true                  -- Enable math module
    t.modules.mouse = true                 -- Enable mouse module
    t.modules.physics = false              -- Disable physics module
    t.modules.sound = true                 -- Enable sound module
    t.modules.system = true                -- Enable system module
    t.modules.thread = true                -- Enable thread module
    t.modules.timer = true                 -- Enable timer module
    t.modules.touch = true                 -- Enable touch module
    t.modules.video = true                 -- Enable video module
    t.modules.window = true                -- Enable window module
end