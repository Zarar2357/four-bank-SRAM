`include "../sram6T/sram6T.v"

module word4bitsram (
    input  wl,       // Word line=1 read and write enable wl=0 read write disable
    input  read,     // 1 = Read, 0 = Write
    input  [3:0]bl,       // Bit line
    input  [3:0]blb,      // bit line Complement
    output [3:0]out       // Read output
);

    sram6T sram0(.wl(wl),.read(read),.bl(bl[0]),.blb(blb[0]),.out(out[0]));

    sram6T sram1(.wl(wl),.read(read),.bl(bl[1]),.blb(blb[1]),.out(out[1]));

    sram6T sram2(.wl(wl),.read(read),.bl(bl[2]),.blb(blb[2]),.out(out[2]));

    sram6T sram3(.wl(wl),.read(read),.bl(bl[3]),.blb(blb[3]),.out(out[3]));

endmodule