This automated logic synthesis and place-and-route script is developed in Python and Tcl, with the primary function of automatically invoking Cadence’s logic synthesis tool Genus and place-and-route tool Innovus to perform a rapid full-flow EDA design from front-end to back-end on given benchmarks.

Usage Instructions:
1.Place the benchmark described in Verilog under the Design directory. Note that the subdirectory name must be consistent with the top-level module name of the benchmark. Within it, two subdirectories should be included: RTL (Verilog description) and SDC (timing constraints), which can be modified as needed.
2.Place the standard-cell library timing simulation .lib files under LIB and LIBS/lib/max and LIBS/lib/min, to be used by Genus and Innovus, respectively.
3.Place the standard-cell library layout information and process rule LEF files under the LEF directory. If the process LEF file and the standard-cell LEF file are separate, place the process LEF file individually under the BasicLEF path.
4.In a VNC environment, run the command python Main.py. The script will automatically generate one or more new terminals (depending on the number of benchmarks under the Design directory). In each terminal, logic synthesis and place-and-route will be executed automatically.
5.When the entire EDA back-end flow completes without “significant errors,” the newly generated terminals will remain at the Innovus command line. You can then enter the command win to launch the Innovus GUI and inspect the generated back-end layout.
