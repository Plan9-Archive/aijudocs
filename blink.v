`default_nettype none

module blink(
	output reg [5:0] led
);

	wire [3:0] fclkclk;
	wire clk = fclkclk[0];

	reg [31:0] ctr;

	localparam PERIOD = 50000000;

	initial begin
		ctr = 0;
		led = 6'b000001;
	end

	always @(posedge clk)
		if(ctr == PERIOD - 1) begin
			ctr <= 0;
			led <= {led[4:0], led[5]};
		end else
			ctr <= ctr + 1;

	(* DONT_TOUCH="YES" *) PS7 PS7_i(
		.FCLKCLK(fclkclk)
	);

endmodule
