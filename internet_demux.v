module internet_demux(
    input [3:0] muxOutput,
    input Enable,
    input [1:0] Sel,
    output [3:0] Lib, FD, School, Ribs
);



assign Lib =  (Enable && (Sel == 2'b00)) ? muxOutput : 4'b0000;
assign FD = (Enable && (Sel == 2'b01)) ? muxOutput : 4'b0000;
assign School = (Enable && (Sel == 2'b10)) ? muxOutput : 4'b0000;
assign Ribs = (Enable && (Sel == 2'b11)) ? muxOutput : 4'b0000 ;


    

endmodule 
