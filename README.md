# Added-default_nettype-using-TCL-script
The default_nettype error typically occurs in verilog when the default type of a net (such as wire ,reg etc) is not specified  and the synthesis tool like vivado encounters an unknown or undefined type for a net. This can lead to errors during the synthesis or simulation process.
To fix this error we can explicitly specify the default_nettype in our verilog code. This ensures that all untyped identifiers are treated as a specific type, typically wire . We can specify this at the top of our verilog code file `default_nettype wire.

