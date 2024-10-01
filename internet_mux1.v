module internet_mux1(
    input [3:0] A, B, C, D, 
    input Enable,
    input [1:0] Sel,
    output [3:0] Y 
);

assign Y = Enable ? (
        (~Sel[0] && ~Sel[1]) ? A : 
        (Sel[0] && ~Sel[1]) ? B : 
        (~Sel[0] &&  Sel[1]) ? C :
        (Sel[0] && Sel[1]) ? D : 
        4'b0000  
    ) : 4'b0000;

    

endmodule 

        