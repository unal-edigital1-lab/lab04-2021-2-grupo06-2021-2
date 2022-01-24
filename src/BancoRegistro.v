	`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:28 10/12/2019 
// Design Name: 	 ferney alberto beltran
// Module Name:    BancoRegistro 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BancoRegistro #(      		 //   #( Parametros
         parameter BIT_ADDR = 8,  //   BIT_ADDR Número de bit para la dirección
         parameter BIT_DATO = 4  //  BIT_DATO  Número de bit para el dato
	)
	(
    input [BIT_ADDR-1:0] addrRa, // Dirección registro número 1
    input [BIT_ADDR-1:0] addrRb, // Dirección registro número 2
    
	 output [BIT_DATO-1:0] datOutRa, // Dato del registro 1
    output [BIT_DATO-1:0] datOutRb, // Dato del registro 2
    
	 input [BIT_ADDR:0] addrW, // Indico el registro a actualizar
    input [BIT_DATO-1:0] datW, // Indico el nuevo dato
    
	 input RegWrite, // HIGH para poder actualziar 
    input clk,
    input rst
    );

// La cantdiad de registros es igual a: 
localparam NREG = 2 ** BIT_ADDR; // Cantidad de registro 2^3 = 8
  
//configiración del banco de registro 
reg [BIT_DATO-1: 0] breg [NREG-1:0]; // Cantidad de palabra (columnas) - Cantidad de registro (filas)


assign  datOutRa = breg[addrRa];
assign  datOutRb = breg[addrRb];

always @(posedge clk) begin
	if (RegWrite == 1)
     breg[addrW] <= datW;
  end


endmodule

