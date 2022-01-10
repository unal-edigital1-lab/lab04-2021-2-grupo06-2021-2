module Lab04 (addrA, addrB, addrW, datW, regWrite, clk, rst, sseg, an);

// Definir I/O
	input [3:0] addrA;
	input [3:0] addrB;
	input [3:0] addrW;
	input [3:0] datW;
	input clk;
	input rst;
	input regWrite;

	output [0:6] sseg;
	output [3:0] an;


// Definir Wire(datA, datB)/Registros
	wire [3:0] datA;
	wire [3:0] datB;

// Instanciar modulos
	
	// BancoRegistro(parametrizar/instanciar entradas)

	// Display()
	
	display Display(.num, .clk(clk), .sseg(sseg), .an(an), .rst(rst));

endmodule