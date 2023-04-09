; Started with stock Prusa Mini start gcode and modified to suit

G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S170 ; set extruder temp for bed leveling
M140 S[first_layer_bed_temperature] ; set bed temp
M109 R170 ; wait for bed leveling temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
G28 ; home all without mesh bed level
G29 ; mesh bed leveling 
M104 S[first_layer_temperature] ; set extruder temp
G92 E0
G1 Z3 F720
M109 S[first_layer_temperature] ; wait for extruder temp

; intro line
G1 X170 F1000
G1 Z0.2 F720
G1 X110 E8 F900
G1 X40 E10 F700
G92 E0

M221 S95 ; set flow