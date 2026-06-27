-- Import default programs configuration --
local default_programs = require ("config/default_programs")

-- Set "Windows" key as main modifier --
local mainMod = "SUPER"

-- Set close window keybind --
local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())

-- Default programs keybinds --
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(default_programs.terminal))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(default_programs.menu .. " -show drun"))

-- Window navigation keybinds --
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "d" }))

-- Window arrangement keybinds --
hl.bind(mainMod .. " + mouse:274", hl.dsp.window.drag(), { mouse = true})
