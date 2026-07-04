local mainMod = "SUPER"
local EDGE = 20  -- Margin to apply snapping
local GAP_OUT = 15
local GAP_CENTER = 5
local BAR_ZONE = 56  -- hueco reservado arriba para la waybar (46px + margen/aire)

local function place(x, y, w, h)
    hl.dispatch(hl.dsp.window.resize({ x = math.floor(w), y = math.floor(h), relative = false }))
    hl.dispatch(hl.dsp.window.move({ x = math.floor(x), y = math.floor(y), relative = false }))
end

local CORNER = 250   -- franja desde arriba/abajo que cuenta como esquina

local function snap_on_release()
    local cur = hl.get_cursor_pos()
    local mon = hl.get_monitor_at_cursor()
    if cur == nil or mon == nil then return end

    local w = mon.width  / mon.scale
    local h = mon.height / mon.scale

    local near_left  = (cur.x - mon.x) <= EDGE
    local near_right = ((mon.x + w) - cur.x) <= EDGE
    if not (near_left or near_right) then return end

    -- Columna izquierda o derecha
    local col_x = near_left and (mon.x + GAP_OUT) or (mon.x + w / 2 + GAP_CENTER)
    local col_w = w / 2 - GAP_OUT - GAP_CENTER

    -- Área utilizable (sin el hueco de la waybar)
    local top = mon.y + BAR_ZONE   -- borde superior utilizable (bajo la barra)
    local uh  = h - BAR_ZONE       -- alto utilizable

    local rel_y = cur.y - top      -- distancia desde el borde superior utilizable

    if rel_y <= CORNER then
        -- cuarto superior
        place(col_x, top + GAP_OUT, col_w, uh / 2 - GAP_OUT - GAP_CENTER)
    elseif (uh - rel_y) <= CORNER then
        -- cuarto inferior
        place(col_x, top + uh / 2 + GAP_CENTER, col_w, uh / 2 - GAP_OUT - GAP_CENTER)
    else
        -- media pantalla (franja central del borde)
        place(col_x, top + GAP_OUT, col_w, uh - 2 * GAP_OUT)
    end
end

hl.bind(mainMod .. " + mouse:274", snap_on_release, { mouse = true, release = true })
