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

	BancoRegistro bancoregistro(
		.addrRa(addrRa), 
		.addrRb(addrRb), 
		.datOutRa(datOutRa), 
		.datOutRb(datOutRb), 
		.addrW(addrW), 
		.datW(datW), 
		.RegWrite(RegWrite), 
		.clk(clk), 
		.rst(rst)
	);
	
	// Display()
	
	//display display();

endmodule