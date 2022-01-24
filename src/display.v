`timescale 1ns / 1ps
module display(
    input [3:0] numA,
	 input [3:0] numB,
    input clk,
    output [0:6] sseg,
    output reg [3:0] an,
	 input rst
    );



reg [3:0]bcd=0;
 
BCDtoSSeg bcdtosseg(.BCD(bcd), .SSeg(sseg));

reg [26:0] cfreq=0;
wire enable;

// Divisor de frecuecia

assign enable = cfreq[16];
assign led =enable;
always @(posedge clk) begin
  if(rst==1) begin
		cfreq <= 0;
	end else begin
		cfreq <=cfreq+1;
	end
end

reg [1:0] count =0;
always @(posedge enable) begin
		if(rst==1) begin
			count<= 0;
			an<=4'b1111; 
		end else begin 
			count<= count+1;
			an<=4'b1101; 
			case (count) 
				2'h0: begin bcd <= numA[3:0];   an<=4'b1110; end 
				2'h1: begin bcd <= numB[3:0];   an<=4'b1101; end 
				//2'h2: begin bcd <= numA[11:8];  an<=4'b1011; end 
				//2'h3: begin bcd <= numA[15:12]; an<=4'b0111; end 
			endcase
		end
end

endmodule
