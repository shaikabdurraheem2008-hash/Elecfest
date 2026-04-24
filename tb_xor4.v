`timescale 1ps/1ps

module tb_xor4;

reg a, b, c, d;
wire y;
reg expected;

// Instantiate DUT
xor4 uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .y(y)
);

initial begin
    $dumpfile("xor4.vcd");
    $dumpvars(0, tb_xor4);

    // Test all combinations (16 cases)
    repeat (16) begin
        {a, b, c, d} = $random; //When we do this, inputs change,DUT reacts instantly,and y updates 
        

        expected = a ^ b ^ c ^ d;
	
        if (y !== expected) // why !== instead of !=, != compares only 0 and 1 (ignores unknows) but !== (compares 0,1,x,z) exactly. where x is unknown and z is high impedance.

// If y or expected has x (or) z then : (y!=expected) can give "unreliable
// results",That means we might miss a real match.
// But (y!==expected) checks "bit-by-bit" exact match, including 0 vs 1-->
// mismatch, 1 vs x --> mismatch, 0 vs z --> mismatch. So it never hide
// errors. 
            $display("Mismatch! inputs=%b%b%b%b y=%b expected=%b",
                      a,b,c,d,y,expected);
        else
            $display("Correct: inputs=%b%b%b%b y=%b",
                      a,b,c,d,y);
	#4;
    end

    $finish;
end

endmodule
