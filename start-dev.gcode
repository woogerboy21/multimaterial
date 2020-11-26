; verify hot end is at proper filament temperature
M117 Preheating Hotend... 
M104 S[first_layer_temperature] ; set hot end heat temp
M109 S[first_layer_temperature] ; wait for hot end to heat up

; verify build surface layout
M117 Preparing...
G28 ; home
;G29 ; probe bed

; move tool head to safe location
G90 ; set absolute positioning for all axes
G0 X208 F5000; move tool head to safe X position
M400 ; wait for move commands to complete
G0 Y208 F5000; move tool head to safe Y position
M400 ; wait for move commands to complete
G0 Z5 F5000 ; move tool head to safe Z position
M400 ; wait for move commands to complete

; load filament
M117 Loading filament...
M106 ; turn fan on
M82 ; set absolute positioning for the extruder
G92 E0 ; reset filement position
G0 E250 F6000 ; quickly load filament till close to heat break
M400 ; wait for move commands to complete
M83 ; set relative positioning for extruder
G0 E15 ; extrude filament through heat break
G92 E0 ; reset filament position

M117 Ready to print...
