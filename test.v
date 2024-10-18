`timescale 1ns/100ps

module test();
    wire [15:0] led;
    reg [15:0] sw;
    reg btnl, btnu, btnd, btnr, btnc;

    top uut(
        .led(led),
        .sw(sw),
        .btnl(btnl),
        .btnu(btnu),
        .btnd(btnd),
        .btnr(btnr),
        .btnc(btnc)
    );

    reg [4:0] i;

    initial begin
        $dumpvars(0, test);
        sw = 'b0110_1010_0101_1001;
        btnl = 0;
        btnu = 0;
        btnd = 0;
        btnr = 0;
        btnc = 0;
        #10;
        btnc = 1;
        for (i = 0; i < 16; i = i + 1) begin
            #10;
            btnl = i[0];
            btnu = i[1];
            btnd = i[2];
            btnr = i[3];
        end
        #10 $finish;
    end
endmodule
