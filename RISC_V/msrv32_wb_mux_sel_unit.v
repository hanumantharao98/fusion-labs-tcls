/************************************

//File Name: msrv32_wb_mux_sel_unit.v

//Module Name: msrv32_wb_mux_sel_unit

//Description: This block generates the data to be written in the Integer Register File & 
               RS2 register input to ALU.

//Dependencies:

//Version: 1.0

//Engineer: Prasanna

//Email: tech_support@maven-silicon.com

//************************************/


module msrv32_wb_mux_sel_unit(input [2:0] wb_mux_sel_reg_in, 
                              input [31:0] alu_result_in,lu_output_in,imm_reg_in,
                              iadder_out_reg_in,csr_data_in,pc_plus_4_reg_in,rs2_reg_in,   
                              input alu_source_reg_in,
                              output reg [31:0] wb_mux_out, 
                              output [31:0] alu_2nd_src_mux_out);

   parameter WB_ALU = 3'b000,WB_LU = 3'b001, WB_IMM = 3'b010,WB_IADDER_OUT = 3'b011, 
             WB_CSR = 3'b100, WB_PC_PLUS = 3'b101;
   
   // Selects the ALU 2nd operand : either immediate data or from Source register
   assign alu_2nd_src_mux_out = alu_source_reg_in ? rs2_reg_in : imm_reg_in;
	
    // Selects the data to be written in the Integer Register File through wb_mux_out
    always@*
    begin
       case(wb_mux_sel_reg_in)
          WB_ALU        : wb_mux_out = alu_result_in;//R & I 
          WB_LU	        : wb_mux_out = lu_output_in; //Load
          WB_IMM        : wb_mux_out = imm_reg_in; //U 
          WB_IADDER_OUT : wb_mux_out = iadder_out_reg_in; //AUIP
          WB_CSR        : wb_mux_out = csr_data_in;
          WB_PC_PLUS    : wb_mux_out = pc_plus_4_reg_in; //JAL
          default       : wb_mux_out = alu_result_in;
        endcase
    end

endmodule

