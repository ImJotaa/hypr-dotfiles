hl.on("hyprland.start", function()
	hl.exec_cmd("hyprlauncher -d")
	hl.exec_cmd("waybar")
end)


local programs = {
	{ proc = "hyprlauncher", cmd = "hyprlauncher -d" },
	{ proc = "waybar", cmd = "waybar" },
}

local function launch_all()
	for _, p in ipairs(programs) do
		hl.exec_cmd(p.cmd)
	end
end

local function reload_all()
	for _, p in ipairs(programs) do
		hl.exec_cmd("pkill -x " .. p.proc .. "; sleep 0.3; " .. p.cmd)
	end
end

hl.on("hyprland.start", launch_all)
hl.bind("SUPER + SHIFT + R", reload_all)
