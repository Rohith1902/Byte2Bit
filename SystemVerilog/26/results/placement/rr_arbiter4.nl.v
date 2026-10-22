module rr_arbiter4 (clk,
    rst_n,
    gnt,
    req);
 input clk;
 input rst_n;
 output [3:0] gnt;
 input [3:0] req;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire \next_grant[0] ;
 wire \next_grant[1] ;
 wire \next_grant[2] ;
 wire \next_grant[3] ;
 wire \present_grant[2] ;
 wire \present_grant[3] ;
 wire \present_grant[4] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;

 sky130_fd_sc_hd__o31ai_1 _13_ (.A1(\present_grant[4] ),
    .A2(\present_grant[3] ),
    .A3(\present_grant[2] ),
    .B1(net4),
    .Y(_03_));
 sky130_fd_sc_hd__o21ai_1 _14_ (.A1(\present_grant[4] ),
    .A2(\present_grant[3] ),
    .B1(net3),
    .Y(_04_));
 sky130_fd_sc_hd__a21o_1 _15_ (.A1(_03_),
    .A2(_04_),
    .B1(\present_grant[4] ),
    .X(_05_));
 sky130_fd_sc_hd__nand2_1 _16_ (.A(net2),
    .B(\present_grant[4] ),
    .Y(_06_));
 sky130_fd_sc_hd__and4_1 _17_ (.A(net1),
    .B(_03_),
    .C(_06_),
    .D(_04_),
    .X(_07_));
 sky130_fd_sc_hd__buf_1 _18_ (.A(_07_),
    .X(\next_grant[0] ));
 sky130_fd_sc_hd__a21oi_1 _19_ (.A1(net2),
    .A2(_05_),
    .B1(\next_grant[0] ),
    .Y(_08_));
 sky130_fd_sc_hd__o31ai_1 _20_ (.A1(\present_grant[4] ),
    .A2(\present_grant[3] ),
    .A3(_03_),
    .B1(net3),
    .Y(_09_));
 sky130_fd_sc_hd__and3_1 _21_ (.A(net4),
    .B(_08_),
    .C(_09_),
    .X(_10_));
 sky130_fd_sc_hd__clkbuf_1 _22_ (.A(_10_),
    .X(\next_grant[3] ));
 sky130_fd_sc_hd__a211oi_1 _23_ (.A1(net2),
    .A2(_05_),
    .B1(_09_),
    .C1(\next_grant[0] ),
    .Y(\next_grant[2] ));
 sky130_fd_sc_hd__and3b_1 _24_ (.A_N(\next_grant[0] ),
    .B(_05_),
    .C(net2),
    .X(_11_));
 sky130_fd_sc_hd__clkbuf_1 _25_ (.A(_11_),
    .X(\next_grant[1] ));
 sky130_fd_sc_hd__nor2_1 _26_ (.A(net3),
    .B(net4),
    .Y(_12_));
 sky130_fd_sc_hd__a31o_1 _27_ (.A1(\present_grant[4] ),
    .A2(_08_),
    .A3(_12_),
    .B1(\next_grant[0] ),
    .X(_00_));
 sky130_fd_sc_hd__a31o_1 _28_ (.A1(\present_grant[3] ),
    .A2(_08_),
    .A3(_12_),
    .B1(\next_grant[1] ),
    .X(_01_));
 sky130_fd_sc_hd__a31o_1 _29_ (.A1(\present_grant[2] ),
    .A2(_08_),
    .A3(_12_),
    .B1(\next_grant[2] ),
    .X(_02_));
 sky130_fd_sc_hd__dfrtp_1 _30_ (.CLK(clk),
    .D(\next_grant[0] ),
    .RESET_B(net5),
    .Q(net6));
 sky130_fd_sc_hd__dfrtp_1 _31_ (.CLK(clk),
    .D(\next_grant[1] ),
    .RESET_B(net5),
    .Q(net7));
 sky130_fd_sc_hd__dfrtp_1 _32_ (.CLK(clk),
    .D(\next_grant[2] ),
    .RESET_B(net5),
    .Q(net8));
 sky130_fd_sc_hd__dfrtp_1 _33_ (.CLK(clk),
    .D(\next_grant[3] ),
    .RESET_B(net5),
    .Q(net9));
 sky130_fd_sc_hd__dfrtp_1 _34_ (.CLK(clk),
    .D(_00_),
    .RESET_B(net5),
    .Q(\present_grant[4] ));
 sky130_fd_sc_hd__dfrtp_1 _35_ (.CLK(clk),
    .D(_01_),
    .RESET_B(net5),
    .Q(\present_grant[3] ));
 sky130_fd_sc_hd__dfrtp_1 _36_ (.CLK(clk),
    .D(_02_),
    .RESET_B(net5),
    .Q(\present_grant[2] ));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_116 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(req[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(req[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(req[2]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(req[3]),
    .X(net4));
 sky130_fd_sc_hd__buf_2 input5 (.A(rst_n),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_4 output6 (.A(net6),
    .X(gnt[0]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(gnt[1]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(gnt[2]));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(gnt[3]));
endmodule
