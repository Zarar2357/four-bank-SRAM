`include "../word4bitSram/word4bitsram.v"
module memory4x4 (
    input read,
    output reg [3:0]wl,
    input [3:0]dataIn,
    input [1:0]address,
    output reg [3:0]dataOut
);

// word4bitsram mxx(wl, read,[3:0]bl,[3:0]blb,[3:0]out);
wire [3:0]dataInBar=~dataIn;
wire [3:0] out0,out1,out2,out3;
word4bitsram m0(wl[0], read,dataIn,dataInBar,out0);
word4bitsram m1(wl[1], read,dataIn,dataInBar,out1);
word4bitsram m2(wl[2], read,dataIn,dataInBar,out2);
word4bitsram m3(wl[3], read,dataIn,dataInBar,out3);
always @(*) begin
    case (address)
        2'b00:begin
            wl=4'b0001;
            dataOut=out0;
        end
        2'b01:begin
            wl=4'b0010;
            dataOut=out1;
        end
        2'b10:begin
            wl=4'b0100;
            dataOut=out2;
        end
        2'b11:begin
            wl=4'b1000;
            dataOut=out3;
        end 
        default:begin
            wl=4'b0000;
            dataOut=4'bxxxx;
        end 
    endcase
end
endmodule