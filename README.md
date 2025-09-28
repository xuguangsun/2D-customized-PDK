# 2D-customized-PDK
An open-source customized Process Design Kit (PDK) for 2D-material-based devices and circuits. This repository provides parameterized models, compact device descriptions, physical verification files, parasitic extraction files, technology files and benchmark scripts tailored for 2D semiconductors, enabling design–technology co-optimization (DTCO) and circuit prototyping with emerging 2D materials.
<img width="897" height="865" alt="image" src="https://github.com/user-attachments/assets/d41f87fb-44d3-44fa-9ae8-bb63f81ff24e" />
/technology file, layer maps, DRC rules, tech documentation
/models # SPICE / Verilog-A device models, model cards
/lib # .lib timing/power characterization files
/cells/standard_cells # LEF/GDS/Verilog for standard cells
/verification # DRC/LVS/PEX run decks & example reports
/flows # Automation scripts for RTL->GDS flows (OpenROAD / industrial templates)
/examples # Example designs (1k SRAM, 4-bit ALU, RISC-V toy) and runlogs
/scripts # Utilities: converters, sanity checks, plotting, parsing
/benchmarks # Benchmark traces, CSV/JSON of simulation results
