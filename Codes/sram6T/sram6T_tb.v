module sram6T_tb ();
    reg wl;       // Word line=1 read and weite enable wl=0 read write disable
    reg read;     // 1 = Read, 0 = Write
    reg bl;       // Bit line
    reg blb;      // bit line Complement
    wire  out;     // Read output
    sram6T dut(.wl(wl),.read(read),.bl(bl),.blb(blb),.out(out));

    initial begin
        $monitor("wl=%b, read=%b, bl=%b, blb=%b, out=%b", wl, read, bl, blb, out);
        $dumpfile("sram6T_sim.vcd");
        $dumpvars(0,sram6T_tb);
            wl=0; 
        #10 wl=1; read=0; bl=0; blb=1;
        #10 wl=1; read=1; 
        #10 wl=1; read=1; bl=1; blb=0;
        #10 wl=1; read=1; bl=1; blb=0;
        #10 wl=1; read=0; bl=1; blb=0;
        #10 wl=1; read=1; 
        #10 wl=1; read=1; bl=0; blb=1;

        #20 $finish;
    end
    
endmodule