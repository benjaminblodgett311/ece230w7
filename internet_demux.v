module internet_demux(
    input [3:0] muxOutput,
    input Enable,
    input [1:0] Sel,
    output [3:0] Lib, FD, School, Ribs
);



assign Lib =  (Enable && ~Sel[0] && ~Sel[1]) ? muxOutput : 4'b0000;
assign FD = (Enable && Sel[0] && ~Sel[1]) ? muxOutput : 4'b0000;
assign School = (Enable && Sel[0] && Sel[1]) ? muxOutput : 4'b0000;
assign Ribs = (Enable && ~Sel[0] && Sel[1]) ? muxOutput : 4'b0000 ;


    

endmodule 
