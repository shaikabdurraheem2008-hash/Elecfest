`timescale 1ps/1ps // 1ps--> unit of delay, and 1ps --> Smallest resolution means,If we wrote #10 it means wait for 10 picoseconds

module tb_and;

reg a, b; // reg a,b; are the inputs to DUT file
wire y; // This is DUT output, here we use wire because output is driven by DUT continuously
reg expected;//This is your reference output,used to compare with the actual output

// Instantiate DUT (Very Important)
and_gate uut (
    .a(a),
    .b(b),
    .y(y)
);
// DUT Instantiate means, Here you are placing your AND gate inside the
// testbench, and connecting signals like Testbench's a to DUT's a. Similarly
// for b,y. 
initial begin
    $dumpfile("and.vcd");//Creates a .vcd file and stores signal changes over time,This is what GTKWave reads.
    $dumpvars(0, tb_and); // This stores "everything" inside tb_and, including y,expected,a,b.All of these go into the .vcd file. 

    a=0;b=0;
    expected =a&b;
    #4; //This is delay, means wait for 4x1ps that will be 4 picoseconds

    a=0;b=1;
    expected = a&b;
    #4;

    a=1;b=0;
    expected =a&b;
    #4;

    a=1;b=1;
    expected=a&b;
    #4;

    $finish;
end // Ends simulation,without this your simulation runs forever.

endmodule
