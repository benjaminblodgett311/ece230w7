module top (
	input [15:0] sw,
    input btnl, btnu, btnc, btnd, btnr,
	output [15:0] led
);
    wire [3:0] previous;

	internet_mux1 Obama(
		.A(sw[3:0]),
		.B(sw[7:4]),
        .C(sw[11:8]),
        .D(sw[15:12]),
        .Y(previous),
        .Sel({btnu,btnl}),
        .Enable(btnc)
	);

    internet_demux Kamala(
        .muxOutput(previous),
        .Sel({btnr,btnd}),
        .Enable(btnc),
        .Lib(led[3:0]),
        .FD(led[7:4]),
        .School(led[11:8]),
        .Ribs(led[15:12])
	);

    endmodule