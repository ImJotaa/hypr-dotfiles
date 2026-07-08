-- ImJotaa Hyprland Monitor Configuration

------------------
---- MONITORS ----
------------------

-- BenQ Zowie
hl.monitor({
	output		= "DP-1",
	mode		= "1920x1080@240"
	position	= "auto-left",
	scale		= "auto",
})

-- Philips TV
hl.monitor({
	output		= "HDMI-A-1",
	mode		= "preferred",
	position	= "auto-right",
	scale		= "auto",
})

-------------------------
---- WORKSPACE RULES ----
-------------------------

-- DP-1: workspaces 1 - 5
hl.workspace_rule({
	workspace	= "1",
	monitor		= "DP-1",
	default		= "true",
	persistent	= "true",
})

for i = 2, 5 do
	hl.workspace_rule({ 
		workspace	= tostring(i), 
		monitor		= "DP-1", 
	})
end


-- HDMI-A-1: workspaces 6 - 10
hl.workspace_rule({
	workspace	= "6",
	monitor		= "HDMI-A-1",
	default		= "true",
	persistent	= "true",
})

for i = 7, 10 do
	hl.workspace_rule({
		workpace	= tostring(i),
		monitor		= "HDMI-A-1",
	})
end
