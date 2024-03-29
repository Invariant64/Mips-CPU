`define OPCODE_SPECIAL 6'b000000
`define OPCODE_ADDI 6'b001000
`define OPCODE_ADDIU 6'b001001
`define OPCODE_ORI 6'b001101
`define OPCODE_LW 6'b100011
`define OPCODE_SW 6'b101011
`define OPCODE_LUI 6'b001111
`define OPCODE_J 6'b000010
`define OPCODE_JAL 6'b000011
`define OPCODE_BEQ 6'b000100

`define FUNCT_ADDU 6'b100001
`define FUNCT_SUBU 6'b100011
`define FUNCT_SLT 6'b101010
`define FUNCT_JR 6'b001000

`define INST_ADDI 1
`define INST_ADDIU 2
`define INST_ORI 3
`define INST_LW 4
`define INST_SW 5
`define INST_LUI 6
`define INST_J 7
`define INST_JAL 8
`define INST_BEQ 9
`define INST_ADDU 10
`define INST_SUBU 11
`define INST_SLT 12
`define INST_JR 13

`define ALU_OP_ADD 2'b00
`define ALU_OP_SUB 2'b01
`define ALU_OP_OR 2'b10
`define ALU_OP_LUI 2'b11

`define ALU_SRC_REG 1'b0
`define ALU_SRC_EXT 1'b1

`define EXT_ZERO 1'b0
`define EXT_SIGN 1'b1

`define REG_WRITE_SRC_ALU 3'b000
`define REG_WRITE_SRC_MEM 3'b001
`define REG_WRITE_SRC_ZERO 3'b010
`define REG_WRITE_SRC_ONE 3'b011
`define REG_WRITE_SRC_PC 3'b100
`define REG_WRITE_SRC_SRA 3'b101

`define REG_WRITE_ADDR_RT 2'b00
`define REG_WRITE_ADDR_RD 2'b01
`define REG_WRITE_ADDR_OVERFLOW 2'b10
`define REG_WRITE_ADDR_NPC 2'b11

`define NPC_SEL_NORMAL 2'b00
`define NPC_SEL_RELATIVE 2'b01
`define NPC_SEL_NRELATIVE 2'b10
`define NPC_SEL_REG 2'b11

`define MEM_OP_WORD 1'b0
`define MEM_OP_BYTE 1'b1
