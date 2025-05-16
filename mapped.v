// Fusion Compiler Version V-2023.12 Verilog Writer
// Generated on 11/13/2024 at 13:33:0
// Library Name: risc_core.dlib
// Block Name: risc_core
// User Label: 
// Write Command: write_verilog mapped.v
module stack_mem ( clk , pushenbl , popenbl , stack_full , tos , pushdatain , 
    popdataout ) ;
input  clk ;
input  pushenbl ;
input  popenbl ;
input  stack_full ;
input  [0:2] tos ;
input  [3:0] pushdatain ;
output [3:0] popdataout ;

wire [3:0] \stack_mem[0] ;
wire [3:0] \stack_mem[1] ;
wire [3:0] \stack_mem[2] ;
wire [3:0] \stack_mem[3] ;
wire [3:0] \stack_mem[4] ;
wire [3:0] \stack_mem[5] ;
wire [3:0] \stack_mem[6] ;
wire [3:0] \stack_mem[7] ;
wire [0:2] pop_address ;

\*SEQGEN.1839103_000_2 \stack_mem_reg[0][3] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[3] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[0] [3] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N0 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[0][2] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[2] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[0] [2] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N0 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[0][1] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[1] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[0] [1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N0 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[0][0] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[0] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[0] [0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N0 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[1][3] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[3] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[1] [3] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N1 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[1][2] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[2] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[1] [2] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N1 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[1][1] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[1] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[1] [1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N1 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[1][0] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[0] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[1] [0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N1 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[2][3] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[3] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[2] [3] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N2 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[2][2] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[2] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[2] [2] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N2 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[2][1] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[1] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[2] [1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N2 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[2][0] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[0] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[2] [0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N2 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[3][3] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[3] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[3] [3] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N3 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[3][2] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[2] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[3] [2] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N3 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[3][1] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[1] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[3] [1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N3 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[3][0] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[0] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[3] [0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N3 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[4][3] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[3] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[4] [3] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N4 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[4][2] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[2] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[4] [2] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N4 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[4][1] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[1] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[4] [1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N4 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[4][0] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[0] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[4] [0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N4 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[5][3] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[3] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[5] [3] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N5 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[5][2] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[2] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[5] [2] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N5 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[5][1] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[1] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[5] [1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N5 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[5][0] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[0] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[5] [0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N5 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[6][3] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[3] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[6] [3] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N6 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[6][2] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[2] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[6] [2] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N6 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[6][1] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[1] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[6] [1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N6 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[6][0] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[0] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[6] [0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N6 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[7][3] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[3] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[7] [3] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N7 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[7][2] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[2] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[7] [2] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N7 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[7][1] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[1] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[7] [1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N7 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \stack_mem_reg[7][0] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( pushdatain[0] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( \stack_mem[7] [0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( N7 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \popdataout_reg[3] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( N8 ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( popdataout[3] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( popenbl ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \popdataout_reg[2] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( N9 ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( popdataout[2] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( popenbl ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \popdataout_reg[1] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( N10 ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( popdataout[1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( popenbl ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \popdataout_reg[0] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( N11 ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( popdataout[0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( popenbl ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
SUB_UNS_OP_J2_D1 sub_22 ( .A ( tos ) ,
    .B ( { 1'b1 } ) ,
    .Z ( { N14 , N13 , N12 } ) ) ;
WVGTECH_AND2 C115 ( .I0 ( N16 ) , .I1 ( tos[0] ) , .Z ( N15 ) ) ;
WVGTECH_AND2 C117 ( .I0 ( N18 ) , .I1 ( tos[0] ) , .Z ( N17 ) ) ;
WVGTECH_AND2 C119 ( .I0 ( N20 ) , .I1 ( tos[0] ) , .Z ( N19 ) ) ;
WVGTECH_AND2 C121 ( .I0 ( N22 ) , .I1 ( tos[0] ) , .Z ( N21 ) ) ;
WVGTECH_AND2 C122 ( .I0 ( tos[2] ) , .I1 ( tos[1] ) , .Z ( N16 ) ) ;
WVGTECH_AND2 C123 ( .I0 ( N16 ) , .I1 ( GTECH_NOT_OUT_NET_0 ) , .Z ( N23 ) ) ;
WVGTECH_NOT I_0 ( .I ( tos[0] ) , .Z ( GTECH_NOT_OUT_NET_0 ) ) ;
WVGTECH_AND2 C124 ( .I0 ( GTECH_NOT_OUT_NET_1 ) , .I1 ( tos[1] ) , 
    .Z ( N18 ) ) ;
WVGTECH_NOT I_1 ( .I ( tos[2] ) , .Z ( GTECH_NOT_OUT_NET_1 ) ) ;
WVGTECH_AND2 C125 ( .I0 ( N18 ) , .I1 ( GTECH_NOT_OUT_NET_2 ) , .Z ( N24 ) ) ;
WVGTECH_NOT I_2 ( .I ( tos[0] ) , .Z ( GTECH_NOT_OUT_NET_2 ) ) ;
WVGTECH_AND2 C126 ( .I0 ( tos[2] ) , .I1 ( GTECH_NOT_OUT_NET_3 ) , 
    .Z ( N20 ) ) ;
WVGTECH_NOT I_3 ( .I ( tos[1] ) , .Z ( GTECH_NOT_OUT_NET_3 ) ) ;
WVGTECH_AND2 C127 ( .I0 ( N20 ) , .I1 ( GTECH_NOT_OUT_NET_4 ) , .Z ( N25 ) ) ;
WVGTECH_NOT I_4 ( .I ( tos[0] ) , .Z ( GTECH_NOT_OUT_NET_4 ) ) ;
WVGTECH_AND2 C128 ( .I0 ( GTECH_NOT_OUT_NET_5 ) , 
    .I1 ( GTECH_NOT_OUT_NET_6 ) , .Z ( N22 ) ) ;
WVGTECH_NOT I_5 ( .I ( tos[2] ) , .Z ( GTECH_NOT_OUT_NET_5 ) ) ;
WVGTECH_NOT I_6 ( .I ( tos[1] ) , .Z ( GTECH_NOT_OUT_NET_6 ) ) ;
WVGTECH_AND2 C129 ( .I0 ( N22 ) , .I1 ( GTECH_NOT_OUT_NET_7 ) , .Z ( N26 ) ) ;
WVGTECH_NOT I_7 ( .I ( tos[0] ) , .Z ( GTECH_NOT_OUT_NET_7 ) ) ;
\*SELECT_OP.2_3_2_1_3_33 C130 ( .DATA1 ( tos ) ,
    .DATA2 ( { N14 , N13 , N12 } ) ,
    .CONTROL1 ( { stack_full } ) ,
    .CONTROL2 ( { N27 } ) ,
    .Z ( pop_address ) ) ;
\*SELECT_OP.2_8_2_1_8_33 C131 (
    .DATA1 ( { N26 , N25 , N24 , N23 , N21 , N19 , N17 , N15 } ) ,
    .DATA2 ( { 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 } ) ,
    .CONTROL1 ( { pushenbl } ) ,
    .CONTROL2 ( { N28 } ) ,
    .Z ( { N0 , N1 , N2 , N3 , N4 , N5 , N6 , N7 } ) ) ;
\*SELECT_OP.8_4_8_1_4_33 C132 (
    .DATA1 ( { \stack_mem[0] [0] , \stack_mem[0] [1] , \stack_mem[0] [2] , 
        \stack_mem[0] [3] } ) ,
    .DATA2 ( { \stack_mem[1] [0] , \stack_mem[1] [1] , \stack_mem[1] [2] , 
        \stack_mem[1] [3] } ) ,
    .DATA3 ( { \stack_mem[2] [0] , \stack_mem[2] [1] , \stack_mem[2] [2] , 
        \stack_mem[2] [3] } ) ,
    .DATA4 ( { \stack_mem[3] [0] , \stack_mem[3] [1] , \stack_mem[3] [2] , 
        \stack_mem[3] [3] } ) ,
    .DATA5 ( { \stack_mem[4] [0] , \stack_mem[4] [1] , \stack_mem[4] [2] , 
        \stack_mem[4] [3] } ) ,
    .DATA6 ( { \stack_mem[5] [0] , \stack_mem[5] [1] , \stack_mem[5] [2] , 
        \stack_mem[5] [3] } ) ,
    .DATA7 ( { \stack_mem[6] [0] , \stack_mem[6] [1] , \stack_mem[6] [2] , 
        \stack_mem[6] [3] } ) ,
    .DATA8 ( { \stack_mem[7] [0] , \stack_mem[7] [1] , \stack_mem[7] [2] , 
        \stack_mem[7] [3] } ) ,
    .CONTROL1 ( { N29 } ) ,
    .CONTROL2 ( { N30 } ) ,
    .CONTROL3 ( { N31 } ) ,
    .CONTROL4 ( { N32 } ) ,
    .CONTROL5 ( { N33 } ) ,
    .CONTROL6 ( { N34 } ) ,
    .CONTROL7 ( { N35 } ) ,
    .CONTROL8 ( { N36 } ) ,
    .Z ( { N11 , N10 , N9 , N8 } ) ) ;
WVGTECH_NOT I_8 ( .I ( stack_full ) , .Z ( N27 ) ) ;
WVGTECH_BUF B_0 ( .I ( N27 ) , .Z ( N37 ) ) ;
WVGTECH_NOT I_9 ( .I ( pushenbl ) , .Z ( N28 ) ) ;
WVGTECH_NOT I_10 ( .I ( pop_address[2] ) , .Z ( N38 ) ) ;
WVGTECH_NOT I_11 ( .I ( pop_address[1] ) , .Z ( N39 ) ) ;
WVGTECH_AND2 C145 ( .I0 ( N38 ) , .I1 ( N39 ) , .Z ( N40 ) ) ;
WVGTECH_AND2 C146 ( .I0 ( N38 ) , .I1 ( pop_address[1] ) , .Z ( N41 ) ) ;
WVGTECH_AND2 C147 ( .I0 ( pop_address[2] ) , .I1 ( N39 ) , .Z ( N42 ) ) ;
WVGTECH_AND2 C148 ( .I0 ( pop_address[2] ) , .I1 ( pop_address[1] ) , 
    .Z ( N43 ) ) ;
WVGTECH_NOT I_12 ( .I ( pop_address[0] ) , .Z ( N44 ) ) ;
WVGTECH_AND2 C150 ( .I0 ( N40 ) , .I1 ( N44 ) , .Z ( N29 ) ) ;
WVGTECH_AND2 C151 ( .I0 ( N40 ) , .I1 ( pop_address[0] ) , .Z ( N33 ) ) ;
WVGTECH_AND2 C152 ( .I0 ( N42 ) , .I1 ( N44 ) , .Z ( N30 ) ) ;
WVGTECH_AND2 C153 ( .I0 ( N42 ) , .I1 ( pop_address[0] ) , .Z ( N34 ) ) ;
WVGTECH_AND2 C154 ( .I0 ( N41 ) , .I1 ( N44 ) , .Z ( N31 ) ) ;
WVGTECH_AND2 C155 ( .I0 ( N41 ) , .I1 ( pop_address[0] ) , .Z ( N35 ) ) ;
WVGTECH_AND2 C156 ( .I0 ( N43 ) , .I1 ( N44 ) , .Z ( N32 ) ) ;
WVGTECH_AND2 C157 ( .I0 ( N43 ) , .I1 ( pop_address[0] ) , .Z ( N36 ) ) ;
endmodule


module DW01_sub_J2_D1 ( A , B , CI , DIFF , CO ) ;
input  [2:0] A ;
input  [2:0] B ;
input  CI ;
output [2:0] DIFF ;
output CO ;
endmodule


module SUB_UNS_OP_J2_D1 ( A , B , Z ) ;
input  [2:0] A ;
input  [0:0] B ;
output [2:0] Z ;
endmodule


module DW01_add_J1_D1 ( A , B , CI , SUM , CO ) ;
input  [2:0] A ;
input  [2:0] B ;
input  CI ;
output [2:0] SUM ;
output CO ;
endmodule


module ADD_UNS_OP_J1_D1 ( A , B , Z ) ;
input  [2:0] A ;
input  [0:0] B ;
output [2:0] Z ;
endmodule


module stack_fsm ( clk , reset , pushenbl , popenbl , tos , stack_full ) ;
input  clk ;
input  reset ;
input  pushenbl ;
input  popenbl ;
output [0:2] tos ;
output stack_full ;

wire [1:0] crnt_stack ;
wire [1:0] next_stack ;
wire [0:2] next_tos ;

WVGTECH_AND2 C11 ( .I0 ( N1 ) , .I1 ( N2 ) , .Z ( N0 ) ) ;
WVGTECH_OR2 C13 ( .I0 ( crnt_stack[1] ) , .I1 ( N2 ) , .Z ( N3 ) ) ;
WVGTECH_AND2 C15 ( .I0 ( crnt_stack[1] ) , .I1 ( crnt_stack[0] ) , .Z ( N4 ) ) ;
WVGTECH_OR2 C17 ( .I0 ( N1 ) , .I1 ( crnt_stack[0] ) , .Z ( N5 ) ) ;
\*SEQGEN.1839103_000_2 stack_full_reg ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N7 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( stack_full ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N6 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \crnt_stack_reg[1] ( .clear ( reset ) , 
    .preset ( 1'b0 ) , .next_state ( next_stack[1] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_stack[1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( 1'b1 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \crnt_stack_reg[0] ( .clear ( reset ) , 
    .preset ( 1'b0 ) , .next_state ( next_stack[0] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_stack[0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( 1'b1 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \tos_int_reg[0] ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( next_tos[0] ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( tos[0] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N8 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \tos_int_reg[1] ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( next_tos[1] ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( tos[1] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N8 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \tos_int_reg[2] ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( next_tos[2] ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( tos[2] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N8 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
WVGTECH_AND2 C133 ( .I0 ( crnt_stack[0] ) , .I1 ( crnt_stack[1] ) , 
    .Z ( N9 ) ) ;
WVGTECH_AND2 C134 ( .I0 ( tos[1] ) , .I1 ( tos[0] ) , .Z ( N10 ) ) ;
WVGTECH_AND2 C135 ( .I0 ( tos[2] ) , .I1 ( N10 ) , .Z ( N11 ) ) ;
WVGTECH_AND2 C136 ( .I0 ( tos[1] ) , .I1 ( tos[0] ) , .Z ( N12 ) ) ;
WVGTECH_AND2 C137 ( .I0 ( tos[2] ) , .I1 ( N12 ) , .Z ( N13 ) ) ;
WVGTECH_NOT I_0 ( .I ( tos[2] ) , .Z ( N14 ) ) ;
WVGTECH_OR2 C139 ( .I0 ( tos[1] ) , .I1 ( tos[0] ) , .Z ( N15 ) ) ;
WVGTECH_OR2 C140 ( .I0 ( N14 ) , .I1 ( N15 ) , .Z ( N16 ) ) ;
WVGTECH_NOT I_1 ( .I ( N16 ) , .Z ( N17 ) ) ;
ADD_UNS_OP_J1_D1 add_51 ( .A ( tos ) ,
    .B ( { 1'b1 } ) ,
    .Z ( { N20 , N19 , N18 } ) ) ;
SUB_UNS_OP_J2_D1 sub_61 ( .A ( tos ) ,
    .B ( { 1'b1 } ) ,
    .Z ( { N23 , N22 , N21 } ) ) ;
\*SELECT_OP.3_2_3_1_2_33 C145 (
    .DATA1 ( { 1'b0 , 1'b1 } ) ,
    .DATA2 ( { 1'b1 , 1'b0 } ) ,
    .DATA3 ( { 1'b0 , 1'b0 } ) ,
    .CONTROL1 ( { pushenbl } ) ,
    .CONTROL2 ( { N26 } ) ,
    .CONTROL3 ( { N27 } ) ,
    .Z ( { N25 , N24 } ) ) ;
\*SELECT_OP.2_3_2_1_3_33 C146 (
    .DATA1 ( { 1'b1 , 1'b1 , 1'b1 } ) ,
    .DATA2 ( { N20 , N19 , N18 } ) ,
    .CONTROL1 ( { N13 } ) ,
    .CONTROL2 ( { N31 } ) ,
    .Z ( { N30 , N29 , N28 } ) ) ;
WVGTECH_NOT I_2 ( .I ( N17 ) , .Z ( N32 ) ) ;
\*SELECT_OP.2_3_2_1_3_33 C148 (
    .DATA1 ( { 1'b0 , 1'b0 , 1'b0 } ) ,
    .DATA2 ( { N23 , N22 , N21 } ) ,
    .CONTROL1 ( { N17 } ) ,
    .CONTROL2 ( { N36 } ) ,
    .Z ( { N35 , N34 , N33 } ) ) ;
\*SELECT_OP.2_3_2_1_3_64 C149 (
    .DATA1 ( { N30 , N29 , N28 } ) ,
    .DATA2 ( { N35 , N34 , N33 } ) ,
    .CONTROL1 ( { pushenbl } ) ,
    .CONTROL2 ( { N26 } ) ,
    .Z ( { N39 , N38 , N37 } ) ) ;
\*SELECT_OP.3_2_3_1_2_33 C150 (
    .DATA1 ( { N13 , 1'b1 } ) ,
    .DATA2 ( { 1'b0 , N32 } ) ,
    .DATA3 ( { 1'b0 , 1'b1 } ) ,
    .CONTROL1 ( { pushenbl } ) ,
    .CONTROL2 ( { N26 } ) ,
    .CONTROL3 ( { N27 } ) ,
    .Z ( { N41 , N40 } ) ) ;
\*SELECT_OP.3_2_3_1_2_33 C151 (
    .DATA1 ( { 1'b1 , 1'b0 } ) ,
    .DATA2 ( { 1'b0 , 1'b1 } ) ,
    .DATA3 ( { 1'b1 , 1'b1 } ) ,
    .CONTROL1 ( { pushenbl } ) ,
    .CONTROL2 ( { N26 } ) ,
    .CONTROL3 ( { N27 } ) ,
    .Z ( { N43 , N42 } ) ) ;
\*SELECT_OP.4_3_4_1_3_33 C152 (
    .DATA1 ( { 1'b0 , 1'b0 , N24 } ) ,
    .DATA2 ( { N39 , N38 , N37 } ) ,
    .DATA3 ( { 1'b1 , 1'b1 , 1'b1 } ) ,
    .DATA4 ( { 1'b1 , 1'b1 , 1'b1 } ) ,
    .CONTROL1 ( { N0 } ) ,
    .CONTROL2 ( { N47 } ) ,
    .CONTROL3 ( { N4 } ) ,
    .CONTROL4 ( { N48 } ) ,
    .Z ( { N46 , N45 , N44 } ) ) ;
\*SELECT_OP.4_2_4_1_2_33 C153 (
    .DATA1 ( { N25 , N24 } ) ,
    .DATA2 ( { N41 , N40 } ) ,
    .DATA3 ( { N43 , N42 } ) ,
    .DATA4 ( { 1'b1 , 1'b0 } ) ,
    .CONTROL1 ( { N0 } ) ,
    .CONTROL2 ( { N47 } ) ,
    .CONTROL3 ( { N4 } ) ,
    .CONTROL4 ( { N48 } ) ,
    .Z ( { N50 , N49 } ) ) ;
\*SELECT_OP.2_2_2_1_2_33 C154 (
    .DATA1 ( { 1'b1 , 1'b0 } ) ,
    .DATA2 ( { N50 , N49 } ) ,
    .CONTROL1 ( { N51 } ) ,
    .CONTROL2 ( { N52 } ) ,
    .Z ( next_stack ) ) ;
\*SELECT_OP.2_3_2_1_3_33 C155 (
    .DATA1 ( { 1'b0 , 1'b0 , 1'b0 } ) ,
    .DATA2 ( { N46 , N45 , N44 } ) ,
    .CONTROL1 ( { N51 } ) ,
    .CONTROL2 ( { N52 } ) ,
    .Z ( next_tos ) ) ;
WVGTECH_AND2 C158 ( .I0 ( pushenbl ) , .I1 ( popenbl ) , .Z ( N51 ) ) ;
WVGTECH_NOT I_3 ( .I ( N51 ) , .Z ( N52 ) ) ;
WVGTECH_BUF B_0 ( .I ( N52 ) , .Z ( N53 ) ) ;
WVGTECH_NOT I_4 ( .I ( crnt_stack[1] ) , .Z ( N1 ) ) ;
WVGTECH_NOT I_5 ( .I ( crnt_stack[0] ) , .Z ( N2 ) ) ;
WVGTECH_NOT I_6 ( .I ( N3 ) , .Z ( N47 ) ) ;
WVGTECH_NOT I_7 ( .I ( N5 ) , .Z ( N48 ) ) ;
WVGTECH_AND2 C172 ( .I0 ( N53 ) , .I1 ( N47 ) , .Z ( N54 ) ) ;
WVGTECH_AND2 C173 ( .I0 ( N54 ) , .I1 ( pushenbl ) , .Z ( N55 ) ) ;
WVGTECH_NOT I_8 ( .I ( N13 ) , .Z ( N31 ) ) ;
WVGTECH_AND2 C176 ( .I0 ( N55 ) , .I1 ( N31 ) , .Z ( N56 ) ) ;
WVGTECH_AND2 C177 ( .I0 ( N54 ) , .I1 ( N26 ) , .Z ( N57 ) ) ;
WVGTECH_NOT I_9 ( .I ( N17 ) , .Z ( N36 ) ) ;
WVGTECH_AND2 C180 ( .I0 ( N57 ) , .I1 ( N36 ) , .Z ( N58 ) ) ;
WVGTECH_OR2 C183 ( .I0 ( popenbl ) , .I1 ( pushenbl ) , .Z ( N59 ) ) ;
WVGTECH_NOT I_10 ( .I ( N59 ) , .Z ( N27 ) ) ;
WVGTECH_NOT I_11 ( .I ( pushenbl ) , .Z ( N60 ) ) ;
WVGTECH_AND2 C186 ( .I0 ( popenbl ) , .I1 ( N60 ) , .Z ( N26 ) ) ;
WVGTECH_AND2 C188 ( .I0 ( N9 ) , .I1 ( N11 ) , .Z ( N7 ) ) ;
WVGTECH_NOT I_12 ( .I ( reset ) , .Z ( N6 ) ) ;
WVGTECH_AND2 C191 ( .I0 ( N47 ) , .I1 ( N52 ) , .Z ( N61 ) ) ;
WVGTECH_AND2 C192 ( .I0 ( N27 ) , .I1 ( N61 ) , .Z ( N62 ) ) ;
WVGTECH_NOT I_13 ( .I ( N62 ) , .Z ( N8 ) ) ;
endmodule


module stack_top ( clk , reset , pushenbl , popenbl , pushdatain , 
    popdataout , stack_full ) ;
input  clk ;
input  reset ;
input  pushenbl ;
input  popenbl ;
input  [11:0] pushdatain ;
output [11:0] popdataout ;
output stack_full ;

wire [0:2] tos ;

stack_fsm stack_fsm ( .clk ( clk ) , .reset ( reset ) , 
    .pushenbl ( pushenbl ) , .popenbl ( popenbl ) , .tos ( tos ) , 
    .stack_full ( stack_full ) ) ;
stack_mem stack_mem1 ( .clk ( clk ) , .pushenbl ( pushenbl ) , 
    .popenbl ( popenbl ) , .stack_full ( stack_full ) , .tos ( tos ) , 
    .pushdatain ( pushdatain[3:0] ) , .popdataout ( popdataout[3:0] ) ) ;
stack_mem stack_mem2 ( .clk ( clk ) , .pushenbl ( pushenbl ) , 
    .popenbl ( popenbl ) , .stack_full ( stack_full ) , .tos ( tos ) , 
    .pushdatain ( pushdatain[7:4] ) , .popdataout ( popdataout[7:4] ) ) ;
stack_mem stack_mem3 ( .clk ( clk ) , .pushenbl ( pushenbl ) , 
    .popenbl ( popenbl ) , .stack_full ( stack_full ) , .tos ( tos ) , 
    .pushdatain ( pushdatain[11:8] ) , .popdataout ( popdataout[11:8] ) ) ;
endmodule


module reg_file_use_rams1 ( clk , reset , addr_a , addr_b , addr_c , 
    regport_c , write_regc , regport_a , regport_b ) ;
input  clk ;
input  reset ;
input  [6:0] addr_a ;
input  [6:0] addr_b ;
input  [6:0] addr_c ;
input  [63:0] regport_c ;
input  write_regc ;
output [63:0] regport_a ;
output [63:0] regport_b ;

wire [6:0] address1 ;

SRAMLP2RW128x16 \rams.reg_file_a_ram ( .A1 ( address1 ) , .A2 ( addr_b ) , 
    .CE1 ( clk ) , .CE2 ( clk ) , .CSB1 ( 1'b0 ) , .CSB2 ( 1'b0 ) , 
    .DS1 ( 1'b0 ) , .DS2 ( 1'b0 ) , .I1 ( regport_c[15:0] ) ,
    .I2 ( { 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b1 } ) ,
    .LS1 ( 1'b0 ) , .LS2 ( 1'b0 ) , .OEB1 ( 1'b1 ) , .OEB2 ( 1'b0 ) , 
    .SD ( 1'b0 ) , .WEB1 ( we_n ) , .WEB2 ( 1'b1 ) , .O1 ( regport_a[15:0] ) , 
    .O2 ( regport_b[15:0] ) ) ;
SRAMLP2RW128x16 \rams.reg_file_b_ram ( .A1 ( address1 ) , .A2 ( addr_b ) , 
    .CE1 ( clk ) , .CE2 ( clk ) , .CSB1 ( 1'b0 ) , .CSB2 ( 1'b0 ) , 
    .DS1 ( 1'b0 ) , .DS2 ( 1'b0 ) , .I1 ( regport_c[31:16] ) ,
    .I2 ( { 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b1 } ) ,
    .LS1 ( 1'b0 ) , .LS2 ( 1'b0 ) , .OEB1 ( 1'b1 ) , .OEB2 ( 1'b0 ) , 
    .SD ( 1'b0 ) , .WEB1 ( we_n ) , .WEB2 ( 1'b1 ) , 
    .O1 ( regport_a[31:16] ) , .O2 ( regport_b[31:16] ) ) ;
SRAMLP2RW128x16 \rams.reg_file_c_ram ( .A1 ( address1 ) , .A2 ( addr_b ) , 
    .CE1 ( clk ) , .CE2 ( clk ) , .CSB1 ( 1'b0 ) , .CSB2 ( 1'b0 ) , 
    .DS1 ( 1'b0 ) , .DS2 ( 1'b0 ) , .I1 ( regport_c[47:32] ) ,
    .I2 ( { 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b1 } ) ,
    .LS1 ( 1'b0 ) , .LS2 ( 1'b0 ) , .OEB1 ( 1'b1 ) , .OEB2 ( 1'b0 ) , 
    .SD ( 1'b0 ) , .WEB1 ( we_n ) , .WEB2 ( 1'b1 ) , 
    .O1 ( regport_a[47:32] ) , .O2 ( regport_b[47:32] ) ) ;
SRAMLP2RW128x16 \rams.reg_file_d_ram ( .A1 ( address1 ) , .A2 ( addr_b ) , 
    .CE1 ( clk ) , .CE2 ( clk ) , .CSB1 ( 1'b0 ) , .CSB2 ( 1'b0 ) , 
    .DS1 ( 1'b0 ) , .DS2 ( 1'b0 ) , .I1 ( regport_c[63:48] ) ,
    .I2 ( { 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b1 } ) ,
    .LS1 ( 1'b0 ) , .LS2 ( 1'b0 ) , .OEB1 ( 1'b1 ) , .OEB2 ( 1'b0 ) , 
    .SD ( 1'b0 ) , .WEB1 ( we_n ) , .WEB2 ( 1'b1 ) , 
    .O1 ( regport_a[63:48] ) , .O2 ( regport_b[63:48] ) ) ;
\*SELECT_OP.2_7_2_1_7_33 C18 ( .DATA1 ( addr_c ) , .DATA2 ( addr_a ) ,
    .CONTROL1 ( { write_regc } ) ,
    .CONTROL2 ( { N0 } ) ,
    .Z ( address1 ) ) ;
WVGTECH_NOT I_0 ( .I ( write_regc ) , .Z ( we_n ) ) ;
WVGTECH_NOT I_1 ( .I ( write_regc ) , .Z ( N0 ) ) ;
endmodule


module DW01_add_J0_D1 ( A , B , CI , SUM , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] SUM ;
output CO ;
endmodule


module ADD_UNS_OP_J0_D1 ( A , B , Z ) ;
input  [7:0] A ;
input  [0:0] B ;
output [7:0] Z ;
endmodule


module prgrm_cnt ( clk , reset , incrmnt_pc , ld_brnch_addr , ld_rtn_addr , 
    imm_addr , return_addr , pc ) ;
input  clk ;
input  reset ;
input  incrmnt_pc ;
input  ld_brnch_addr ;
input  ld_rtn_addr ;
input  [7:0] imm_addr ;
input  [7:0] return_addr ;
output [7:0] pc ;

\*SEQGEN.1839103_120_2 \pcint_reg[7] ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( N1 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( pc[7] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \pcint_reg[6] ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( N2 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( pc[6] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \pcint_reg[5] ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( N3 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( pc[5] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \pcint_reg[4] ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( N4 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( pc[4] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \pcint_reg[3] ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( N5 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( pc[3] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \pcint_reg[2] ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( N6 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( pc[2] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \pcint_reg[1] ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( N7 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( pc[1] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \pcint_reg[0] ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( N8 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( pc[0] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
ADD_UNS_OP_J0_D1 add_22 ( .A ( pc ) ,
    .B ( { 1'b1 } ) ,
    .Z ( { N16 , N15 , N14 , N13 , N12 , N11 , N10 , N9 } ) ) ;
\*SELECT_OP.4_1_4_1_1_33 C59 (
    .DATA1 ( { 1'b1 } ) ,
    .DATA2 ( { 1'b1 } ) ,
    .DATA3 ( { 1'b1 } ) ,
    .DATA4 ( { 1'b0 } ) ,
    .CONTROL1 ( { incrmnt_pc } ) ,
    .CONTROL2 ( { N17 } ) ,
    .CONTROL3 ( { N18 } ) ,
    .CONTROL4 ( { N19 } ) ,
    .Z ( { N0 } ) ) ;
\*SELECT_OP.3_8_3_1_8_65 C60 (
    .DATA1 ( { N16 , N15 , N14 , N13 , N12 , N11 , N10 , N9 } ) ,
    .DATA2 ( return_addr ) , .DATA3 ( imm_addr ) ,
    .CONTROL1 ( { incrmnt_pc } ) ,
    .CONTROL2 ( { N17 } ) ,
    .CONTROL3 ( { N18 } ) ,
    .Z ( { N1 , N2 , N3 , N4 , N5 , N6 , N7 , N8 } ) ) ;
WVGTECH_NOT I_0 ( .I ( reset ) , .Z ( N20 ) ) ;
WVGTECH_BUF B_0 ( .I ( N20 ) , .Z ( N21 ) ) ;
WVGTECH_OR2 C69 ( .I0 ( ld_rtn_addr ) , .I1 ( incrmnt_pc ) , .Z ( N22 ) ) ;
WVGTECH_OR2 C70 ( .I0 ( ld_brnch_addr ) , .I1 ( N22 ) , .Z ( N23 ) ) ;
WVGTECH_NOT I_1 ( .I ( N23 ) , .Z ( N19 ) ) ;
WVGTECH_AND2 C72 ( .I0 ( N21 ) , .I1 ( incrmnt_pc ) , .Z ( N24 ) ) ;
WVGTECH_NOT I_2 ( .I ( incrmnt_pc ) , .Z ( N25 ) ) ;
WVGTECH_AND2 C74 ( .I0 ( ld_rtn_addr ) , .I1 ( N25 ) , .Z ( N17 ) ) ;
WVGTECH_NOT I_3 ( .I ( ld_rtn_addr ) , .Z ( N26 ) ) ;
WVGTECH_AND2 C76 ( .I0 ( N25 ) , .I1 ( N26 ) , .Z ( N27 ) ) ;
WVGTECH_AND2 C77 ( .I0 ( ld_brnch_addr ) , .I1 ( N27 ) , .Z ( N18 ) ) ;
endmodule


module prgrm_decode ( zro_flag , carry_flag , neg_flag , current_state , 
    crnt_instrn , incrmnt_pc , ld_brnch_addr , ld_rtn_addr ) ;
input  zro_flag ;
input  carry_flag ;
input  neg_flag ;
input  [2:0] current_state ;
input  [31:0] crnt_instrn ;
output incrmnt_pc ;
output ld_brnch_addr ;
output ld_rtn_addr ;

WVGTECH_OR2 C31 ( .I0 ( N1 ) , .I1 ( current_state[1] ) , .Z ( N0 ) ) ;
WVGTECH_OR2 C32 ( .I0 ( N0 ) , .I1 ( current_state[0] ) , .Z ( N2 ) ) ;
WVGTECH_OR2 C69 ( .I0 ( crnt_instrn[30] ) , .I1 ( crnt_instrn[31] ) , 
    .Z ( N3 ) ) ;
WVGTECH_NOT I_0 ( .I ( N3 ) , .Z ( N4 ) ) ;
WVGTECH_NOT I_1 ( .I ( crnt_instrn[21] ) , .Z ( N5 ) ) ;
WVGTECH_NOT I_2 ( .I ( crnt_instrn[20] ) , .Z ( N6 ) ) ;
WVGTECH_NOT I_3 ( .I ( crnt_instrn[19] ) , .Z ( N7 ) ) ;
WVGTECH_NOT I_4 ( .I ( crnt_instrn[18] ) , .Z ( N8 ) ) ;
WVGTECH_NOT I_5 ( .I ( crnt_instrn[17] ) , .Z ( N9 ) ) ;
WVGTECH_NOT I_6 ( .I ( crnt_instrn[16] ) , .Z ( N10 ) ) ;
WVGTECH_OR2 C77 ( .I0 ( crnt_instrn[22] ) , .I1 ( crnt_instrn[23] ) , 
    .Z ( N11 ) ) ;
WVGTECH_OR2 C78 ( .I0 ( N5 ) , .I1 ( N11 ) , .Z ( N12 ) ) ;
WVGTECH_OR2 C79 ( .I0 ( N6 ) , .I1 ( N12 ) , .Z ( N13 ) ) ;
WVGTECH_OR2 C80 ( .I0 ( N7 ) , .I1 ( N13 ) , .Z ( N14 ) ) ;
WVGTECH_OR2 C81 ( .I0 ( N8 ) , .I1 ( N14 ) , .Z ( N15 ) ) ;
WVGTECH_OR2 C82 ( .I0 ( N9 ) , .I1 ( N15 ) , .Z ( N16 ) ) ;
WVGTECH_OR2 C83 ( .I0 ( N10 ) , .I1 ( N16 ) , .Z ( N17 ) ) ;
WVGTECH_NOT I_7 ( .I ( N17 ) , .Z ( N18 ) ) ;
WVGTECH_OR2 C87 ( .I0 ( crnt_instrn[21] ) , .I1 ( N11 ) , .Z ( N19 ) ) ;
WVGTECH_OR2 C88 ( .I0 ( crnt_instrn[20] ) , .I1 ( N19 ) , .Z ( N20 ) ) ;
WVGTECH_OR2 C89 ( .I0 ( crnt_instrn[19] ) , .I1 ( N20 ) , .Z ( N21 ) ) ;
WVGTECH_OR2 C90 ( .I0 ( crnt_instrn[18] ) , .I1 ( N21 ) , .Z ( N22 ) ) ;
WVGTECH_OR2 C91 ( .I0 ( N9 ) , .I1 ( N22 ) , .Z ( N23 ) ) ;
WVGTECH_OR2 C92 ( .I0 ( crnt_instrn[16] ) , .I1 ( N23 ) , .Z ( N24 ) ) ;
WVGTECH_NOT I_8 ( .I ( N24 ) , .Z ( N25 ) ) ;
WVGTECH_OR2 C100 ( .I0 ( crnt_instrn[17] ) , .I1 ( N22 ) , .Z ( N26 ) ) ;
WVGTECH_OR2 C101 ( .I0 ( N10 ) , .I1 ( N26 ) , .Z ( N27 ) ) ;
WVGTECH_NOT I_9 ( .I ( N27 ) , .Z ( N28 ) ) ;
WVGTECH_OR2 C109 ( .I0 ( crnt_instrn[16] ) , .I1 ( N26 ) , .Z ( N29 ) ) ;
WVGTECH_NOT I_10 ( .I ( N29 ) , .Z ( N30 ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C111 (
    .DATA1 ( { N31 } ) ,
    .DATA2 ( { neg_flag } ) ,
    .CONTROL1 ( crnt_instrn[25] ) ,
    .CONTROL2 ( { N32 } ) ,
    .Z ( { neg } ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C112 (
    .DATA1 ( { N33 } ) ,
    .DATA2 ( { carry_flag } ) ,
    .CONTROL1 ( crnt_instrn[25] ) ,
    .CONTROL2 ( { N32 } ) ,
    .Z ( { carry } ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C113 (
    .DATA1 ( { N34 } ) ,
    .DATA2 ( { zro_flag } ) ,
    .CONTROL1 ( crnt_instrn[25] ) ,
    .CONTROL2 ( { N32 } ) ,
    .Z ( { zro } ) ) ;
WVGTECH_NOT I_11 ( .I ( crnt_instrn[25] ) , .Z ( jmp ) ) ;
\*SELECT_OP.5_1_5_1_1_33 C115 (
    .DATA1 ( { neg } ) ,
    .DATA2 ( { zro } ) ,
    .DATA3 ( { carry } ) ,
    .DATA4 ( { jmp } ) ,
    .DATA5 ( { 1'b0 } ) ,
    .CONTROL1 ( { N30 } ) ,
    .CONTROL2 ( { N28 } ) ,
    .CONTROL3 ( { N25 } ) ,
    .CONTROL4 ( { N18 } ) ,
    .CONTROL5 ( { N35 } ) ,
    .Z ( { take_branch } ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C116 (
    .DATA1 ( { N36 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .CONTROL1 ( { N4 } ) ,
    .CONTROL2 ( { N38 } ) ,
    .Z ( { N37 } ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C117 ( .DATA1 ( crnt_instrn[27] ) ,
    .DATA2 ( { 1'b0 } ) ,
    .CONTROL1 ( { N4 } ) ,
    .CONTROL2 ( { N38 } ) ,
    .Z ( { N39 } ) ) ;
WVGTECH_NOT I_12 ( .I ( N41 ) , .Z ( N40 ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C119 (
    .DATA1 ( { N39 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .CONTROL1 ( { N42 } ) ,
    .CONTROL2 ( { N2 } ) ,
    .Z ( { ld_rtn_addr } ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C120 (
    .DATA1 ( { N37 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .CONTROL1 ( { N42 } ) ,
    .CONTROL2 ( { N2 } ) ,
    .Z ( { ld_brnch_addr } ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C121 (
    .DATA1 ( { N40 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .CONTROL1 ( { N42 } ) ,
    .CONTROL2 ( { N2 } ) ,
    .Z ( { incrmnt_pc } ) ) ;
WVGTECH_NOT I_13 ( .I ( crnt_instrn[25] ) , .Z ( N32 ) ) ;
WVGTECH_NOT I_14 ( .I ( neg_flag ) , .Z ( N31 ) ) ;
WVGTECH_NOT I_15 ( .I ( carry_flag ) , .Z ( N33 ) ) ;
WVGTECH_NOT I_16 ( .I ( zro_flag ) , .Z ( N34 ) ) ;
WVGTECH_OR2 C132 ( .I0 ( N28 ) , .I1 ( N30 ) , .Z ( N43 ) ) ;
WVGTECH_OR2 C133 ( .I0 ( N25 ) , .I1 ( N43 ) , .Z ( N44 ) ) ;
WVGTECH_OR2 C134 ( .I0 ( N18 ) , .I1 ( N44 ) , .Z ( N45 ) ) ;
WVGTECH_NOT I_17 ( .I ( N45 ) , .Z ( N35 ) ) ;
WVGTECH_NOT I_18 ( .I ( current_state[2] ) , .Z ( N1 ) ) ;
WVGTECH_NOT I_19 ( .I ( N2 ) , .Z ( N42 ) ) ;
WVGTECH_NOT I_20 ( .I ( N4 ) , .Z ( N38 ) ) ;
WVGTECH_AND2 C142 ( .I0 ( N46 ) , .I1 ( take_branch ) , .Z ( N36 ) ) ;
WVGTECH_OR2 C143 ( .I0 ( crnt_instrn[29] ) , .I1 ( crnt_instrn[28] ) , 
    .Z ( N46 ) ) ;
WVGTECH_OR2 C146 ( .I0 ( N39 ) , .I1 ( N37 ) , .Z ( N41 ) ) ;
endmodule


module prgrm_fsm ( clk , reset , current_state ) ;
input  clk ;
input  reset ;
output [2:0] current_state ;

wire [2:0] next_state ;

WVGTECH_AND2 C6 ( .I0 ( N1 ) , .I1 ( N2 ) , .Z ( N0 ) ) ;
WVGTECH_AND2 C7 ( .I0 ( N0 ) , .I1 ( N4 ) , .Z ( N3 ) ) ;
WVGTECH_OR2 C9 ( .I0 ( current_state[2] ) , .I1 ( current_state[1] ) , 
    .Z ( N5 ) ) ;
WVGTECH_OR2 C10 ( .I0 ( N5 ) , .I1 ( N4 ) , .Z ( N6 ) ) ;
WVGTECH_OR2 C13 ( .I0 ( current_state[2] ) , .I1 ( N2 ) , .Z ( N7 ) ) ;
WVGTECH_OR2 C14 ( .I0 ( N7 ) , .I1 ( current_state[0] ) , .Z ( N8 ) ) ;
WVGTECH_OR2 C18 ( .I0 ( current_state[2] ) , .I1 ( N2 ) , .Z ( N9 ) ) ;
WVGTECH_OR2 C19 ( .I0 ( N9 ) , .I1 ( N4 ) , .Z ( N10 ) ) ;
WVGTECH_OR2 C22 ( .I0 ( N1 ) , .I1 ( current_state[1] ) , .Z ( N11 ) ) ;
WVGTECH_OR2 C23 ( .I0 ( N11 ) , .I1 ( current_state[0] ) , .Z ( N12 ) ) ;
WVGTECH_AND2 C25 ( .I0 ( current_state[2] ) , .I1 ( current_state[0] ) , 
    .Z ( N13 ) ) ;
WVGTECH_AND2 C26 ( .I0 ( current_state[2] ) , .I1 ( current_state[1] ) , 
    .Z ( N14 ) ) ;
\*SEQGEN.1839103_120_2 \current_state_reg[2] ( .clear ( reset ) , 
    .preset ( 1'b0 ) , .next_state ( next_state[2] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( current_state[2] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( 1'b1 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \current_state_reg[1] ( .clear ( reset ) , 
    .preset ( 1'b0 ) , .next_state ( next_state[1] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( current_state[1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( 1'b1 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 \current_state_reg[0] ( .clear ( reset ) , 
    .preset ( 1'b0 ) , .next_state ( next_state[0] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( current_state[0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( 1'b1 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SELECT_OP.6_2_6_1_2_33 C57 (
    .DATA1 ( { 1'b0 , 1'b1 } ) ,
    .DATA2 ( { 1'b1 , 1'b0 } ) ,
    .DATA3 ( { 1'b1 , 1'b1 } ) ,
    .DATA4 ( { 1'b0 , 1'b0 } ) ,
    .DATA5 ( { 1'b0 , 1'b1 } ) ,
    .DATA6 ( { 1'b0 , 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N15 } ) ,
    .CONTROL3 ( { N16 } ) ,
    .CONTROL4 ( { N17 } ) ,
    .CONTROL5 ( { N18 } ) ,
    .CONTROL6 ( { N19 } ) ,
    .Z ( next_state[1:0] ) ) ;
\*SELECT_OP.2_1_2_1_1_64 C58 (
    .DATA1 ( { 1'b1 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .CONTROL1 ( { N17 } ) ,
    .CONTROL2 ( { N10 } ) ,
    .Z ( next_state[2] ) ) ;
WVGTECH_NOT I_0 ( .I ( current_state[2] ) , .Z ( N1 ) ) ;
WVGTECH_NOT I_1 ( .I ( current_state[1] ) , .Z ( N2 ) ) ;
WVGTECH_NOT I_2 ( .I ( current_state[0] ) , .Z ( N4 ) ) ;
WVGTECH_NOT I_3 ( .I ( N6 ) , .Z ( N15 ) ) ;
WVGTECH_NOT I_4 ( .I ( N8 ) , .Z ( N16 ) ) ;
WVGTECH_NOT I_5 ( .I ( N10 ) , .Z ( N17 ) ) ;
WVGTECH_NOT I_6 ( .I ( N12 ) , .Z ( N18 ) ) ;
WVGTECH_OR2 C73 ( .I0 ( N13 ) , .I1 ( N14 ) , .Z ( N19 ) ) ;
endmodule


module prgrm_cnt_top ( clk , reset , crnt_instrn , zro_flag , carry_flag , 
    neg_flag , return_addr , current_state , PC ) ;
input  clk ;
input  reset ;
input  [31:0] crnt_instrn ;
input  zro_flag ;
input  carry_flag ;
input  neg_flag ;
input  [7:0] return_addr ;
output [2:0] current_state ;
output [7:0] PC ;

prgrm_fsm prgrm_fsm ( .clk ( clk ) , .reset ( reset ) , 
    .current_state ( current_state ) ) ;
prgrm_decode prgrm_decode ( .zro_flag ( zro_flag ) , 
    .carry_flag ( carry_flag ) , .neg_flag ( neg_flag ) , 
    .current_state ( current_state ) , .crnt_instrn ( crnt_instrn ) , 
    .incrmnt_pc ( incrmnt_pc ) , .ld_brnch_addr ( ld_brnch_addr ) , 
    .ld_rtn_addr ( ld_rtn_addr ) ) ;
prgrm_cnt prgrm_cnt ( .clk ( clk ) , .reset ( reset ) , 
    .incrmnt_pc ( incrmnt_pc ) , .ld_brnch_addr ( ld_brnch_addr ) , 
    .ld_rtn_addr ( ld_rtn_addr ) , .imm_addr ( crnt_instrn[7:0] ) , 
    .return_addr ( return_addr ) , .pc ( PC ) ) ;
endmodule


module instrn_lat ( clk , instrn , latch_instr , crnt_instrn_1 , 
    crnt_instrn_2 ) ;
input  clk ;
input  [31:0] instrn ;
input  latch_instr ;
output [31:0] crnt_instrn_1 ;
output [31:0] crnt_instrn_2 ;

\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[31] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[31] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[31] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[30] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[30] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[30] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[29] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[29] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[29] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[28] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[28] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[28] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[27] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[27] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[27] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[26] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[26] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[26] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[25] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[25] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[25] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[24] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[24] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[24] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[23] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[23] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[23] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[22] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[22] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[22] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[21] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[21] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[21] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[20] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[20] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[20] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[19] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[19] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[19] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[18] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[18] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[18] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[17] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[17] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[17] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[16] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[16] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[16] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[15] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[15] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[15] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[14] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[14] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[14] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[13] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[13] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[13] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[12] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[12] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[12] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[11] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[11] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[11] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[10] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[10] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[10] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[9] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[9] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[9] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[8] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[8] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[8] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[7] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[7] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[7] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[6] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[6] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[6] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[5] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[5] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[5] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[4] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[4] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[4] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[3] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[3] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[3] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[2] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[2] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[2] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[1] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[1] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_2_reg[0] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[0] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_2[0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[31] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[31] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[31] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[30] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[30] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[30] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[29] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[29] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[29] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[28] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[28] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[28] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[27] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[27] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[27] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[26] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[26] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[26] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[25] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[25] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[25] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[24] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[24] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[24] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[23] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[23] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[23] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[22] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[22] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[22] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[21] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[21] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[21] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[20] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[20] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[20] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[19] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[19] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[19] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[18] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[18] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[18] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[17] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[17] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[17] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[16] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[16] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[16] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[15] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[15] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[15] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[14] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[14] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[14] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[13] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[13] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[13] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[12] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[12] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[12] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[11] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[11] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[11] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[10] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[10] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[10] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[9] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[9] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[9] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[8] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[8] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[8] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[7] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[7] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[7] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[6] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[6] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[6] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[5] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[5] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[5] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[4] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[4] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[4] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[3] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[3] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[3] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[2] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[2] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[2] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[1] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[1] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[1] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \crnt_instrn_1_reg[0] ( .clear ( 1'b0 ) , 
    .preset ( 1'b0 ) , .next_state ( instrn[0] ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( crnt_instrn_1[0] ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_instr ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
endmodule


module data_path ( clk , reset , reset_aluregs , rd_oprnd_a , rd_oprnd_b , 
    usedata_imm_or_regb , usedata_imm_or_alu , latch_flags , alu_zro , 
    alu_neg , alu_carry , psw_zro , psw_neg , psw_carry , crnt_instrn , 
    regport_a , regport_b , op_result , zro_flag , neg_flag , carry_flag , 
    addr_a , oprnd_a , oprnd_b , regport_c ) ;
input  clk ;
input  reset ;
input  reset_aluregs ;
input  rd_oprnd_a ;
input  rd_oprnd_b ;
input  usedata_imm_or_regb ;
input  usedata_imm_or_alu ;
input  latch_flags ;
input  alu_zro ;
input  alu_neg ;
input  alu_carry ;
input  psw_zro ;
input  psw_neg ;
input  psw_carry ;
input  [31:0] crnt_instrn ;
input  [63:0] regport_a ;
input  [63:0] regport_b ;
input  [63:0] op_result ;
output zro_flag ;
output neg_flag ;
output carry_flag ;
output [6:0] addr_a ;
output [63:0] oprnd_a ;
output [63:0] oprnd_b ;
output [63:0] regport_c ;

\*SEQGEN.1839103_000_2 \oprnd_a_reg[63] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N1 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[63] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[62] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N2 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[62] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[61] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N3 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[61] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[60] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N4 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[60] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[59] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N5 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[59] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[58] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N6 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[58] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[57] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N7 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[57] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[56] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N8 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[56] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[55] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N9 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[55] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[54] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N10 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[54] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[53] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N11 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[53] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[52] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N12 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[52] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[51] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N13 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[51] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[50] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N14 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[50] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[49] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N15 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[49] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[48] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N16 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[48] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[47] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N17 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[47] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[46] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N18 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[46] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[45] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N19 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[45] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[44] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N20 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[44] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[43] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N21 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[43] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[42] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N22 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[42] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[41] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N23 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[41] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[40] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N24 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[40] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[39] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N25 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[39] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[38] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N26 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[38] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[37] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N27 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[37] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[36] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N28 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[36] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[35] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N29 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[35] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[34] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N30 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[34] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[33] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N31 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[33] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[32] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N32 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[32] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[31] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N33 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[31] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[30] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N34 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[30] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[29] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N35 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[29] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[28] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N36 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[28] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[27] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N37 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[27] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[26] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N38 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[26] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[25] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N39 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[25] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[24] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N40 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[24] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[23] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N41 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[23] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[22] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N42 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[22] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[21] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N43 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[21] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[20] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N44 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[20] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[19] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N45 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[19] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[18] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N46 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[18] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[17] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N47 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[17] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[16] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N48 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[16] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[15] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N49 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[15] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[14] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N50 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[14] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[13] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N51 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[13] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[12] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N52 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[12] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[11] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N53 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[11] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[10] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N54 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[10] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[9] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N55 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[9] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[8] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N56 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[8] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[7] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N57 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[7] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[6] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N58 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[6] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[5] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N59 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[5] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[4] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N60 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[4] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[3] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N61 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[3] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[2] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N62 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[2] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[1] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N63 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[1] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_a_reg[0] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N64 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_a[0] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N0 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[63] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N66 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[63] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[62] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N67 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[62] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[61] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N68 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[61] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[60] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N69 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[60] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[59] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N70 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[59] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[58] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N71 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[58] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[57] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N72 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[57] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[56] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N73 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[56] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[55] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N74 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[55] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[54] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N75 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[54] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[53] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N76 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[53] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[52] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N77 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[52] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[51] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N78 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[51] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[50] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N79 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[50] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[49] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N80 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[49] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[48] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N81 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[48] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[47] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N82 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[47] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[46] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N83 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[46] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[45] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N84 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[45] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[44] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N85 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[44] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[43] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N86 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[43] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[42] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N87 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[42] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[41] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N88 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[41] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[40] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N89 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[40] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[39] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N90 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[39] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[38] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N91 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[38] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[37] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N92 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[37] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[36] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N93 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[36] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[35] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N94 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[35] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[34] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N95 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[34] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[33] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N96 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[33] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[32] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N97 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[32] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[31] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N98 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[31] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[30] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N99 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[30] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[29] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N100 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[29] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[28] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N101 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[28] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[27] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N102 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[27] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[26] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N103 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[26] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[25] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N104 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[25] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[24] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N105 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[24] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[23] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N106 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[23] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[22] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N107 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[22] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[21] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N108 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[21] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[20] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N109 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[20] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[19] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N110 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[19] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[18] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N111 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[18] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[17] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N112 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[17] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[16] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N113 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[16] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[15] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N114 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[15] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[14] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N115 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[14] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[13] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N116 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[13] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[12] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N117 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[12] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[11] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N118 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[11] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[10] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N119 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[10] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[9] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N120 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[9] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[8] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N121 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[8] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[7] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N122 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[7] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[6] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N123 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[6] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[5] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N124 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[5] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[4] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N125 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[4] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[3] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N126 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[3] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[2] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N127 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[2] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[1] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N128 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[1] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 \oprnd_b_reg[0] ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N129 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( oprnd_b[0] ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( N65 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 pswl_carry_reg ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( psw_carry ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( pswl_carry ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_flags ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 pswl_zro_reg ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( psw_zro ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( pswl_zro ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_flags ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 pswl_neg_reg ( .clear ( reset ) , .preset ( 1'b0 ) , 
    .next_state ( psw_neg ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( pswl_neg ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( latch_flags ) , .scan_enable ( 1'b0 ) , 
    .scan_in ( 1'b0 ) ) ;
WVGTECH_NOT I_0 ( .I ( crnt_instrn[3] ) , .Z ( N130 ) ) ;
WVGTECH_OR2 C468 ( .I0 ( crnt_instrn[5] ) , .I1 ( N132 ) , .Z ( N131 ) ) ;
WVGTECH_OR2 C469 ( .I0 ( crnt_instrn[4] ) , .I1 ( N131 ) , .Z ( N133 ) ) ;
WVGTECH_OR2 C470 ( .I0 ( N130 ) , .I1 ( N133 ) , .Z ( N134 ) ) ;
WVGTECH_OR2 C471 ( .I0 ( crnt_instrn[2] ) , .I1 ( N134 ) , .Z ( N135 ) ) ;
WVGTECH_OR2 C472 ( .I0 ( crnt_instrn[1] ) , .I1 ( N135 ) , .Z ( N136 ) ) ;
WVGTECH_OR2 C473 ( .I0 ( crnt_instrn[0] ) , .I1 ( N136 ) , .Z ( N137 ) ) ;
WVGTECH_NOT I_1 ( .I ( N137 ) , .Z ( N138 ) ) ;
WVGTECH_OR2 C475 ( .I0 ( crnt_instrn[6] ) , .I1 ( crnt_instrn[7] ) , 
    .Z ( N132 ) ) ;
WVGTECH_NOT I_2 ( .I ( N132 ) , .Z ( N139 ) ) ;
\*SELECT_OP.3_1_3_1_1_33 C477 (
    .DATA1 ( { 1'b1 } ) ,
    .DATA2 ( { 1'b1 } ) ,
    .DATA3 ( { 1'b0 } ) ,
    .CONTROL1 ( { reset_aluregs } ) ,
    .CONTROL2 ( { N140 } ) ,
    .CONTROL3 ( { N141 } ) ,
    .Z ( { N0 } ) ) ;
\*SELECT_OP.2_64_2_1_64_65 C478 (
    .DATA1 ( { 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 } ) ,
    .DATA2 ( regport_a ) ,
    .CONTROL1 ( { reset_aluregs } ) ,
    .CONTROL2 ( { N140 } ) ,
    .Z ( { N1 , N2 , N3 , N4 , N5 , N6 , N7 , N8 , N9 , N10 , N11 , N12 , 
        N13 , N14 , N15 , N16 , N17 , N18 , N19 , N20 , N21 , N22 , N23 , 
        N24 , N25 , N26 , N27 , N28 , N29 , N30 , N31 , N32 , N33 , N34 , 
        N35 , N36 , N37 , N38 , N39 , N40 , N41 , N42 , N43 , N44 , N45 , 
        N46 , N47 , N48 , N49 , N50 , N51 , N52 , N53 , N54 , N55 , N56 , 
        N57 , N58 , N59 , N60 , N61 , N62 , N63 , N64 } ) ) ;
\*SELECT_OP.2_64_2_1_64_33 C479 (
    .DATA1 ( { crnt_instrn[31] , crnt_instrn[30] , crnt_instrn[29] , 
        crnt_instrn[28] , crnt_instrn[27] , crnt_instrn[26] , 
        crnt_instrn[25] , crnt_instrn[24] , crnt_instrn[23] , 
        crnt_instrn[22] , crnt_instrn[21] , crnt_instrn[20] , 
        crnt_instrn[19] , crnt_instrn[18] , crnt_instrn[17] , 
        crnt_instrn[16] , crnt_instrn[15] , crnt_instrn[14] , 
        crnt_instrn[13] , crnt_instrn[12] , crnt_instrn[11] , 
        crnt_instrn[10] , crnt_instrn[9] , crnt_instrn[8] , crnt_instrn[7] , 
        crnt_instrn[6] , crnt_instrn[5] , crnt_instrn[4] , crnt_instrn[3] , 
        crnt_instrn[2] , crnt_instrn[1] , crnt_instrn[0] , crnt_instrn[31] , 
        crnt_instrn[30] , crnt_instrn[29] , crnt_instrn[28] , 
        crnt_instrn[27] , crnt_instrn[26] , crnt_instrn[25] , 
        crnt_instrn[24] , crnt_instrn[23] , crnt_instrn[22] , 
        crnt_instrn[21] , crnt_instrn[20] , crnt_instrn[19] , 
        crnt_instrn[18] , crnt_instrn[17] , crnt_instrn[16] , 
        crnt_instrn[15] , crnt_instrn[14] , crnt_instrn[13] , 
        crnt_instrn[12] , crnt_instrn[11] , crnt_instrn[10] , crnt_instrn[9] , 
        crnt_instrn[8] , crnt_instrn[7] , crnt_instrn[6] , crnt_instrn[5] , 
        crnt_instrn[4] , crnt_instrn[3] , crnt_instrn[2] , crnt_instrn[1] , 
        crnt_instrn[0] } ) ,
    .DATA2 ( regport_b ) ,
    .CONTROL1 ( { usedata_imm_or_regb } ) ,
    .CONTROL2 ( { N206 } ) ,
    .Z ( { N205 , N204 , N203 , N202 , N201 , N200 , N199 , N198 , N197 , 
        N196 , N195 , N194 , N193 , N192 , N191 , N190 , N189 , N188 , N187 , 
        N186 , N185 , N184 , N183 , N182 , N181 , N180 , N179 , N178 , N177 , 
        N176 , N175 , N174 , N173 , N172 , N171 , N170 , N169 , N168 , N167 , 
        N166 , N165 , N164 , N163 , N162 , N161 , N160 , N159 , N158 , N157 , 
        N156 , N155 , N154 , N153 , N152 , N151 , N150 , N149 , N148 , N147 , 
        N146 , N145 , N144 , N143 , N142 } ) ) ;
\*SELECT_OP.3_1_3_1_1_33 C480 (
    .DATA1 ( { 1'b1 } ) ,
    .DATA2 ( { 1'b1 } ) ,
    .DATA3 ( { 1'b0 } ) ,
    .CONTROL1 ( { reset_aluregs } ) ,
    .CONTROL2 ( { N207 } ) ,
    .CONTROL3 ( { N208 } ) ,
    .Z ( { N65 } ) ) ;
\*SELECT_OP.2_64_2_1_64_65 C481 (
    .DATA1 ( { 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 
        1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 } ) ,
    .DATA2 ( { N205 , N204 , N203 , N202 , N201 , N200 , N199 , N198 , N197 , 
        N196 , N195 , N194 , N193 , N192 , N191 , N190 , N189 , N188 , N187 , 
        N186 , N185 , N184 , N183 , N182 , N181 , N180 , N179 , N178 , N177 , 
        N176 , N175 , N174 , N173 , N172 , N171 , N170 , N169 , N168 , N167 , 
        N166 , N165 , N164 , N163 , N162 , N161 , N160 , N159 , N158 , N157 , 
        N156 , N155 , N154 , N153 , N152 , N151 , N150 , N149 , N148 , N147 , 
        N146 , N145 , N144 , N143 , N142 } ) ,
    .CONTROL1 ( { reset_aluregs } ) ,
    .CONTROL2 ( { N207 } ) ,
    .Z ( { N66 , N67 , N68 , N69 , N70 , N71 , N72 , N73 , N74 , N75 , N76 , 
        N77 , N78 , N79 , N80 , N81 , N82 , N83 , N84 , N85 , N86 , N87 , 
        N88 , N89 , N90 , N91 , N92 , N93 , N94 , N95 , N96 , N97 , N98 , 
        N99 , N100 , N101 , N102 , N103 , N104 , N105 , N106 , N107 , N108 , 
        N109 , N110 , N111 , N112 , N113 , N114 , N115 , N116 , N117 , N118 , 
        N119 , N120 , N121 , N122 , N123 , N124 , N125 , N126 , N127 , N128 , 
        N129 } ) ) ;
\*SELECT_OP.2_64_2_1_64_33 C482 (
    .DATA1 ( { crnt_instrn[31] , crnt_instrn[30] , crnt_instrn[29] , 
        crnt_instrn[28] , crnt_instrn[27] , crnt_instrn[26] , 
        crnt_instrn[25] , crnt_instrn[24] , crnt_instrn[23] , 
        crnt_instrn[22] , crnt_instrn[21] , crnt_instrn[20] , 
        crnt_instrn[19] , crnt_instrn[18] , crnt_instrn[17] , 
        crnt_instrn[16] , crnt_instrn[15] , crnt_instrn[14] , 
        crnt_instrn[13] , crnt_instrn[12] , crnt_instrn[11] , 
        crnt_instrn[10] , crnt_instrn[9] , crnt_instrn[8] , crnt_instrn[7] , 
        crnt_instrn[6] , crnt_instrn[5] , crnt_instrn[4] , crnt_instrn[3] , 
        crnt_instrn[2] , crnt_instrn[1] , crnt_instrn[0] , crnt_instrn[31] , 
        crnt_instrn[30] , crnt_instrn[29] , crnt_instrn[28] , 
        crnt_instrn[27] , crnt_instrn[26] , crnt_instrn[25] , 
        crnt_instrn[24] , crnt_instrn[23] , crnt_instrn[22] , 
        crnt_instrn[21] , crnt_instrn[20] , crnt_instrn[19] , 
        crnt_instrn[18] , crnt_instrn[17] , crnt_instrn[16] , 
        crnt_instrn[15] , crnt_instrn[14] , crnt_instrn[13] , 
        crnt_instrn[12] , crnt_instrn[11] , crnt_instrn[10] , crnt_instrn[9] , 
        crnt_instrn[8] , crnt_instrn[7] , crnt_instrn[6] , crnt_instrn[5] , 
        crnt_instrn[4] , crnt_instrn[3] , crnt_instrn[2] , crnt_instrn[1] , 
        crnt_instrn[0] } ) ,
    .DATA2 ( op_result ) ,
    .CONTROL1 ( { usedata_imm_or_alu } ) ,
    .CONTROL2 ( { N209 } ) ,
    .Z ( regport_c ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C483 (
    .DATA1 ( { pswl_zro } ) ,
    .DATA2 ( { alu_zro } ) ,
    .CONTROL1 ( { N138 } ) ,
    .CONTROL2 ( { N210 } ) ,
    .Z ( { zro_flag } ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C484 (
    .DATA1 ( { pswl_neg } ) ,
    .DATA2 ( { alu_neg } ) ,
    .CONTROL1 ( { N138 } ) ,
    .CONTROL2 ( { N210 } ) ,
    .Z ( { neg_flag } ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C485 (
    .DATA1 ( { pswl_carry } ) ,
    .DATA2 ( { alu_carry } ) ,
    .CONTROL1 ( { N138 } ) ,
    .CONTROL2 ( { N210 } ) ,
    .Z ( { carry_flag } ) ) ;
\*SELECT_OP.2_7_2_1_7_33 C486 ( .DATA1 ( crnt_instrn[13:7] ) , 
    .DATA2 ( crnt_instrn[20:14] ) ,
    .CONTROL1 ( { N211 } ) ,
    .CONTROL2 ( { N212 } ) ,
    .Z ( addr_a ) ) ;
WVGTECH_OR2 C491 ( .I0 ( rd_oprnd_a ) , .I1 ( reset_aluregs ) , .Z ( N213 ) ) ;
WVGTECH_NOT I_3 ( .I ( N213 ) , .Z ( N141 ) ) ;
WVGTECH_OR2 C495 ( .I0 ( rd_oprnd_b ) , .I1 ( reset_aluregs ) , .Z ( N214 ) ) ;
WVGTECH_NOT I_4 ( .I ( N214 ) , .Z ( N208 ) ) ;
WVGTECH_NOT I_5 ( .I ( usedata_imm_or_regb ) , .Z ( N206 ) ) ;
WVGTECH_NOT I_6 ( .I ( reset_aluregs ) , .Z ( N215 ) ) ;
WVGTECH_AND2 C501 ( .I0 ( rd_oprnd_a ) , .I1 ( N215 ) , .Z ( N140 ) ) ;
WVGTECH_AND2 C503 ( .I0 ( rd_oprnd_b ) , .I1 ( N215 ) , .Z ( N207 ) ) ;
WVGTECH_NOT I_7 ( .I ( usedata_imm_or_alu ) , .Z ( N209 ) ) ;
WVGTECH_NOT I_8 ( .I ( N138 ) , .Z ( N210 ) ) ;
WVGTECH_AND2 C510 ( .I0 ( N139 ) , .I1 ( crnt_instrn[4] ) , .Z ( N211 ) ) ;
WVGTECH_NOT I_9 ( .I ( N211 ) , .Z ( N212 ) ) ;
endmodule


module control ( clk , reset , crnt_instrn , current_state , neg_flag , 
    carry_flag , zro_flag , latch_instr , rd_oprnd_a , rd_oprnd_b , 
    latch_flags , latch_result , write_regc , usedata_imm_or_regb , 
    usedata_imm_or_alu , reset_aluregs , endofinstrn , pushenbl , popenbl , 
    out_valid ) ;
input  clk ;
input  reset ;
input  [31:0] crnt_instrn ;
input  [2:0] current_state ;
input  neg_flag ;
input  carry_flag ;
input  zro_flag ;
output latch_instr ;
output rd_oprnd_a ;
output rd_oprnd_b ;
output latch_flags ;
output latch_result ;
output write_regc ;
output usedata_imm_or_regb ;
output usedata_imm_or_alu ;
output reset_aluregs ;
output endofinstrn ;
output pushenbl ;
output popenbl ;
output out_valid ;

WVGTECH_AND2 C28 ( .I0 ( N1 ) , .I1 ( N2 ) , .Z ( N0 ) ) ;
WVGTECH_AND2 C29 ( .I0 ( N0 ) , .I1 ( N4 ) , .Z ( N3 ) ) ;
WVGTECH_OR2 C31 ( .I0 ( current_state[2] ) , .I1 ( current_state[1] ) , 
    .Z ( N5 ) ) ;
WVGTECH_OR2 C32 ( .I0 ( N5 ) , .I1 ( N4 ) , .Z ( N6 ) ) ;
WVGTECH_OR2 C35 ( .I0 ( current_state[2] ) , .I1 ( N2 ) , .Z ( N7 ) ) ;
WVGTECH_OR2 C36 ( .I0 ( N7 ) , .I1 ( current_state[0] ) , .Z ( N8 ) ) ;
WVGTECH_OR2 C41 ( .I0 ( N7 ) , .I1 ( N4 ) , .Z ( N9 ) ) ;
WVGTECH_OR2 C44 ( .I0 ( N1 ) , .I1 ( current_state[1] ) , .Z ( N10 ) ) ;
WVGTECH_OR2 C45 ( .I0 ( N10 ) , .I1 ( current_state[0] ) , .Z ( N11 ) ) ;
WVGTECH_AND2 C47 ( .I0 ( current_state[2] ) , .I1 ( current_state[0] ) , 
    .Z ( N12 ) ) ;
WVGTECH_AND2 C48 ( .I0 ( current_state[2] ) , .I1 ( current_state[1] ) , 
    .Z ( N13 ) ) ;
WVGTECH_AND2 C61 ( .I0 ( N15 ) , .I1 ( N16 ) , .Z ( N14 ) ) ;
WVGTECH_OR2 C63 ( .I0 ( crnt_instrn[31] ) , .I1 ( N16 ) , .Z ( N17 ) ) ;
WVGTECH_OR2 C66 ( .I0 ( N15 ) , .I1 ( crnt_instrn[30] ) , .Z ( N18 ) ) ;
WVGTECH_AND2 C68 ( .I0 ( crnt_instrn[31] ) , .I1 ( crnt_instrn[30] ) , 
    .Z ( N19 ) ) ;
\*SEQGEN.1839103_120_2 usedata_imm_or_alu_reg ( .clear ( reset ) , 
    .preset ( 1'b0 ) , .next_state ( data_imm_or_alu ) , .clocked_on ( clk ) , 
    .data_in ( 1'b0 ) , .enable ( 1'b0 ) , .Q ( usedata_imm_or_alu ) , 
    .synch_clear ( 1'b0 ) , .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , 
    .synch_enable ( 1'b1 ) , .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_120_2 usedata_imm_or_regb_reg ( .clear ( reset ) , 
    .preset ( 1'b0 ) , .next_state ( data_imm_or_regb ) , 
    .clocked_on ( clk ) , .data_in ( 1'b0 ) , .enable ( 1'b0 ) , 
    .Q ( usedata_imm_or_regb ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( 1'b1 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
\*SEQGEN.1839103_000_2 endofinstrn_reg ( .clear ( 1'b0 ) , .preset ( 1'b0 ) , 
    .next_state ( N20 ) , .clocked_on ( clk ) , .data_in ( 1'b0 ) , 
    .enable ( 1'b0 ) , .Q ( endofinstrn ) , .synch_clear ( 1'b0 ) , 
    .synch_preset ( 1'b0 ) , .synch_toggle ( 1'b0 ) , .synch_enable ( 1'b1 ) , 
    .scan_enable ( 1'b0 ) , .scan_in ( 1'b0 ) ) ;
WVGTECH_NOT I_0 ( .I ( current_state[2] ) , .Z ( N1 ) ) ;
WVGTECH_OR2 C206 ( .I0 ( current_state[1] ) , .I1 ( N1 ) , .Z ( N21 ) ) ;
WVGTECH_OR2 C207 ( .I0 ( current_state[0] ) , .I1 ( N21 ) , .Z ( N22 ) ) ;
WVGTECH_NOT I_1 ( .I ( N22 ) , .Z ( N20 ) ) ;
WVGTECH_OR2 C209 ( .I0 ( crnt_instrn[30] ) , .I1 ( crnt_instrn[31] ) , 
    .Z ( N23 ) ) ;
WVGTECH_NOT I_2 ( .I ( N23 ) , .Z ( N24 ) ) ;
WVGTECH_NOT I_3 ( .I ( crnt_instrn[30] ) , .Z ( N16 ) ) ;
WVGTECH_OR2 C212 ( .I0 ( N16 ) , .I1 ( crnt_instrn[31] ) , .Z ( N25 ) ) ;
WVGTECH_NOT I_4 ( .I ( N25 ) , .Z ( N26 ) ) ;
WVGTECH_NOT I_5 ( .I ( crnt_instrn[31] ) , .Z ( N15 ) ) ;
WVGTECH_OR2 C215 ( .I0 ( crnt_instrn[30] ) , .I1 ( N15 ) , .Z ( N27 ) ) ;
WVGTECH_NOT I_6 ( .I ( N27 ) , .Z ( N28 ) ) ;
WVGTECH_AND2 C223 ( .I0 ( crnt_instrn[30] ) , .I1 ( crnt_instrn[31] ) , 
    .Z ( N29 ) ) ;
WVGTECH_NOT I_7 ( .I ( crnt_instrn[21] ) , .Z ( N30 ) ) ;
WVGTECH_NOT I_8 ( .I ( crnt_instrn[20] ) , .Z ( N31 ) ) ;
WVGTECH_NOT I_9 ( .I ( crnt_instrn[19] ) , .Z ( N32 ) ) ;
WVGTECH_NOT I_10 ( .I ( crnt_instrn[18] ) , .Z ( N33 ) ) ;
WVGTECH_NOT I_11 ( .I ( crnt_instrn[17] ) , .Z ( N34 ) ) ;
WVGTECH_NOT I_12 ( .I ( crnt_instrn[16] ) , .Z ( N35 ) ) ;
WVGTECH_OR2 C236 ( .I0 ( crnt_instrn[22] ) , .I1 ( crnt_instrn[23] ) , 
    .Z ( N36 ) ) ;
WVGTECH_OR2 C237 ( .I0 ( N30 ) , .I1 ( N36 ) , .Z ( N37 ) ) ;
WVGTECH_OR2 C238 ( .I0 ( N31 ) , .I1 ( N37 ) , .Z ( N38 ) ) ;
WVGTECH_OR2 C239 ( .I0 ( N32 ) , .I1 ( N38 ) , .Z ( N39 ) ) ;
WVGTECH_OR2 C240 ( .I0 ( N33 ) , .I1 ( N39 ) , .Z ( N40 ) ) ;
WVGTECH_OR2 C241 ( .I0 ( N34 ) , .I1 ( N40 ) , .Z ( N41 ) ) ;
WVGTECH_OR2 C242 ( .I0 ( N35 ) , .I1 ( N41 ) , .Z ( N42 ) ) ;
WVGTECH_NOT I_13 ( .I ( N42 ) , .Z ( N43 ) ) ;
WVGTECH_OR2 C246 ( .I0 ( crnt_instrn[21] ) , .I1 ( N36 ) , .Z ( N44 ) ) ;
WVGTECH_OR2 C247 ( .I0 ( crnt_instrn[20] ) , .I1 ( N44 ) , .Z ( N45 ) ) ;
WVGTECH_OR2 C248 ( .I0 ( crnt_instrn[19] ) , .I1 ( N45 ) , .Z ( N46 ) ) ;
WVGTECH_OR2 C249 ( .I0 ( crnt_instrn[18] ) , .I1 ( N46 ) , .Z ( N47 ) ) ;
WVGTECH_OR2 C250 ( .I0 ( crnt_instrn[17] ) , .I1 ( N47 ) , .Z ( N48 ) ) ;
WVGTECH_OR2 C251 ( .I0 ( N35 ) , .I1 ( N48 ) , .Z ( N49 ) ) ;
WVGTECH_NOT I_14 ( .I ( N49 ) , .Z ( N50 ) ) ;
WVGTECH_OR2 C259 ( .I0 ( crnt_instrn[16] ) , .I1 ( N48 ) , .Z ( N51 ) ) ;
WVGTECH_NOT I_15 ( .I ( N51 ) , .Z ( N52 ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C261 (
    .DATA1 ( { N53 } ) ,
    .DATA2 ( { neg_flag } ) ,
    .CONTROL1 ( crnt_instrn[25] ) ,
    .CONTROL2 ( { N54 } ) ,
    .Z ( { neg } ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C262 (
    .DATA1 ( { N55 } ) ,
    .DATA2 ( { zro_flag } ) ,
    .CONTROL1 ( crnt_instrn[25] ) ,
    .CONTROL2 ( { N54 } ) ,
    .Z ( { zro } ) ) ;
WVGTECH_NOT I_16 ( .I ( crnt_instrn[25] ) , .Z ( jmp ) ) ;
\*SELECT_OP.4_1_4_1_1_33 C264 (
    .DATA1 ( { neg } ) ,
    .DATA2 ( { zro } ) ,
    .DATA3 ( { jmp } ) ,
    .DATA4 ( { 1'b0 } ) ,
    .CONTROL1 ( { N52 } ) ,
    .CONTROL2 ( { N50 } ) ,
    .CONTROL3 ( { N43 } ) ,
    .CONTROL4 ( { N56 } ) ,
    .Z ( { take_branch } ) ) ;
\*SELECT_OP.4_1_4_1_1_33 C265 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .DATA3 ( { 1'b1 } ) ,
    .DATA4 ( { 1'b0 } ) ,
    .CONTROL1 ( { N14 } ) ,
    .CONTROL2 ( { N58 } ) ,
    .CONTROL3 ( { N59 } ) ,
    .CONTROL4 ( { N19 } ) ,
    .Z ( { N57 } ) ) ;
\*SELECT_OP.4_1_4_1_1_33 C266 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .DATA3 ( { 1'b0 } ) ,
    .DATA4 ( { 1'b1 } ) ,
    .CONTROL1 ( { N14 } ) ,
    .CONTROL2 ( { N58 } ) ,
    .CONTROL3 ( { N59 } ) ,
    .CONTROL4 ( { N19 } ) ,
    .Z ( { N60 } ) ) ;
\*SELECT_OP.4_1_4_1_1_33 C267 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b1 } ) ,
    .DATA3 ( { 1'b1 } ) ,
    .DATA4 ( { 1'b0 } ) ,
    .CONTROL1 ( { N14 } ) ,
    .CONTROL2 ( { N58 } ) ,
    .CONTROL3 ( { N59 } ) ,
    .CONTROL4 ( { N19 } ) ,
    .Z ( { N61 } ) ) ;
\*SELECT_OP.4_1_4_1_1_33 C268 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b1 } ) ,
    .DATA3 ( { 1'b1 } ) ,
    .DATA4 ( { 1'b1 } ) ,
    .CONTROL1 ( { N14 } ) ,
    .CONTROL2 ( { N58 } ) ,
    .CONTROL3 ( { N59 } ) ,
    .CONTROL4 ( { N19 } ) ,
    .Z ( { N62 } ) ) ;
\*SELECT_OP.2_1_2_1_1_33 C269 (
    .DATA1 ( { 1'b1 } ) ,
    .DATA2 ( { N61 } ) ,
    .CONTROL1 ( { N64 } ) ,
    .CONTROL2 ( { N65 } ) ,
    .Z ( { N63 } ) ) ;
\*SELECT_OP.6_1_6_1_1_33 C270 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .DATA3 ( { 1'b0 } ) ,
    .DATA4 ( { N66 } ) ,
    .DATA5 ( { 1'b0 } ) ,
    .DATA6 ( { 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N67 } ) ,
    .CONTROL3 ( { N68 } ) ,
    .CONTROL4 ( { N69 } ) ,
    .CONTROL5 ( { N70 } ) ,
    .CONTROL6 ( { N71 } ) ,
    .Z ( { pushenbl } ) ) ;
\*SELECT_OP.6_1_6_1_1_33 C271 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .DATA3 ( { 1'b0 } ) ,
    .DATA4 ( { N72 } ) ,
    .DATA5 ( { 1'b0 } ) ,
    .DATA6 ( { 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N67 } ) ,
    .CONTROL3 ( { N68 } ) ,
    .CONTROL4 ( { N69 } ) ,
    .CONTROL5 ( { N70 } ) ,
    .CONTROL6 ( { N71 } ) ,
    .Z ( { popenbl } ) ) ;
\*SELECT_OP.6_1_6_1_1_33 C272 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .DATA3 ( { 1'b0 } ) ,
    .DATA4 ( { N73 } ) ,
    .DATA5 ( { 1'b0 } ) ,
    .DATA6 ( { 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N67 } ) ,
    .CONTROL3 ( { N68 } ) ,
    .CONTROL4 ( { N69 } ) ,
    .CONTROL5 ( { N70 } ) ,
    .CONTROL6 ( { N71 } ) ,
    .Z ( { latch_flags } ) ) ;
\*SELECT_OP.6_1_6_1_1_33 C273 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .DATA3 ( { 1'b0 } ) ,
    .DATA4 ( { N74 } ) ,
    .DATA5 ( { 1'b0 } ) ,
    .DATA6 ( { 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N67 } ) ,
    .CONTROL3 ( { N68 } ) ,
    .CONTROL4 ( { N69 } ) ,
    .CONTROL5 ( { N70 } ) ,
    .CONTROL6 ( { N71 } ) ,
    .Z ( { latch_result } ) ) ;
\*SELECT_OP.6_1_6_1_1_33 C274 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .DATA3 ( { N63 } ) ,
    .DATA4 ( { 1'b0 } ) ,
    .DATA5 ( { 1'b0 } ) ,
    .DATA6 ( { 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N67 } ) ,
    .CONTROL3 ( { N68 } ) ,
    .CONTROL4 ( { N69 } ) ,
    .CONTROL5 ( { N70 } ) ,
    .CONTROL6 ( { N71 } ) ,
    .Z ( { rd_oprnd_a } ) ) ;
\*SELECT_OP.6_1_6_1_1_33 C275 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .DATA3 ( { N62 } ) ,
    .DATA4 ( { 1'b0 } ) ,
    .DATA5 ( { 1'b0 } ) ,
    .DATA6 ( { 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N67 } ) ,
    .CONTROL3 ( { N68 } ) ,
    .CONTROL4 ( { N69 } ) ,
    .CONTROL5 ( { N70 } ) ,
    .CONTROL6 ( { N71 } ) ,
    .Z ( { rd_oprnd_b } ) ) ;
\*SELECT_OP.6_1_6_1_1_33 C276 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .DATA3 ( { N57 } ) ,
    .DATA4 ( { N57 } ) ,
    .DATA5 ( { N57 } ) ,
    .DATA6 ( { 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N67 } ) ,
    .CONTROL3 ( { N68 } ) ,
    .CONTROL4 ( { N69 } ) ,
    .CONTROL5 ( { N70 } ) ,
    .CONTROL6 ( { N71 } ) ,
    .Z ( { data_imm_or_regb } ) ) ;
\*SELECT_OP.6_1_6_1_1_33 C277 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .DATA3 ( { N60 } ) ,
    .DATA4 ( { N60 } ) ,
    .DATA5 ( { N60 } ) ,
    .DATA6 ( { 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N67 } ) ,
    .CONTROL3 ( { N68 } ) ,
    .CONTROL4 ( { N69 } ) ,
    .CONTROL5 ( { N70 } ) ,
    .CONTROL6 ( { N71 } ) ,
    .Z ( { data_imm_or_alu } ) ) ;
\*SELECT_OP.6_1_6_1_1_33 C278 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b1 } ) ,
    .DATA3 ( { 1'b0 } ) ,
    .DATA4 ( { 1'b0 } ) ,
    .DATA5 ( { 1'b0 } ) ,
    .DATA6 ( { 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N67 } ) ,
    .CONTROL3 ( { N68 } ) ,
    .CONTROL4 ( { N69 } ) ,
    .CONTROL5 ( { N70 } ) ,
    .CONTROL6 ( { N71 } ) ,
    .Z ( { latch_instr } ) ) ;
\*SELECT_OP.6_1_6_1_1_33 C279 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b1 } ) ,
    .DATA3 ( { 1'b0 } ) ,
    .DATA4 ( { 1'b0 } ) ,
    .DATA5 ( { 1'b0 } ) ,
    .DATA6 ( { 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N67 } ) ,
    .CONTROL3 ( { N68 } ) ,
    .CONTROL4 ( { N69 } ) ,
    .CONTROL5 ( { N70 } ) ,
    .CONTROL6 ( { N71 } ) ,
    .Z ( { reset_aluregs } ) ) ;
\*SELECT_OP.6_1_6_1_1_33 C280 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .DATA3 ( { 1'b0 } ) ,
    .DATA4 ( { 1'b0 } ) ,
    .DATA5 ( { N23 } ) ,
    .DATA6 ( { 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N67 } ) ,
    .CONTROL3 ( { N68 } ) ,
    .CONTROL4 ( { N69 } ) ,
    .CONTROL5 ( { N70 } ) ,
    .CONTROL6 ( { N71 } ) ,
    .Z ( { write_regc } ) ) ;
\*SELECT_OP.6_1_6_1_1_33 C281 (
    .DATA1 ( { 1'b0 } ) ,
    .DATA2 ( { 1'b0 } ) ,
    .DATA3 ( { 1'b0 } ) ,
    .DATA4 ( { N64 } ) ,
    .DATA5 ( { 1'b0 } ) ,
    .DATA6 ( { 1'b0 } ) ,
    .CONTROL1 ( { N3 } ) ,
    .CONTROL2 ( { N67 } ) ,
    .CONTROL3 ( { N68 } ) ,
    .CONTROL4 ( { N69 } ) ,
    .CONTROL5 ( { N70 } ) ,
    .CONTROL6 ( { N71 } ) ,
    .Z ( { out_valid } ) ) ;
WVGTECH_NOT I_17 ( .I ( crnt_instrn[25] ) , .Z ( N54 ) ) ;
WVGTECH_NOT I_18 ( .I ( neg_flag ) , .Z ( N53 ) ) ;
WVGTECH_NOT I_19 ( .I ( zro_flag ) , .Z ( N55 ) ) ;
WVGTECH_OR2 C291 ( .I0 ( N50 ) , .I1 ( N52 ) , .Z ( N75 ) ) ;
WVGTECH_OR2 C292 ( .I0 ( N43 ) , .I1 ( N75 ) , .Z ( N76 ) ) ;
WVGTECH_NOT I_20 ( .I ( N76 ) , .Z ( N56 ) ) ;
WVGTECH_NOT I_21 ( .I ( current_state[1] ) , .Z ( N2 ) ) ;
WVGTECH_NOT I_22 ( .I ( current_state[0] ) , .Z ( N4 ) ) ;
WVGTECH_NOT I_23 ( .I ( N6 ) , .Z ( N67 ) ) ;
WVGTECH_NOT I_24 ( .I ( N8 ) , .Z ( N68 ) ) ;
WVGTECH_NOT I_25 ( .I ( N9 ) , .Z ( N69 ) ) ;
WVGTECH_NOT I_26 ( .I ( N11 ) , .Z ( N70 ) ) ;
WVGTECH_OR2 C301 ( .I0 ( N12 ) , .I1 ( N13 ) , .Z ( N71 ) ) ;
WVGTECH_NOT I_27 ( .I ( N17 ) , .Z ( N58 ) ) ;
WVGTECH_NOT I_28 ( .I ( N18 ) , .Z ( N59 ) ) ;
WVGTECH_AND2 C316 ( .I0 ( N24 ) , .I1 ( crnt_instrn[24] ) , .Z ( N64 ) ) ;
WVGTECH_NOT I_29 ( .I ( N64 ) , .Z ( N65 ) ) ;
WVGTECH_AND3 C319 ( .I0 ( N24 ) , .I1 ( take_branch ) , 
    .I2 ( crnt_instrn[28] ) , .Z ( N66 ) ) ;
WVGTECH_AND2 C322 ( .I0 ( N24 ) , .I1 ( crnt_instrn[27] ) , .Z ( N72 ) ) ;
WVGTECH_OR2 C324 ( .I0 ( N26 ) , .I1 ( N28 ) , .Z ( N73 ) ) ;
WVGTECH_OR3 C326 ( .I0 ( N26 ) , .I1 ( N29 ) , .I2 ( N28 ) , .Z ( N74 ) ) ;
endmodule


module risc_core ( clk , reset , scan_en , test_mode , instrn , 
    xecutng_instrn , endofinstrn , psw , rd_instr , result_data , out_valid , 
    half_full , stack_full ) ;
input  clk ;
input  reset ;
input  scan_en ;
input  test_mode ;
input  [31:0] instrn ;
output [31:0] xecutng_instrn ;
output endofinstrn ;
output [10:0] psw ;
output rd_instr ;
output [63:0] result_data ;
output out_valid ;
output half_full ;
output stack_full ;

wire [63:0] oprnd_a ;
wire [63:0] oprnd_b ;
wire [63:0] op_result ;
wire [31:0] crnt_instrn_2 ;
wire [2:0] current_state ;
wire [63:0] regport_b ;
wire [6:0] addr_a ;
wire [63:0] regport_c ;
wire [7:0] return_addr ;

alu alu ( .clk ( clk ) , .reset ( reset ) , .oprnd_a ( oprnd_a ) , 
    .oprnd_b ( oprnd_b ) , .alu_op ( xecutng_instrn[29:24] ) , 
    .latch_result ( latch_result ) , .latch_flags ( latch_flags ) , 
    .lachd_result ( op_result ) , .zro_flag ( alu_zro ) , 
    .neg_flag ( alu_neg ) , .carry_flag ( alu_carry ) ) ;
control control ( .clk ( clk ) , .reset ( reset ) , 
    .crnt_instrn ( crnt_instrn_2 ) , .current_state ( current_state ) , 
    .neg_flag ( psw[1] ) , .carry_flag ( psw[0] ) , .zro_flag ( psw[2] ) , 
    .latch_instr ( rd_instr ) , .rd_oprnd_a ( rd_oprnd_a ) , 
    .rd_oprnd_b ( rd_oprnd_b ) , .latch_flags ( latch_flags ) , 
    .latch_result ( latch_result ) , .write_regc ( write_regc ) , 
    .usedata_imm_or_regb ( usedata_imm_or_regb ) , 
    .usedata_imm_or_alu ( usedata_imm_or_alu ) , 
    .reset_aluregs ( reset_aluregs ) , .endofinstrn ( endofinstrn ) , 
    .pushenbl ( pushenbl ) , .popenbl ( popenbl ) , .out_valid ( out_valid ) ) ;
data_path data_path ( .clk ( clk ) , .reset ( reset ) , 
    .reset_aluregs ( reset_aluregs ) , .rd_oprnd_a ( rd_oprnd_a ) , 
    .rd_oprnd_b ( rd_oprnd_b ) , 
    .usedata_imm_or_regb ( usedata_imm_or_regb ) , 
    .usedata_imm_or_alu ( usedata_imm_or_alu ) , 
    .latch_flags ( latch_flags ) , .alu_zro ( alu_zro ) , 
    .alu_neg ( alu_neg ) , .alu_carry ( alu_carry ) , 
    .psw_zro ( \popdataout[10] ) , .psw_neg ( \popdataout[9] ) , 
    .psw_carry ( \popdataout[8] ) , .crnt_instrn ( crnt_instrn_2 ) , 
    .regport_a ( result_data ) , .regport_b ( regport_b ) , 
    .op_result ( op_result ) , .zro_flag ( psw[2] ) , .neg_flag ( psw[1] ) , 
    .carry_flag ( psw[0] ) , .addr_a ( addr_a ) , .oprnd_a ( oprnd_a ) , 
    .oprnd_b ( oprnd_b ) , .regport_c ( regport_c ) ) ;
instrn_lat instrn_lat ( .clk ( clk ) , .instrn ( instrn ) , 
    .latch_instr ( rd_instr ) , .crnt_instrn_1 ( xecutng_instrn ) , 
    .crnt_instrn_2 ( crnt_instrn_2 ) ) ;
prgrm_cnt_top prgrm_cnt_top ( .clk ( clk ) , .reset ( reset ) , 
    .crnt_instrn ( crnt_instrn_2 ) , .zro_flag ( psw[2] ) , 
    .carry_flag ( psw[0] ) , .neg_flag ( psw[1] ) , 
    .return_addr ( return_addr ) , .current_state ( current_state ) , 
    .PC ( psw[10:3] ) ) ;
reg_file_use_rams1 reg_file ( .clk ( clk ) , .reset ( reset ) , 
    .addr_a ( addr_a ) , .addr_b ( xecutng_instrn[13:7] ) , 
    .addr_c ( xecutng_instrn[6:0] ) , .regport_c ( regport_c ) , 
    .write_regc ( write_regc ) , .regport_a ( result_data ) , 
    .regport_b ( regport_b ) ) ;
stack_top stack_top ( .clk ( clk ) , .reset ( reset ) , 
    .pushenbl ( pushenbl ) , .popenbl ( popenbl ) ,
    .pushdatain ( { 1'b0 , psw[2] , psw[1] , psw[0] , psw[10] , psw[9] , 
        psw[8] , psw[7] , psw[6] , psw[5] , psw[4] , psw[3] } ) ,
    .popdataout ( { \popdataout[11] , \popdataout[10] , \popdataout[9] , 
        \popdataout[8] , return_addr[7] , return_addr[6] , return_addr[5] , 
        return_addr[4] , return_addr[3] , return_addr[2] , return_addr[1] , 
        return_addr[0] } ) ,
    .stack_full ( stack_full ) ) ;
endmodule


