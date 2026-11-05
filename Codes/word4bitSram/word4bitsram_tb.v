module word4bitsram_tb ();
    reg wl;     
    reg read;     
    reg [3:0]bl;       
    reg [3:0]blb;      
    wire [3:0]out;
    word4bitsram dut(.wl(wl),.read(read),.bl(bl),.blb(blb),.out(out));
    initial begin
        $monitor("wl=%b, read=%b, bl=%b, blb=%b, out=%b", wl, read, bl, blb, out);
        $dumpfile("word4bitsram_sim.vcd");
        $dumpvars(0,word4bitsram_tb);
            wl=0; 
        #10 wl=1; read=0; bl=4'b0101; blb=4'b1010;
        #10 read=1;
        #10 bl=4'b1111; blb=4'b0000;
        #10 read=0;
        #10 $finish;
    end
endmodule