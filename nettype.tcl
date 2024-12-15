# Specify the path to the Verilog file
# Written By : Ankit 
set DIR_OUTPUT  ../Encrypt/FPGA
set prj_name  PROJECT_FPGA
set bd_name design_1

set file_path "${DIR_OUTPUT}/${prj_name}/${prj_name}.gen/sources_1/bd/${bd_name}/synth/${bd_name}.v"
#set file_path "C:/VHDL_Work/Encrypt/srcs/rtl/top.v"

    # Open the file for reading
    set file_id [open $file_path r]

    # Read the entire file contents into a variable
    set file_contents [read $file_id]

    # Close the file after reading
    close $file_id

    # Add `default_nettype wire` at the top of the file
    set updated_contents "`default_nettype wire\n$file_contents"

     # Open the file for writing (this will overwrite the file)
     set file_id [open $file_path w]

     # Write the updated content back to the file
     puts $file_id $updated_contents

     # Close the file after writing
     close $file_id
     puts "Added `default_nettype wire to $file_path."