module and_gate (
    input a,
    input b,//Inputs a and b are taken from the Testbench
    output y//Output y is driven to the testbench,So we wrote "wire" infront of y in the testbench code as it will be driven from DUT file to the testbench file.
);

assign y = a & b; // simple AND logic

endmodule	
