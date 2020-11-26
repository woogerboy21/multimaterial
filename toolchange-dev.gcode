M117 Unloading filament...

; lift hotend from printed part
M83 ; turn relative positioning for the extruder
G0 E-1 ; retract small amount of filament
G91 ; set relative positioning for all axes
G0 Z10 ; lift tool away from bed objects
M400 ; wait for move commands to complete

; move tool head to safe location
G90 ; set absolute positioning for all axes
G0 X208 F5000; move tool head to safe X position
M400 ; wait for move commands to complete
G90 ; set absolute positioning for all axes
G0 Y208 F5000; move tool head to safe Y position
M400 ; wait for move commands to complete

; return hotend to proper z height
G91 ; set relative positioning for all axes
G0 Z-10 ; return tool head to proper z height

; unload filament
M83 ; turn relative positioning for the extruder
G0 E-10 F10000 ; quickly retract the filament to shape it
M400 ; wait for move commands to complete
G0 E-40 F600; slowly allow it to cool
M400 ; wait for move commands to complete
G0 E50 F10000 ; quickly ram the filament to shape it
M400 ; wait for move commands to complete
G0 E-10 F10000 ; quickly retract the filament to shape it
M400 ; wait for move commands to complete
G0 E-40 F600; slowly allow it to cool
M400 ; wait for move commands to complete
G0 E49 F10000 ; quickly ram the filament to shape it
M400 ; wait for move commands to complete
G0 E-10 F10000 ; quickly retract the filament to shape it
M400 ; wait for move commands to complete
G0 E11 F10000 ; quickly ram the filament to shape it
M400 ; wait for move commands to complete
G0 E-10 F10000 ; quickly retract the filament to shape it
M400 ; wait for move commands to complete
G0 E11 F10000 ; quickly ram the filament to shape it
M400 ; wait for move commands to complete
G0 E-10 F10000 ; quickly retract the filament to shape it
M400 ; wait for move commands to complete
G0 E-40 F100; slowly allow it to cool
M400 ; wait for move commands to complete
G0 E-120 F10000 ; quickly retract the filament to shape it
M400 ; wait for move commands to complete
G0 E40 F1000 ; quickly ram the filament to shape it
M400 ; wait for move commands to complete
G0 E-40 F1000 ; quickly retract the filament to shape it
M400 ; wait for move commands to complete
G0 E40 F1000 ; quickly ram the filament to shape it
M400 ; wait for move commands to complete
G0 E-80 F5000 ; quickly retract it back out
M400 ; wait for move commands to complete
G0 E-60 F5000 ; quickly retract it back out
M400 ; wait for move commands to complete

; press extruder motor select button
M117 Changing Extruder...
M18 E ; disable extruder motor
G4 S1 ; dwell
M107 ; turn off fan
G4 S7 ; dwell
G90 ; set absolute positioning for all axes
G0 X215.5 F2000 ; press button
M400 ; wait for move commands to complete
G90 ; set absolute positioning for all axes
G0 X208 F5000 ; move tool head away from button
M400 ; wait for move commands to complete

; load filament
M117 Loading filament
M106 ; turn fan on
M82 ; set absolute positioning for the extruder
G92 E0 ; reset filement position
G0 E250 F6000 ; quickly load filament till close to heat break
M400 ; wait for move commands to complete
M83 ; set relative positioning for extruder
G0 E15 ; extrude filament through heat break
G92 E0 ; reset filament position

M117 Printing...