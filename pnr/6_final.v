module adc_controller (busy,
    clk,
    data_valid,
    reset,
    start,
    adc_data,
    data_out);
 output busy;
 input clk;
 output data_valid;
 input reset;
 input start;
 input [7:0] adc_data;
 output [7:0] data_out;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _050_;
 wire _051_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire \data_reg[0] ;
 wire \data_reg[1] ;
 wire \data_reg[2] ;
 wire \data_reg[3] ;
 wire \data_reg[4] ;
 wire \data_reg[5] ;
 wire \data_reg[6] ;
 wire \data_reg[7] ;
 wire net20;
 wire net9;
 wire net10;
 wire \state[0] ;
 wire \state[1] ;
 wire \state[2] ;
 wire \state[3] ;
 wire net23;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 NAND2_X1 _091_ (.A1(\state[1] ),
    .A2(\data_reg[6] ),
    .ZN(_036_));
 INV_X8 _092_ (.A(\state[1] ),
    .ZN(_037_));
 NAND2_X2 _093_ (.A1(_037_),
    .A2(net18),
    .ZN(_038_));
 AOI21_X4 _094_ (.A(net23),
    .B1(_036_),
    .B2(_038_),
    .ZN(_004_));
 NAND2_X1 _095_ (.A1(\state[1] ),
    .A2(\data_reg[5] ),
    .ZN(_039_));
 NAND2_X2 _096_ (.A1(_037_),
    .A2(net17),
    .ZN(_040_));
 AOI21_X4 _097_ (.A(net23),
    .B1(_039_),
    .B2(_040_),
    .ZN(_005_));
 NAND2_X1 _098_ (.A1(\state[1] ),
    .A2(\data_reg[4] ),
    .ZN(_041_));
 NAND2_X2 _099_ (.A1(_037_),
    .A2(net16),
    .ZN(_042_));
 AOI21_X4 _100_ (.A(net9),
    .B1(_041_),
    .B2(_042_),
    .ZN(_006_));
 NAND2_X1 _101_ (.A1(\state[1] ),
    .A2(\data_reg[3] ),
    .ZN(_043_));
 NAND2_X2 _102_ (.A1(_037_),
    .A2(net15),
    .ZN(_044_));
 AOI21_X4 _103_ (.A(net23),
    .B1(_043_),
    .B2(_044_),
    .ZN(_007_));
 NAND2_X1 _104_ (.A1(\state[1] ),
    .A2(\data_reg[2] ),
    .ZN(_045_));
 NAND2_X2 _105_ (.A1(_037_),
    .A2(net14),
    .ZN(_046_));
 AOI21_X4 _106_ (.A(net23),
    .B1(_045_),
    .B2(_046_),
    .ZN(_008_));
 NAND2_X1 _107_ (.A1(\state[1] ),
    .A2(\data_reg[1] ),
    .ZN(_047_));
 NAND2_X2 _108_ (.A1(_037_),
    .A2(net13),
    .ZN(_048_));
 AOI21_X4 _109_ (.A(net23),
    .B1(_047_),
    .B2(_048_),
    .ZN(_009_));
 NAND2_X1 _111_ (.A1(\state[1] ),
    .A2(\data_reg[0] ),
    .ZN(_050_));
 NAND2_X2 _112_ (.A1(_037_),
    .A2(net12),
    .ZN(_051_));
 AOI21_X4 _113_ (.A(net9),
    .B1(_050_),
    .B2(_051_),
    .ZN(_010_));
 NAND2_X1 _115_ (.A1(\state[2] ),
    .A2(net7),
    .ZN(_053_));
 INV_X8 _116_ (.A(\state[2] ),
    .ZN(_054_));
 NAND2_X2 _117_ (.A1(_054_),
    .A2(\data_reg[6] ),
    .ZN(_055_));
 AOI21_X4 _118_ (.A(net9),
    .B1(_053_),
    .B2(_055_),
    .ZN(_011_));
 NAND2_X1 _119_ (.A1(\state[2] ),
    .A2(net6),
    .ZN(_056_));
 NAND2_X2 _120_ (.A1(_054_),
    .A2(\data_reg[5] ),
    .ZN(_057_));
 AOI21_X4 _121_ (.A(net23),
    .B1(_056_),
    .B2(_057_),
    .ZN(_012_));
 NAND2_X1 _122_ (.A1(\state[2] ),
    .A2(net5),
    .ZN(_058_));
 NAND2_X2 _123_ (.A1(_054_),
    .A2(\data_reg[4] ),
    .ZN(_059_));
 AOI21_X4 _124_ (.A(net9),
    .B1(_058_),
    .B2(_059_),
    .ZN(_013_));
 NAND2_X1 _125_ (.A1(\state[2] ),
    .A2(net4),
    .ZN(_060_));
 NAND2_X2 _126_ (.A1(_054_),
    .A2(\data_reg[3] ),
    .ZN(_061_));
 AOI21_X4 _127_ (.A(net23),
    .B1(_060_),
    .B2(_061_),
    .ZN(_014_));
 NAND2_X1 _128_ (.A1(\state[2] ),
    .A2(net3),
    .ZN(_062_));
 NAND2_X2 _129_ (.A1(_054_),
    .A2(\data_reg[2] ),
    .ZN(_063_));
 AOI21_X4 _130_ (.A(net9),
    .B1(_062_),
    .B2(_063_),
    .ZN(_015_));
 NAND2_X1 _131_ (.A1(\state[2] ),
    .A2(net2),
    .ZN(_064_));
 NAND2_X2 _132_ (.A1(_054_),
    .A2(\data_reg[1] ),
    .ZN(_065_));
 AOI21_X4 _133_ (.A(net9),
    .B1(_064_),
    .B2(_065_),
    .ZN(_016_));
 NAND2_X1 _134_ (.A1(\state[2] ),
    .A2(net1),
    .ZN(_022_));
 NAND2_X2 _135_ (.A1(_054_),
    .A2(\data_reg[0] ),
    .ZN(_023_));
 AOI21_X4 _136_ (.A(net9),
    .B1(_022_),
    .B2(_023_),
    .ZN(_017_));
 NOR2_X4 _137_ (.A1(\state[3] ),
    .A2(net23),
    .ZN(_024_));
 MUX2_X1 _138_ (.A(net11),
    .B(net10),
    .S(\state[0] ),
    .Z(_025_));
 AND2_X1 _139_ (.A1(_024_),
    .A2(_025_),
    .ZN(_018_));
 NAND2_X1 _140_ (.A1(net8),
    .A2(\state[2] ),
    .ZN(_026_));
 NAND2_X2 _141_ (.A1(\data_reg[7] ),
    .A2(_054_),
    .ZN(_027_));
 AOI21_X4 _142_ (.A(net9),
    .B1(_026_),
    .B2(_027_),
    .ZN(_019_));
 NOR2_X2 _143_ (.A1(_054_),
    .A2(net23),
    .ZN(_000_));
 INV_X1 _144_ (.A(net10),
    .ZN(_028_));
 INV_X1 _145_ (.A(\state[0] ),
    .ZN(_029_));
 NOR3_X4 _146_ (.A1(net23),
    .A2(_028_),
    .A3(_029_),
    .ZN(_001_));
 NOR2_X2 _147_ (.A1(_037_),
    .A2(net23),
    .ZN(_002_));
 OAI21_X1 _148_ (.A(_024_),
    .B1(_029_),
    .B2(net10),
    .ZN(_003_));
 NAND2_X1 _149_ (.A1(\data_reg[7] ),
    .A2(\state[1] ),
    .ZN(_030_));
 NAND2_X2 _150_ (.A1(net19),
    .A2(_037_),
    .ZN(_031_));
 AOI21_X4 _151_ (.A(net9),
    .B1(_030_),
    .B2(_031_),
    .ZN(_020_));
 AOI21_X1 _152_ (.A(\state[3] ),
    .B1(_029_),
    .B2(net20),
    .ZN(_032_));
 NOR2_X2 _153_ (.A1(net23),
    .A2(_032_),
    .ZN(_021_));
 DFF_X1 \busy$_SDFFE_PP0P_  (.D(_018_),
    .CK(clknet_1_0__leaf_clk),
    .Q(net11),
    .QN(_069_));
 CLKBUF_X3 clkbuf_0_clk (.A(clk),
    .Z(clknet_0_clk));
 CLKBUF_X3 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .Z(clknet_1_0__leaf_clk));
 CLKBUF_X3 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .Z(clknet_1_1__leaf_clk));
 DFF_X1 \data_out[0]$_SDFFE_PP0P_  (.D(_010_),
    .CK(clknet_1_1__leaf_clk),
    .Q(net12),
    .QN(_077_));
 DFF_X1 \data_out[1]$_SDFFE_PP0P_  (.D(_009_),
    .CK(clknet_1_0__leaf_clk),
    .Q(net13),
    .QN(_078_));
 DFF_X1 \data_out[2]$_SDFFE_PP0P_  (.D(_008_),
    .CK(clknet_1_0__leaf_clk),
    .Q(net14),
    .QN(_079_));
 DFF_X1 \data_out[3]$_SDFFE_PP0P_  (.D(_007_),
    .CK(clknet_1_1__leaf_clk),
    .Q(net15),
    .QN(_080_));
 DFF_X1 \data_out[4]$_SDFFE_PP0P_  (.D(_006_),
    .CK(clknet_1_0__leaf_clk),
    .Q(net16),
    .QN(_081_));
 DFF_X1 \data_out[5]$_SDFFE_PP0P_  (.D(_005_),
    .CK(clknet_1_1__leaf_clk),
    .Q(net17),
    .QN(_082_));
 DFF_X1 \data_out[6]$_SDFFE_PP0P_  (.D(_004_),
    .CK(clknet_1_1__leaf_clk),
    .Q(net18),
    .QN(_083_));
 DFF_X1 \data_out[7]$_SDFFE_PP0P_  (.D(_020_),
    .CK(clknet_1_1__leaf_clk),
    .Q(net19),
    .QN(_067_));
 DFF_X1 \data_reg[0]$_SDFFE_PP0P_  (.D(_017_),
    .CK(clknet_1_1__leaf_clk),
    .Q(\data_reg[0] ),
    .QN(_070_));
 DFF_X1 \data_reg[1]$_SDFFE_PP0P_  (.D(_016_),
    .CK(clknet_1_0__leaf_clk),
    .Q(\data_reg[1] ),
    .QN(_071_));
 DFF_X1 \data_reg[2]$_SDFFE_PP0P_  (.D(_015_),
    .CK(clknet_1_0__leaf_clk),
    .Q(\data_reg[2] ),
    .QN(_072_));
 DFF_X1 \data_reg[3]$_SDFFE_PP0P_  (.D(_014_),
    .CK(clknet_1_1__leaf_clk),
    .Q(\data_reg[3] ),
    .QN(_073_));
 DFF_X1 \data_reg[4]$_SDFFE_PP0P_  (.D(_013_),
    .CK(clknet_1_0__leaf_clk),
    .Q(\data_reg[4] ),
    .QN(_074_));
 DFF_X1 \data_reg[5]$_SDFFE_PP0P_  (.D(_012_),
    .CK(clknet_1_1__leaf_clk),
    .Q(\data_reg[5] ),
    .QN(_075_));
 DFF_X1 \data_reg[6]$_SDFFE_PP0P_  (.D(_011_),
    .CK(clknet_1_1__leaf_clk),
    .Q(\data_reg[6] ),
    .QN(_076_));
 DFF_X1 \data_reg[7]$_SDFFE_PP0P_  (.D(_019_),
    .CK(clknet_1_1__leaf_clk),
    .Q(\data_reg[7] ),
    .QN(_086_));
 DFF_X1 \data_valid$_SDFFE_PP0P_  (.D(_021_),
    .CK(clknet_1_0__leaf_clk),
    .Q(net20),
    .QN(_087_));
 BUF_X1 input1 (.A(adc_data[0]),
    .Z(net1));
 BUF_X1 input10 (.A(start),
    .Z(net10));
 BUF_X1 input2 (.A(adc_data[1]),
    .Z(net2));
 BUF_X1 input3 (.A(adc_data[2]),
    .Z(net3));
 BUF_X1 input4 (.A(adc_data[3]),
    .Z(net4));
 BUF_X1 input5 (.A(adc_data[4]),
    .Z(net5));
 BUF_X1 input6 (.A(adc_data[5]),
    .Z(net6));
 BUF_X1 input7 (.A(adc_data[6]),
    .Z(net7));
 BUF_X1 input8 (.A(adc_data[7]),
    .Z(net8));
 BUF_X2 input9 (.A(reset),
    .Z(net9));
 BUF_X4 max_cap23 (.A(net9),
    .Z(net23));
 BUF_X1 output11 (.A(net11),
    .Z(busy));
 BUF_X1 output12 (.A(net12),
    .Z(data_out[0]));
 BUF_X1 output13 (.A(net13),
    .Z(data_out[1]));
 BUF_X1 output14 (.A(net14),
    .Z(data_out[2]));
 BUF_X1 output15 (.A(net15),
    .Z(data_out[3]));
 BUF_X1 output16 (.A(net16),
    .Z(data_out[4]));
 BUF_X1 output17 (.A(net17),
    .Z(data_out[5]));
 BUF_X1 output18 (.A(net18),
    .Z(data_out[6]));
 BUF_X1 output19 (.A(net19),
    .Z(data_out[7]));
 BUF_X1 output20 (.A(net20),
    .Z(data_valid));
 DFF_X1 \state[0]$_DFF_P_  (.D(_003_),
    .CK(clknet_1_0__leaf_clk),
    .Q(\state[0] ),
    .QN(_066_));
 DFF_X1 \state[1]$_DFF_P_  (.D(_000_),
    .CK(clknet_1_1__leaf_clk),
    .Q(\state[1] ),
    .QN(_085_));
 DFF_X1 \state[2]$_DFF_P_  (.D(_001_),
    .CK(clknet_1_0__leaf_clk),
    .Q(\state[2] ),
    .QN(_084_));
 DFF_X1 \state[3]$_DFF_P_  (.D(_002_),
    .CK(clknet_1_0__leaf_clk),
    .Q(\state[3] ),
    .QN(_068_));
endmodule
