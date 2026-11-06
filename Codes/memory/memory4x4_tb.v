module memory4x4_tb ();
    reg read;
    wire [3:0]wl;
    reg [3:0]dataIn;
    reg [1:0]address;
    wire [3:0]dataOut;
    memory4x4 dut(.read(read),.wl(wl),.dataIn(dataIn),.address(address),.dataOut(dataOut));

    initial begin
        $monitor("read = %b, wl = %b, dataIn = %b, address = %b, dataOut = %b", read, wl, dataIn, address, dataOut);
        $dumpfile("memory_sim.vcd");
        $dumpvars(0,memory4x4_tb);
        read=1; address=4'b00;dataIn=4'b0000;
        #10 read=0; address=4'b00;dataIn=4'b0010;
        #10 read=1; address=4'b00;dataIn=4'b0100;
        #10 $finish;
    end
    
endmodule
