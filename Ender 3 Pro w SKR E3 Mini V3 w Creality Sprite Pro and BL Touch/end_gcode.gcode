; Started with stock Prusa Mini end gcode and modified to suit
G1 E-1 F2100 ; retract
{if max_layer_z < max_print_height}G1 Z{z_offset+min(max_layer_z+2, max_print_height)} F720 ; Move print head up{endif}
G1 X178 Y178 F4200 ; park print head
{if max_layer_z < max_print_height}G1 Z{z_offset+min(max_layer_z+30, max_print_height)} F720 ; Move print head further up{endif}
G4 ; wait
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
M107 ; turn off fan
M221 S100 ; reset flow
M900 K0 ; reset LA
M84 ; disable motors
; max_layer_z = [max_layer_z]