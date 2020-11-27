M117 Finalizing print...

; life hotend from printed part
M83 ; set relative positioning for extruder
G0 E-1 ; retract small amount of filament
G91 ; set relative positioning for all axes
G0 Z10 ; lift tool away from bed objects
M400 ; wait for move commands to complete

M117 Unloading filament...

; move tool head to safe location
G90 ; set absolute positioning for all axes
G0 X208 F5000; move tool head to safe X position
M400 ; wait for move commands to complete
G90 ; set absolute positioning for all axes
G0 Y208 F5000; move tool head to safe Y position
M400 ; wait for move commands to complete

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
; return printer to safe condition
M104 S0 ; turn off hotend temperature
M140 S0 ; turn off bed temperature
M84 ; disable stepper motors
M107 ; disable fans
M117 Print Complete