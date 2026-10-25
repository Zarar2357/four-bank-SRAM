`timescale 1ns / 1ps

module sram6T (
    input  wl,       // Word line=1 read and weite enable wl=0 read write disable
    input  read,     // 1 = Read, 0 = Write
    input  bl,       // Bit line
    input  blb,      // bit line Complement
    output reg  out       // Read output
);

    reg q;                // Stored bit
    wire qbar;            // Stored bit complement

    assign qbar = ~q;

    // Storage behavior
    // WL = 1 and read = 0: Write
    //write
    always @(*) begin
        if(wl=0) q=1;


        if (wl && !read) begin
            if (bl && !blb)
                q = 1'b1;
            else if (!bl && blb)
                q = 1'b0;
        end
    end
    // WL = 1 and read = 1: Read
    // Read
    always @(*) begin
        if (wl && read)
            out = q;
        else
            out = 1'b0;
    end

endmodule