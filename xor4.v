module xor4 (
    input a, b, c, d,//Inputs taken from the testbench.
    output y//Output will get drived to the testbench.
);

assign y = a ^ b ^ c ^ d; //Normal xor of 4 inputs.

endmodule
