`include "mips.v"

module mips_tb;

    reg clk;
    reg rst;

    wire zero, overflow, positive;
    wire [31:0] pc;
    wire [31:0] gpr_data0, gpr_data1, gpr_data2, gpr_data3, gpr_data4, gpr_data5, gpr_data6, gpr_data7, gpr_data8, gpr_data9, gpr_data10, gpr_data11, gpr_data12, gpr_data13, gpr_data14, gpr_data15, gpr_data16, gpr_data17, gpr_data18, gpr_data19, gpr_data20, gpr_data21, gpr_data22, gpr_data23, gpr_data24, gpr_data25, gpr_data26, gpr_data27, gpr_data28, gpr_data29, gpr_data30, gpr_data31;

    assign gpr_data0 = mips_1.datapath_1.gpr_1.rgs[0];
    assign gpr_data1 = mips_1.datapath_1.gpr_1.rgs[1];
    assign gpr_data2 = mips_1.datapath_1.gpr_1.rgs[2];
    assign gpr_data3 = mips_1.datapath_1.gpr_1.rgs[3];
    assign gpr_data4 = mips_1.datapath_1.gpr_1.rgs[4];
    assign gpr_data5 = mips_1.datapath_1.gpr_1.rgs[5];
    assign gpr_data6 = mips_1.datapath_1.gpr_1.rgs[6];
    assign gpr_data7 = mips_1.datapath_1.gpr_1.rgs[7];
    assign gpr_data8 = mips_1.datapath_1.gpr_1.rgs[8];
    assign gpr_data9 = mips_1.datapath_1.gpr_1.rgs[9];
    assign gpr_data10 = mips_1.datapath_1.gpr_1.rgs[10];
    assign gpr_data11 = mips_1.datapath_1.gpr_1.rgs[11];
    assign gpr_data12 = mips_1.datapath_1.gpr_1.rgs[12];
    assign gpr_data13 = mips_1.datapath_1.gpr_1.rgs[13];
    assign gpr_data14 = mips_1.datapath_1.gpr_1.rgs[14];
    assign gpr_data15 = mips_1.datapath_1.gpr_1.rgs[15];
    assign gpr_data16 = mips_1.datapath_1.gpr_1.rgs[16];
    assign gpr_data17 = mips_1.datapath_1.gpr_1.rgs[17];
    assign gpr_data18 = mips_1.datapath_1.gpr_1.rgs[18];
    assign gpr_data19 = mips_1.datapath_1.gpr_1.rgs[19];
    assign gpr_data20 = mips_1.datapath_1.gpr_1.rgs[20];
    assign gpr_data21 = mips_1.datapath_1.gpr_1.rgs[21];
    assign gpr_data22 = mips_1.datapath_1.gpr_1.rgs[22];
    assign gpr_data23 = mips_1.datapath_1.gpr_1.rgs[23];
    assign gpr_data24 = mips_1.datapath_1.gpr_1.rgs[24];
    assign gpr_data25 = mips_1.datapath_1.gpr_1.rgs[25];
    assign gpr_data26 = mips_1.datapath_1.gpr_1.rgs[26];
    assign gpr_data27 = mips_1.datapath_1.gpr_1.rgs[27];
    assign gpr_data28 = mips_1.datapath_1.gpr_1.rgs[28];
    assign gpr_data29 = mips_1.datapath_1.gpr_1.rgs[29];
    assign gpr_data30 = mips_1.datapath_1.gpr_1.rgs[30];
    assign gpr_data31 = mips_1.datapath_1.gpr_1.rgs[31];

    assign zero = mips_1.datapath_1.alu_1.zero;
    assign positive = mips_1.datapath_1.alu_1.positive;
    assign pc = mips_1.datapath_1.ifu_1.pc;
    assign overflow = mips_1.datapath_1.alu_1.overflow && mips_1.datapath_1.controller_1.w_overflow_ctl;

    mips mips_1(
        .clk(clk),
        .rst(rst)
    );

    initial begin
        clk = 1'b0;
        #5 rst = 1'b1;
        #5 rst = 1'b0;
        $readmemh("p1-test-code.txt", mips_1.datapath_1.ifu_1.i1.im);

        $dumpfile("wave.vcd");        //生成的vcd文件名称
        $dumpvars(0, mips_tb);    //tb模块名称
    end

    always begin
        #1 clk = ~clk;
        if ($time == 150) $finish;
    end

endmodule