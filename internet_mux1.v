module internet_mux1(
    input [3:0] A, B, C, D, 
    input Enable,
    input [1:0] Sel,
    output [3:0] Y 
);

assign Y = Enable ? (
        (Sel == 2'b00) ? A :
        (Sel == 2'b01) ? B :
        (Sel == 2'b10) ? C :
        (Sel == 2'b11) ? D :
        4'b0000
) : 4'b0000;

    

endmodule 

        