module Lab04 (addrA, addrB, addrw, datw, Regwrite, clk, rst, SSeg, An);

// Definir I/O
	input [3:0] addrA;
	input [3:0] addrB;
	input [3:0] addrw;
	input [3:0] datw;
	input clk;
	input rst;
	input Regwrite;

	output [0:6] SSeg;
	output [3:0] An;


// Definir Wire(datA, datB)/Registros
	wire [3:0] datA;
	wire [3:0] datB;

// Instanciar modulos
	

BancoRegistro #(3,4) registro(
	.addrRa(addrA), 
	.addrRb(addrB), 
	.addrW(addrw), 
	.datW(datw), 
	.RegWrite(Regwrite),
	.clk(clk), 
	.rst(rst), 
	.datOutRa(datA), 
	.datOutRb(datB));
	
display dp(
	.numA(datA),
	.numB(datB),
	.clk(clk), 
	.rst(rst), 
	.sseg(SSeg), 
	.an(An));
	
endmodule