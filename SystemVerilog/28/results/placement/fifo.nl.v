module fifo (clk,
    empty,
    full,
    pop,
    push,
    rst_n,
    count,
    data_in,
    data_out);
 input clk;
 output empty;
 output full;
 input pop;
 input push;
 input rst_n;
 output [3:0] count;
 input [7:0] data_in;
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
 wire _033_;
 wire _034_;
 wire _035_;
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
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
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
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire _219_;
 wire _220_;
 wire _221_;
 wire _222_;
 wire _223_;
 wire _224_;
 wire _225_;
 wire _226_;
 wire _227_;
 wire _228_;
 wire _229_;
 wire _230_;
 wire _231_;
 wire _232_;
 wire _233_;
 wire _234_;
 wire _235_;
 wire _236_;
 wire _237_;
 wire _238_;
 wire _239_;
 wire _240_;
 wire _241_;
 wire \mem[0][0] ;
 wire \mem[0][1] ;
 wire \mem[0][2] ;
 wire \mem[0][3] ;
 wire \mem[0][4] ;
 wire \mem[0][5] ;
 wire \mem[0][6] ;
 wire \mem[0][7] ;
 wire \mem[1][0] ;
 wire \mem[1][1] ;
 wire \mem[1][2] ;
 wire \mem[1][3] ;
 wire \mem[1][4] ;
 wire \mem[1][5] ;
 wire \mem[1][6] ;
 wire \mem[1][7] ;
 wire \mem[2][0] ;
 wire \mem[2][1] ;
 wire \mem[2][2] ;
 wire \mem[2][3] ;
 wire \mem[2][4] ;
 wire \mem[2][5] ;
 wire \mem[2][6] ;
 wire \mem[2][7] ;
 wire \mem[3][0] ;
 wire \mem[3][1] ;
 wire \mem[3][2] ;
 wire \mem[3][3] ;
 wire \mem[3][4] ;
 wire \mem[3][5] ;
 wire \mem[3][6] ;
 wire \mem[3][7] ;
 wire \mem[4][0] ;
 wire \mem[4][1] ;
 wire \mem[4][2] ;
 wire \mem[4][3] ;
 wire \mem[4][4] ;
 wire \mem[4][5] ;
 wire \mem[4][6] ;
 wire \mem[4][7] ;
 wire \mem[5][0] ;
 wire \mem[5][1] ;
 wire \mem[5][2] ;
 wire \mem[5][3] ;
 wire \mem[5][4] ;
 wire \mem[5][5] ;
 wire \mem[5][6] ;
 wire \mem[5][7] ;
 wire \mem[6][0] ;
 wire \mem[6][1] ;
 wire \mem[6][2] ;
 wire \mem[6][3] ;
 wire \mem[6][4] ;
 wire \mem[6][5] ;
 wire \mem[6][6] ;
 wire \mem[6][7] ;
 wire \mem[7][0] ;
 wire \mem[7][1] ;
 wire \mem[7][2] ;
 wire \mem[7][3] ;
 wire \mem[7][4] ;
 wire \mem[7][5] ;
 wire \mem[7][6] ;
 wire \mem[7][7] ;
 wire \rd_ptr[0] ;
 wire \rd_ptr[1] ;
 wire \rd_ptr[2] ;
 wire \wr_ptr[0] ;
 wire \wr_ptr[1] ;
 wire \wr_ptr[2] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;

 sky130_fd_sc_hd__nor4_1 _242_ (.A(net13),
    .B(net14),
    .C(net12),
    .D(net15),
    .Y(net24));
 sky130_fd_sc_hd__or4b_1 _243_ (.A(net13),
    .B(net14),
    .C(net12),
    .D_N(net15),
    .X(_082_));
 sky130_fd_sc_hd__clkbuf_2 _244_ (.A(_082_),
    .X(_083_));
 sky130_fd_sc_hd__inv_2 _245_ (.A(_083_),
    .Y(net25));
 sky130_fd_sc_hd__and4_1 _246_ (.A(\wr_ptr[2] ),
    .B(net10),
    .C(net28),
    .D(_083_),
    .X(_084_));
 sky130_fd_sc_hd__and3_1 _247_ (.A(\wr_ptr[1] ),
    .B(\wr_ptr[0] ),
    .C(_084_),
    .X(_085_));
 sky130_fd_sc_hd__clkbuf_4 _248_ (.A(_085_),
    .X(_086_));
 sky130_fd_sc_hd__mux2_1 _249_ (.A0(\mem[7][0] ),
    .A1(net1),
    .S(_086_),
    .X(_087_));
 sky130_fd_sc_hd__clkbuf_1 _250_ (.A(_087_),
    .X(_000_));
 sky130_fd_sc_hd__mux2_1 _251_ (.A0(\mem[7][1] ),
    .A1(net2),
    .S(_086_),
    .X(_088_));
 sky130_fd_sc_hd__clkbuf_1 _252_ (.A(_088_),
    .X(_001_));
 sky130_fd_sc_hd__mux2_1 _253_ (.A0(\mem[7][2] ),
    .A1(net3),
    .S(_086_),
    .X(_089_));
 sky130_fd_sc_hd__clkbuf_1 _254_ (.A(_089_),
    .X(_002_));
 sky130_fd_sc_hd__mux2_1 _255_ (.A0(\mem[7][3] ),
    .A1(net4),
    .S(_086_),
    .X(_090_));
 sky130_fd_sc_hd__clkbuf_1 _256_ (.A(_090_),
    .X(_003_));
 sky130_fd_sc_hd__mux2_1 _257_ (.A0(\mem[7][4] ),
    .A1(net5),
    .S(_086_),
    .X(_091_));
 sky130_fd_sc_hd__clkbuf_1 _258_ (.A(_091_),
    .X(_004_));
 sky130_fd_sc_hd__mux2_1 _259_ (.A0(\mem[7][5] ),
    .A1(net6),
    .S(_086_),
    .X(_092_));
 sky130_fd_sc_hd__clkbuf_1 _260_ (.A(_092_),
    .X(_005_));
 sky130_fd_sc_hd__mux2_1 _261_ (.A0(\mem[7][6] ),
    .A1(net7),
    .S(_086_),
    .X(_093_));
 sky130_fd_sc_hd__clkbuf_1 _262_ (.A(_093_),
    .X(_006_));
 sky130_fd_sc_hd__mux2_1 _263_ (.A0(\mem[7][7] ),
    .A1(net8),
    .S(_086_),
    .X(_094_));
 sky130_fd_sc_hd__clkbuf_1 _264_ (.A(_094_),
    .X(_007_));
 sky130_fd_sc_hd__and3b_2 _265_ (.A_N(\rd_ptr[1] ),
    .B(\rd_ptr[0] ),
    .C(\rd_ptr[2] ),
    .X(_095_));
 sky130_fd_sc_hd__and3_2 _266_ (.A(\rd_ptr[2] ),
    .B(\rd_ptr[1] ),
    .C(\rd_ptr[0] ),
    .X(_096_));
 sky130_fd_sc_hd__nor3b_4 _267_ (.A(\rd_ptr[2] ),
    .B(\rd_ptr[0] ),
    .C_N(\rd_ptr[1] ),
    .Y(_097_));
 sky130_fd_sc_hd__a22o_1 _268_ (.A1(\mem[7][0] ),
    .A2(_096_),
    .B1(_097_),
    .B2(\mem[2][0] ),
    .X(_098_));
 sky130_fd_sc_hd__a21o_1 _269_ (.A1(\mem[5][0] ),
    .A2(_095_),
    .B1(_098_),
    .X(_099_));
 sky130_fd_sc_hd__and3b_2 _270_ (.A_N(\rd_ptr[0] ),
    .B(\rd_ptr[1] ),
    .C(\rd_ptr[2] ),
    .X(_100_));
 sky130_fd_sc_hd__nand2_1 _271_ (.A(\rd_ptr[1] ),
    .B(\rd_ptr[0] ),
    .Y(_101_));
 sky130_fd_sc_hd__nor2_2 _272_ (.A(\rd_ptr[2] ),
    .B(_101_),
    .Y(_102_));
 sky130_fd_sc_hd__nor3b_4 _273_ (.A(\rd_ptr[1] ),
    .B(\rd_ptr[0] ),
    .C_N(\rd_ptr[2] ),
    .Y(_103_));
 sky130_fd_sc_hd__nor3b_4 _274_ (.A(\rd_ptr[2] ),
    .B(\rd_ptr[1] ),
    .C_N(\rd_ptr[0] ),
    .Y(_104_));
 sky130_fd_sc_hd__a22o_1 _275_ (.A1(\mem[4][0] ),
    .A2(_103_),
    .B1(_104_),
    .B2(\mem[1][0] ),
    .X(_105_));
 sky130_fd_sc_hd__a221o_1 _276_ (.A1(\mem[6][0] ),
    .A2(_100_),
    .B1(_102_),
    .B2(\mem[3][0] ),
    .C1(_105_),
    .X(_106_));
 sky130_fd_sc_hd__nor3_2 _277_ (.A(\rd_ptr[2] ),
    .B(\rd_ptr[1] ),
    .C(\rd_ptr[0] ),
    .Y(_107_));
 sky130_fd_sc_hd__o41ai_2 _278_ (.A1(net13),
    .A2(net14),
    .A3(net12),
    .A4(net15),
    .B1(net9),
    .Y(_108_));
 sky130_fd_sc_hd__clkbuf_4 _279_ (.A(_108_),
    .X(_109_));
 sky130_fd_sc_hd__a21o_1 _280_ (.A1(\mem[0][0] ),
    .A2(net26),
    .B1(_109_),
    .X(_110_));
 sky130_fd_sc_hd__and2b_1 _281_ (.A_N(net24),
    .B(net9),
    .X(_111_));
 sky130_fd_sc_hd__clkbuf_4 _282_ (.A(_111_),
    .X(_112_));
 sky130_fd_sc_hd__o32a_1 _283_ (.A1(_099_),
    .A2(_106_),
    .A3(_110_),
    .B1(_112_),
    .B2(net16),
    .X(_008_));
 sky130_fd_sc_hd__a22o_1 _284_ (.A1(\mem[7][1] ),
    .A2(_096_),
    .B1(_097_),
    .B2(\mem[2][1] ),
    .X(_113_));
 sky130_fd_sc_hd__a21o_1 _285_ (.A1(\mem[5][1] ),
    .A2(_095_),
    .B1(_113_),
    .X(_114_));
 sky130_fd_sc_hd__a22o_1 _286_ (.A1(\mem[4][1] ),
    .A2(_103_),
    .B1(_104_),
    .B2(\mem[1][1] ),
    .X(_115_));
 sky130_fd_sc_hd__a221o_1 _287_ (.A1(\mem[6][1] ),
    .A2(_100_),
    .B1(_102_),
    .B2(\mem[3][1] ),
    .C1(_115_),
    .X(_116_));
 sky130_fd_sc_hd__a21o_1 _288_ (.A1(\mem[0][1] ),
    .A2(net26),
    .B1(_109_),
    .X(_117_));
 sky130_fd_sc_hd__o32a_1 _289_ (.A1(_114_),
    .A2(_116_),
    .A3(_117_),
    .B1(_112_),
    .B2(net17),
    .X(_009_));
 sky130_fd_sc_hd__a22o_1 _290_ (.A1(\mem[7][2] ),
    .A2(_096_),
    .B1(_097_),
    .B2(\mem[2][2] ),
    .X(_118_));
 sky130_fd_sc_hd__a21o_1 _291_ (.A1(\mem[5][2] ),
    .A2(_095_),
    .B1(_118_),
    .X(_119_));
 sky130_fd_sc_hd__a22o_1 _292_ (.A1(\mem[4][2] ),
    .A2(_103_),
    .B1(_104_),
    .B2(\mem[1][2] ),
    .X(_120_));
 sky130_fd_sc_hd__a221o_1 _293_ (.A1(\mem[6][2] ),
    .A2(_100_),
    .B1(_102_),
    .B2(\mem[3][2] ),
    .C1(_120_),
    .X(_121_));
 sky130_fd_sc_hd__a21o_1 _294_ (.A1(\mem[0][2] ),
    .A2(_107_),
    .B1(_109_),
    .X(_122_));
 sky130_fd_sc_hd__o32a_1 _295_ (.A1(_119_),
    .A2(_121_),
    .A3(_122_),
    .B1(_112_),
    .B2(net18),
    .X(_010_));
 sky130_fd_sc_hd__a22o_1 _296_ (.A1(\mem[7][3] ),
    .A2(_096_),
    .B1(_097_),
    .B2(\mem[2][3] ),
    .X(_123_));
 sky130_fd_sc_hd__a21o_1 _297_ (.A1(\mem[5][3] ),
    .A2(_095_),
    .B1(_123_),
    .X(_124_));
 sky130_fd_sc_hd__a22o_1 _298_ (.A1(\mem[4][3] ),
    .A2(_103_),
    .B1(_104_),
    .B2(\mem[1][3] ),
    .X(_125_));
 sky130_fd_sc_hd__a221o_1 _299_ (.A1(\mem[6][3] ),
    .A2(_100_),
    .B1(_102_),
    .B2(\mem[3][3] ),
    .C1(_125_),
    .X(_126_));
 sky130_fd_sc_hd__a21o_1 _300_ (.A1(\mem[0][3] ),
    .A2(_107_),
    .B1(_109_),
    .X(_127_));
 sky130_fd_sc_hd__o32a_1 _301_ (.A1(_124_),
    .A2(_126_),
    .A3(_127_),
    .B1(_112_),
    .B2(net19),
    .X(_011_));
 sky130_fd_sc_hd__a22o_1 _302_ (.A1(\mem[7][4] ),
    .A2(_096_),
    .B1(_097_),
    .B2(\mem[2][4] ),
    .X(_128_));
 sky130_fd_sc_hd__a21o_1 _303_ (.A1(\mem[5][4] ),
    .A2(_095_),
    .B1(_128_),
    .X(_129_));
 sky130_fd_sc_hd__a22o_1 _304_ (.A1(\mem[4][4] ),
    .A2(_103_),
    .B1(_104_),
    .B2(\mem[1][4] ),
    .X(_130_));
 sky130_fd_sc_hd__a221o_1 _305_ (.A1(\mem[6][4] ),
    .A2(_100_),
    .B1(_102_),
    .B2(\mem[3][4] ),
    .C1(_130_),
    .X(_131_));
 sky130_fd_sc_hd__a21o_1 _306_ (.A1(\mem[0][4] ),
    .A2(net26),
    .B1(_109_),
    .X(_132_));
 sky130_fd_sc_hd__o32a_1 _307_ (.A1(_129_),
    .A2(_131_),
    .A3(_132_),
    .B1(_112_),
    .B2(net20),
    .X(_012_));
 sky130_fd_sc_hd__a22o_1 _308_ (.A1(\mem[7][5] ),
    .A2(_096_),
    .B1(_097_),
    .B2(\mem[2][5] ),
    .X(_133_));
 sky130_fd_sc_hd__a21o_1 _309_ (.A1(\mem[5][5] ),
    .A2(_095_),
    .B1(_133_),
    .X(_134_));
 sky130_fd_sc_hd__a22o_1 _310_ (.A1(\mem[4][5] ),
    .A2(_103_),
    .B1(_104_),
    .B2(\mem[1][5] ),
    .X(_135_));
 sky130_fd_sc_hd__a221o_1 _311_ (.A1(\mem[6][5] ),
    .A2(_100_),
    .B1(_102_),
    .B2(\mem[3][5] ),
    .C1(_135_),
    .X(_136_));
 sky130_fd_sc_hd__a21o_1 _312_ (.A1(\mem[0][5] ),
    .A2(net26),
    .B1(_109_),
    .X(_137_));
 sky130_fd_sc_hd__o32a_1 _313_ (.A1(_134_),
    .A2(_136_),
    .A3(_137_),
    .B1(_112_),
    .B2(net21),
    .X(_013_));
 sky130_fd_sc_hd__a22o_1 _314_ (.A1(\mem[7][6] ),
    .A2(_096_),
    .B1(_097_),
    .B2(\mem[2][6] ),
    .X(_138_));
 sky130_fd_sc_hd__a21o_1 _315_ (.A1(\mem[5][6] ),
    .A2(_095_),
    .B1(_138_),
    .X(_139_));
 sky130_fd_sc_hd__a22o_1 _316_ (.A1(\mem[4][6] ),
    .A2(_103_),
    .B1(_104_),
    .B2(\mem[1][6] ),
    .X(_140_));
 sky130_fd_sc_hd__a221o_1 _317_ (.A1(\mem[6][6] ),
    .A2(_100_),
    .B1(_102_),
    .B2(\mem[3][6] ),
    .C1(_140_),
    .X(_141_));
 sky130_fd_sc_hd__a21o_1 _318_ (.A1(\mem[0][6] ),
    .A2(_107_),
    .B1(_109_),
    .X(_142_));
 sky130_fd_sc_hd__o32a_1 _319_ (.A1(_139_),
    .A2(_141_),
    .A3(_142_),
    .B1(_112_),
    .B2(net22),
    .X(_014_));
 sky130_fd_sc_hd__a22o_1 _320_ (.A1(\mem[7][7] ),
    .A2(_096_),
    .B1(_097_),
    .B2(\mem[2][7] ),
    .X(_143_));
 sky130_fd_sc_hd__a21o_1 _321_ (.A1(\mem[5][7] ),
    .A2(_095_),
    .B1(_143_),
    .X(_144_));
 sky130_fd_sc_hd__a22o_1 _322_ (.A1(\mem[4][7] ),
    .A2(_103_),
    .B1(_104_),
    .B2(\mem[1][7] ),
    .X(_145_));
 sky130_fd_sc_hd__a221o_1 _323_ (.A1(\mem[6][7] ),
    .A2(_100_),
    .B1(_102_),
    .B2(\mem[3][7] ),
    .C1(_145_),
    .X(_146_));
 sky130_fd_sc_hd__a21o_1 _324_ (.A1(\mem[0][7] ),
    .A2(net26),
    .B1(_109_),
    .X(_147_));
 sky130_fd_sc_hd__o32a_1 _325_ (.A1(_144_),
    .A2(_146_),
    .A3(_147_),
    .B1(_112_),
    .B2(net23),
    .X(_015_));
 sky130_fd_sc_hd__a21oi_2 _326_ (.A1(net10),
    .A2(_083_),
    .B1(_108_),
    .Y(_148_));
 sky130_fd_sc_hd__and3_1 _327_ (.A(net10),
    .B(_083_),
    .C(_108_),
    .X(_149_));
 sky130_fd_sc_hd__or2_1 _328_ (.A(_148_),
    .B(_149_),
    .X(_150_));
 sky130_fd_sc_hd__nand2_1 _329_ (.A(net12),
    .B(_150_),
    .Y(_151_));
 sky130_fd_sc_hd__or2_1 _330_ (.A(net12),
    .B(_150_),
    .X(_152_));
 sky130_fd_sc_hd__and2_1 _331_ (.A(_151_),
    .B(_152_),
    .X(_153_));
 sky130_fd_sc_hd__clkbuf_1 _332_ (.A(_153_),
    .X(_016_));
 sky130_fd_sc_hd__and3b_1 _333_ (.A_N(net10),
    .B(net9),
    .C(net13),
    .X(_154_));
 sky130_fd_sc_hd__nor2_1 _334_ (.A(net13),
    .B(_148_),
    .Y(_155_));
 sky130_fd_sc_hd__or2_1 _335_ (.A(_154_),
    .B(_155_),
    .X(_156_));
 sky130_fd_sc_hd__xor2_1 _336_ (.A(_151_),
    .B(_156_),
    .X(_017_));
 sky130_fd_sc_hd__and2_1 _337_ (.A(net14),
    .B(_148_),
    .X(_157_));
 sky130_fd_sc_hd__or2_1 _338_ (.A(net14),
    .B(_148_),
    .X(_158_));
 sky130_fd_sc_hd__or2b_1 _339_ (.A(_157_),
    .B_N(_158_),
    .X(_159_));
 sky130_fd_sc_hd__or2_1 _340_ (.A(net12),
    .B(_154_),
    .X(_160_));
 sky130_fd_sc_hd__o21a_1 _341_ (.A1(net13),
    .A2(_148_),
    .B1(_160_),
    .X(_161_));
 sky130_fd_sc_hd__nand2_1 _342_ (.A(_150_),
    .B(_161_),
    .Y(_162_));
 sky130_fd_sc_hd__xor2_1 _343_ (.A(_159_),
    .B(_162_),
    .X(_018_));
 sky130_fd_sc_hd__o211a_1 _344_ (.A1(_157_),
    .A2(_161_),
    .B1(_158_),
    .C1(_150_),
    .X(_163_));
 sky130_fd_sc_hd__nand2_1 _345_ (.A(net10),
    .B(_083_),
    .Y(_164_));
 sky130_fd_sc_hd__nor2_1 _346_ (.A(net15),
    .B(_148_),
    .Y(_165_));
 sky130_fd_sc_hd__a31o_1 _347_ (.A1(net15),
    .A2(net9),
    .A3(_164_),
    .B1(_165_),
    .X(_166_));
 sky130_fd_sc_hd__xnor2_1 _348_ (.A(_163_),
    .B(_166_),
    .Y(_019_));
 sky130_fd_sc_hd__xnor2_1 _349_ (.A(\wr_ptr[0] ),
    .B(_164_),
    .Y(_020_));
 sky130_fd_sc_hd__and4_1 _350_ (.A(net10),
    .B(\wr_ptr[1] ),
    .C(\wr_ptr[0] ),
    .D(_083_),
    .X(_167_));
 sky130_fd_sc_hd__a31o_1 _351_ (.A1(net10),
    .A2(\wr_ptr[0] ),
    .A3(_083_),
    .B1(\wr_ptr[1] ),
    .X(_168_));
 sky130_fd_sc_hd__and2b_1 _352_ (.A_N(_167_),
    .B(_168_),
    .X(_169_));
 sky130_fd_sc_hd__clkbuf_1 _353_ (.A(_169_),
    .X(_021_));
 sky130_fd_sc_hd__xor2_1 _354_ (.A(\wr_ptr[2] ),
    .B(_167_),
    .X(_022_));
 sky130_fd_sc_hd__xnor2_1 _355_ (.A(\rd_ptr[0] ),
    .B(_109_),
    .Y(_023_));
 sky130_fd_sc_hd__nor2_1 _356_ (.A(_109_),
    .B(_101_),
    .Y(_170_));
 sky130_fd_sc_hd__a21oi_1 _357_ (.A1(\rd_ptr[0] ),
    .A2(_112_),
    .B1(\rd_ptr[1] ),
    .Y(_171_));
 sky130_fd_sc_hd__nor2_1 _358_ (.A(_170_),
    .B(_171_),
    .Y(_024_));
 sky130_fd_sc_hd__xor2_1 _359_ (.A(\rd_ptr[2] ),
    .B(_170_),
    .X(_025_));
 sky130_fd_sc_hd__or3b_1 _360_ (.A(_164_),
    .B(\wr_ptr[2] ),
    .C_N(net28),
    .X(_172_));
 sky130_fd_sc_hd__or3_1 _361_ (.A(\wr_ptr[1] ),
    .B(\wr_ptr[0] ),
    .C(_172_),
    .X(_173_));
 sky130_fd_sc_hd__clkbuf_4 _362_ (.A(_173_),
    .X(_174_));
 sky130_fd_sc_hd__mux2_1 _363_ (.A0(net1),
    .A1(\mem[0][0] ),
    .S(_174_),
    .X(_175_));
 sky130_fd_sc_hd__clkbuf_1 _364_ (.A(_175_),
    .X(_026_));
 sky130_fd_sc_hd__mux2_1 _365_ (.A0(net2),
    .A1(\mem[0][1] ),
    .S(_174_),
    .X(_176_));
 sky130_fd_sc_hd__clkbuf_1 _366_ (.A(_176_),
    .X(_027_));
 sky130_fd_sc_hd__mux2_1 _367_ (.A0(net3),
    .A1(\mem[0][2] ),
    .S(_174_),
    .X(_177_));
 sky130_fd_sc_hd__clkbuf_1 _368_ (.A(_177_),
    .X(_028_));
 sky130_fd_sc_hd__mux2_1 _369_ (.A0(net4),
    .A1(\mem[0][3] ),
    .S(_174_),
    .X(_178_));
 sky130_fd_sc_hd__clkbuf_1 _370_ (.A(_178_),
    .X(_029_));
 sky130_fd_sc_hd__mux2_1 _371_ (.A0(net5),
    .A1(\mem[0][4] ),
    .S(_174_),
    .X(_179_));
 sky130_fd_sc_hd__clkbuf_1 _372_ (.A(_179_),
    .X(_030_));
 sky130_fd_sc_hd__mux2_1 _373_ (.A0(net6),
    .A1(\mem[0][5] ),
    .S(_174_),
    .X(_180_));
 sky130_fd_sc_hd__clkbuf_1 _374_ (.A(_180_),
    .X(_031_));
 sky130_fd_sc_hd__mux2_1 _375_ (.A0(net7),
    .A1(\mem[0][6] ),
    .S(_174_),
    .X(_181_));
 sky130_fd_sc_hd__clkbuf_1 _376_ (.A(_181_),
    .X(_032_));
 sky130_fd_sc_hd__mux2_1 _377_ (.A0(net8),
    .A1(\mem[0][7] ),
    .S(_174_),
    .X(_182_));
 sky130_fd_sc_hd__clkbuf_1 _378_ (.A(_182_),
    .X(_033_));
 sky130_fd_sc_hd__or3b_1 _379_ (.A(_172_),
    .B(\wr_ptr[1] ),
    .C_N(\wr_ptr[0] ),
    .X(_183_));
 sky130_fd_sc_hd__clkbuf_4 _380_ (.A(_183_),
    .X(_184_));
 sky130_fd_sc_hd__mux2_1 _381_ (.A0(net1),
    .A1(\mem[1][0] ),
    .S(_184_),
    .X(_185_));
 sky130_fd_sc_hd__clkbuf_1 _382_ (.A(_185_),
    .X(_034_));
 sky130_fd_sc_hd__mux2_1 _383_ (.A0(net2),
    .A1(\mem[1][1] ),
    .S(_184_),
    .X(_186_));
 sky130_fd_sc_hd__clkbuf_1 _384_ (.A(_186_),
    .X(_035_));
 sky130_fd_sc_hd__mux2_1 _385_ (.A0(net3),
    .A1(\mem[1][2] ),
    .S(_184_),
    .X(_187_));
 sky130_fd_sc_hd__clkbuf_1 _386_ (.A(_187_),
    .X(_036_));
 sky130_fd_sc_hd__mux2_1 _387_ (.A0(net4),
    .A1(\mem[1][3] ),
    .S(_184_),
    .X(_188_));
 sky130_fd_sc_hd__clkbuf_1 _388_ (.A(_188_),
    .X(_037_));
 sky130_fd_sc_hd__mux2_1 _389_ (.A0(net5),
    .A1(\mem[1][4] ),
    .S(_184_),
    .X(_189_));
 sky130_fd_sc_hd__clkbuf_1 _390_ (.A(_189_),
    .X(_038_));
 sky130_fd_sc_hd__mux2_1 _391_ (.A0(net6),
    .A1(\mem[1][5] ),
    .S(_184_),
    .X(_190_));
 sky130_fd_sc_hd__clkbuf_1 _392_ (.A(_190_),
    .X(_039_));
 sky130_fd_sc_hd__mux2_1 _393_ (.A0(net7),
    .A1(\mem[1][6] ),
    .S(_184_),
    .X(_191_));
 sky130_fd_sc_hd__clkbuf_1 _394_ (.A(_191_),
    .X(_040_));
 sky130_fd_sc_hd__mux2_1 _395_ (.A0(net8),
    .A1(\mem[1][7] ),
    .S(_184_),
    .X(_192_));
 sky130_fd_sc_hd__clkbuf_1 _396_ (.A(_192_),
    .X(_041_));
 sky130_fd_sc_hd__or3b_1 _397_ (.A(\wr_ptr[0] ),
    .B(_172_),
    .C_N(\wr_ptr[1] ),
    .X(_193_));
 sky130_fd_sc_hd__clkbuf_4 _398_ (.A(_193_),
    .X(_194_));
 sky130_fd_sc_hd__mux2_1 _399_ (.A0(net1),
    .A1(\mem[2][0] ),
    .S(_194_),
    .X(_195_));
 sky130_fd_sc_hd__clkbuf_1 _400_ (.A(_195_),
    .X(_042_));
 sky130_fd_sc_hd__mux2_1 _401_ (.A0(net2),
    .A1(\mem[2][1] ),
    .S(_194_),
    .X(_196_));
 sky130_fd_sc_hd__clkbuf_1 _402_ (.A(_196_),
    .X(_043_));
 sky130_fd_sc_hd__mux2_1 _403_ (.A0(net3),
    .A1(\mem[2][2] ),
    .S(_194_),
    .X(_197_));
 sky130_fd_sc_hd__clkbuf_1 _404_ (.A(_197_),
    .X(_044_));
 sky130_fd_sc_hd__mux2_1 _405_ (.A0(net4),
    .A1(\mem[2][3] ),
    .S(_194_),
    .X(_198_));
 sky130_fd_sc_hd__clkbuf_1 _406_ (.A(_198_),
    .X(_045_));
 sky130_fd_sc_hd__mux2_1 _407_ (.A0(net5),
    .A1(\mem[2][4] ),
    .S(_194_),
    .X(_199_));
 sky130_fd_sc_hd__clkbuf_1 _408_ (.A(_199_),
    .X(_046_));
 sky130_fd_sc_hd__mux2_1 _409_ (.A0(net6),
    .A1(\mem[2][5] ),
    .S(_194_),
    .X(_200_));
 sky130_fd_sc_hd__clkbuf_1 _410_ (.A(_200_),
    .X(_047_));
 sky130_fd_sc_hd__mux2_1 _411_ (.A0(net7),
    .A1(\mem[2][6] ),
    .S(_194_),
    .X(_201_));
 sky130_fd_sc_hd__clkbuf_1 _412_ (.A(_201_),
    .X(_048_));
 sky130_fd_sc_hd__mux2_1 _413_ (.A0(net8),
    .A1(\mem[2][7] ),
    .S(_194_),
    .X(_202_));
 sky130_fd_sc_hd__clkbuf_1 _414_ (.A(_202_),
    .X(_049_));
 sky130_fd_sc_hd__and3b_1 _415_ (.A_N(\wr_ptr[2] ),
    .B(net28),
    .C(_167_),
    .X(_203_));
 sky130_fd_sc_hd__clkbuf_4 _416_ (.A(_203_),
    .X(_204_));
 sky130_fd_sc_hd__mux2_1 _417_ (.A0(\mem[3][0] ),
    .A1(net1),
    .S(_204_),
    .X(_205_));
 sky130_fd_sc_hd__clkbuf_1 _418_ (.A(_205_),
    .X(_050_));
 sky130_fd_sc_hd__mux2_1 _419_ (.A0(\mem[3][1] ),
    .A1(net2),
    .S(_204_),
    .X(_206_));
 sky130_fd_sc_hd__clkbuf_1 _420_ (.A(_206_),
    .X(_051_));
 sky130_fd_sc_hd__mux2_1 _421_ (.A0(\mem[3][2] ),
    .A1(net3),
    .S(_204_),
    .X(_207_));
 sky130_fd_sc_hd__clkbuf_1 _422_ (.A(_207_),
    .X(_052_));
 sky130_fd_sc_hd__mux2_1 _423_ (.A0(\mem[3][3] ),
    .A1(net4),
    .S(_204_),
    .X(_208_));
 sky130_fd_sc_hd__clkbuf_1 _424_ (.A(_208_),
    .X(_053_));
 sky130_fd_sc_hd__mux2_1 _425_ (.A0(\mem[3][4] ),
    .A1(net5),
    .S(_204_),
    .X(_209_));
 sky130_fd_sc_hd__clkbuf_1 _426_ (.A(_209_),
    .X(_054_));
 sky130_fd_sc_hd__mux2_1 _427_ (.A0(\mem[3][5] ),
    .A1(net6),
    .S(_204_),
    .X(_210_));
 sky130_fd_sc_hd__clkbuf_1 _428_ (.A(_210_),
    .X(_055_));
 sky130_fd_sc_hd__mux2_1 _429_ (.A0(\mem[3][6] ),
    .A1(net7),
    .S(_204_),
    .X(_211_));
 sky130_fd_sc_hd__clkbuf_1 _430_ (.A(_211_),
    .X(_056_));
 sky130_fd_sc_hd__mux2_1 _431_ (.A0(\mem[3][7] ),
    .A1(net8),
    .S(_204_),
    .X(_212_));
 sky130_fd_sc_hd__clkbuf_1 _432_ (.A(_212_),
    .X(_057_));
 sky130_fd_sc_hd__or3b_1 _433_ (.A(\wr_ptr[1] ),
    .B(\wr_ptr[0] ),
    .C_N(_084_),
    .X(_213_));
 sky130_fd_sc_hd__clkbuf_4 _434_ (.A(_213_),
    .X(_214_));
 sky130_fd_sc_hd__mux2_1 _435_ (.A0(net1),
    .A1(\mem[4][0] ),
    .S(_214_),
    .X(_215_));
 sky130_fd_sc_hd__clkbuf_1 _436_ (.A(_215_),
    .X(_058_));
 sky130_fd_sc_hd__mux2_1 _437_ (.A0(net2),
    .A1(\mem[4][1] ),
    .S(_214_),
    .X(_216_));
 sky130_fd_sc_hd__clkbuf_1 _438_ (.A(_216_),
    .X(_059_));
 sky130_fd_sc_hd__mux2_1 _439_ (.A0(net3),
    .A1(\mem[4][2] ),
    .S(_214_),
    .X(_217_));
 sky130_fd_sc_hd__clkbuf_1 _440_ (.A(_217_),
    .X(_060_));
 sky130_fd_sc_hd__mux2_1 _441_ (.A0(net4),
    .A1(\mem[4][3] ),
    .S(_214_),
    .X(_218_));
 sky130_fd_sc_hd__clkbuf_1 _442_ (.A(_218_),
    .X(_061_));
 sky130_fd_sc_hd__mux2_1 _443_ (.A0(net5),
    .A1(\mem[4][4] ),
    .S(_214_),
    .X(_219_));
 sky130_fd_sc_hd__clkbuf_1 _444_ (.A(_219_),
    .X(_062_));
 sky130_fd_sc_hd__mux2_1 _445_ (.A0(net6),
    .A1(\mem[4][5] ),
    .S(_214_),
    .X(_220_));
 sky130_fd_sc_hd__clkbuf_1 _446_ (.A(_220_),
    .X(_063_));
 sky130_fd_sc_hd__mux2_1 _447_ (.A0(net7),
    .A1(\mem[4][6] ),
    .S(_214_),
    .X(_221_));
 sky130_fd_sc_hd__clkbuf_1 _448_ (.A(_221_),
    .X(_064_));
 sky130_fd_sc_hd__mux2_1 _449_ (.A0(net8),
    .A1(\mem[4][7] ),
    .S(_214_),
    .X(_222_));
 sky130_fd_sc_hd__clkbuf_1 _450_ (.A(_222_),
    .X(_065_));
 sky130_fd_sc_hd__nand3b_4 _451_ (.A_N(\wr_ptr[1] ),
    .B(\wr_ptr[0] ),
    .C(_084_),
    .Y(_223_));
 sky130_fd_sc_hd__mux2_1 _452_ (.A0(net1),
    .A1(\mem[5][0] ),
    .S(_223_),
    .X(_224_));
 sky130_fd_sc_hd__clkbuf_1 _453_ (.A(_224_),
    .X(_066_));
 sky130_fd_sc_hd__mux2_1 _454_ (.A0(net2),
    .A1(\mem[5][1] ),
    .S(_223_),
    .X(_225_));
 sky130_fd_sc_hd__clkbuf_1 _455_ (.A(_225_),
    .X(_067_));
 sky130_fd_sc_hd__mux2_1 _456_ (.A0(net3),
    .A1(\mem[5][2] ),
    .S(_223_),
    .X(_226_));
 sky130_fd_sc_hd__clkbuf_1 _457_ (.A(_226_),
    .X(_068_));
 sky130_fd_sc_hd__mux2_1 _458_ (.A0(net4),
    .A1(\mem[5][3] ),
    .S(_223_),
    .X(_227_));
 sky130_fd_sc_hd__clkbuf_1 _459_ (.A(_227_),
    .X(_069_));
 sky130_fd_sc_hd__mux2_1 _460_ (.A0(net5),
    .A1(\mem[5][4] ),
    .S(_223_),
    .X(_228_));
 sky130_fd_sc_hd__clkbuf_1 _461_ (.A(_228_),
    .X(_070_));
 sky130_fd_sc_hd__mux2_1 _462_ (.A0(net6),
    .A1(\mem[5][5] ),
    .S(_223_),
    .X(_229_));
 sky130_fd_sc_hd__clkbuf_1 _463_ (.A(_229_),
    .X(_071_));
 sky130_fd_sc_hd__mux2_1 _464_ (.A0(net7),
    .A1(\mem[5][6] ),
    .S(_223_),
    .X(_230_));
 sky130_fd_sc_hd__clkbuf_1 _465_ (.A(_230_),
    .X(_072_));
 sky130_fd_sc_hd__mux2_1 _466_ (.A0(net8),
    .A1(\mem[5][7] ),
    .S(_223_),
    .X(_231_));
 sky130_fd_sc_hd__clkbuf_1 _467_ (.A(_231_),
    .X(_073_));
 sky130_fd_sc_hd__and3b_1 _468_ (.A_N(\wr_ptr[0] ),
    .B(_084_),
    .C(\wr_ptr[1] ),
    .X(_232_));
 sky130_fd_sc_hd__clkbuf_4 _469_ (.A(_232_),
    .X(_233_));
 sky130_fd_sc_hd__mux2_1 _470_ (.A0(\mem[6][0] ),
    .A1(net1),
    .S(_233_),
    .X(_234_));
 sky130_fd_sc_hd__clkbuf_1 _471_ (.A(_234_),
    .X(_074_));
 sky130_fd_sc_hd__mux2_1 _472_ (.A0(\mem[6][1] ),
    .A1(net2),
    .S(_233_),
    .X(_235_));
 sky130_fd_sc_hd__clkbuf_1 _473_ (.A(_235_),
    .X(_075_));
 sky130_fd_sc_hd__mux2_1 _474_ (.A0(\mem[6][2] ),
    .A1(net3),
    .S(_233_),
    .X(_236_));
 sky130_fd_sc_hd__clkbuf_1 _475_ (.A(_236_),
    .X(_076_));
 sky130_fd_sc_hd__mux2_1 _476_ (.A0(\mem[6][3] ),
    .A1(net4),
    .S(_233_),
    .X(_237_));
 sky130_fd_sc_hd__clkbuf_1 _477_ (.A(_237_),
    .X(_077_));
 sky130_fd_sc_hd__mux2_1 _478_ (.A0(\mem[6][4] ),
    .A1(net5),
    .S(_233_),
    .X(_238_));
 sky130_fd_sc_hd__clkbuf_1 _479_ (.A(_238_),
    .X(_078_));
 sky130_fd_sc_hd__mux2_1 _480_ (.A0(\mem[6][5] ),
    .A1(net6),
    .S(_233_),
    .X(_239_));
 sky130_fd_sc_hd__clkbuf_1 _481_ (.A(_239_),
    .X(_079_));
 sky130_fd_sc_hd__mux2_1 _482_ (.A0(\mem[6][6] ),
    .A1(net7),
    .S(_233_),
    .X(_240_));
 sky130_fd_sc_hd__clkbuf_1 _483_ (.A(_240_),
    .X(_080_));
 sky130_fd_sc_hd__mux2_1 _484_ (.A0(\mem[6][7] ),
    .A1(net8),
    .S(_233_),
    .X(_241_));
 sky130_fd_sc_hd__clkbuf_1 _485_ (.A(_241_),
    .X(_081_));
 sky130_fd_sc_hd__dfxtp_1 _486_ (.CLK(clk),
    .D(_000_),
    .Q(\mem[7][0] ));
 sky130_fd_sc_hd__dfxtp_1 _487_ (.CLK(clk),
    .D(_001_),
    .Q(\mem[7][1] ));
 sky130_fd_sc_hd__dfxtp_1 _488_ (.CLK(clk),
    .D(_002_),
    .Q(\mem[7][2] ));
 sky130_fd_sc_hd__dfxtp_1 _489_ (.CLK(clk),
    .D(_003_),
    .Q(\mem[7][3] ));
 sky130_fd_sc_hd__dfxtp_1 _490_ (.CLK(clk),
    .D(_004_),
    .Q(\mem[7][4] ));
 sky130_fd_sc_hd__dfxtp_1 _491_ (.CLK(clk),
    .D(_005_),
    .Q(\mem[7][5] ));
 sky130_fd_sc_hd__dfxtp_1 _492_ (.CLK(clk),
    .D(_006_),
    .Q(\mem[7][6] ));
 sky130_fd_sc_hd__dfxtp_1 _493_ (.CLK(clk),
    .D(_007_),
    .Q(\mem[7][7] ));
 sky130_fd_sc_hd__dfrtp_2 _494_ (.CLK(clk),
    .D(_008_),
    .RESET_B(net28),
    .Q(net16));
 sky130_fd_sc_hd__dfrtp_1 _495_ (.CLK(clk),
    .D(_009_),
    .RESET_B(net29),
    .Q(net17));
 sky130_fd_sc_hd__dfrtp_1 _496_ (.CLK(clk),
    .D(_010_),
    .RESET_B(net28),
    .Q(net18));
 sky130_fd_sc_hd__dfrtp_1 _497_ (.CLK(clk),
    .D(_011_),
    .RESET_B(net30),
    .Q(net19));
 sky130_fd_sc_hd__dfrtp_1 _498_ (.CLK(clk),
    .D(_012_),
    .RESET_B(net29),
    .Q(net20));
 sky130_fd_sc_hd__dfrtp_1 _499_ (.CLK(clk),
    .D(_013_),
    .RESET_B(net29),
    .Q(net21));
 sky130_fd_sc_hd__dfrtp_1 _500_ (.CLK(clk),
    .D(_014_),
    .RESET_B(net30),
    .Q(net22));
 sky130_fd_sc_hd__dfrtp_4 _501_ (.CLK(clk),
    .D(_015_),
    .RESET_B(net30),
    .Q(net23));
 sky130_fd_sc_hd__dfrtp_4 _502_ (.CLK(clk),
    .D(_016_),
    .RESET_B(net28),
    .Q(net12));
 sky130_fd_sc_hd__dfrtp_4 _503_ (.CLK(clk),
    .D(_017_),
    .RESET_B(net29),
    .Q(net13));
 sky130_fd_sc_hd__dfrtp_4 _504_ (.CLK(clk),
    .D(_018_),
    .RESET_B(net28),
    .Q(net14));
 sky130_fd_sc_hd__dfrtp_4 _505_ (.CLK(clk),
    .D(_019_),
    .RESET_B(net28),
    .Q(net15));
 sky130_fd_sc_hd__dfrtp_4 _506_ (.CLK(clk),
    .D(_020_),
    .RESET_B(net29),
    .Q(\wr_ptr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _507_ (.CLK(clk),
    .D(_021_),
    .RESET_B(net28),
    .Q(\wr_ptr[1] ));
 sky130_fd_sc_hd__dfrtp_1 _508_ (.CLK(clk),
    .D(_022_),
    .RESET_B(net28),
    .Q(\wr_ptr[2] ));
 sky130_fd_sc_hd__dfrtp_4 _509_ (.CLK(clk),
    .D(_023_),
    .RESET_B(net30),
    .Q(\rd_ptr[0] ));
 sky130_fd_sc_hd__dfrtp_4 _510_ (.CLK(clk),
    .D(_024_),
    .RESET_B(net30),
    .Q(\rd_ptr[1] ));
 sky130_fd_sc_hd__dfrtp_4 _511_ (.CLK(clk),
    .D(_025_),
    .RESET_B(net30),
    .Q(\rd_ptr[2] ));
 sky130_fd_sc_hd__dfxtp_1 _512_ (.CLK(clk),
    .D(_026_),
    .Q(\mem[0][0] ));
 sky130_fd_sc_hd__dfxtp_1 _513_ (.CLK(clk),
    .D(_027_),
    .Q(\mem[0][1] ));
 sky130_fd_sc_hd__dfxtp_1 _514_ (.CLK(clk),
    .D(_028_),
    .Q(\mem[0][2] ));
 sky130_fd_sc_hd__dfxtp_1 _515_ (.CLK(clk),
    .D(_029_),
    .Q(\mem[0][3] ));
 sky130_fd_sc_hd__dfxtp_1 _516_ (.CLK(clk),
    .D(_030_),
    .Q(\mem[0][4] ));
 sky130_fd_sc_hd__dfxtp_1 _517_ (.CLK(clk),
    .D(_031_),
    .Q(\mem[0][5] ));
 sky130_fd_sc_hd__dfxtp_1 _518_ (.CLK(clk),
    .D(_032_),
    .Q(\mem[0][6] ));
 sky130_fd_sc_hd__dfxtp_1 _519_ (.CLK(clk),
    .D(_033_),
    .Q(\mem[0][7] ));
 sky130_fd_sc_hd__dfxtp_1 _520_ (.CLK(clk),
    .D(_034_),
    .Q(\mem[1][0] ));
 sky130_fd_sc_hd__dfxtp_1 _521_ (.CLK(clk),
    .D(_035_),
    .Q(\mem[1][1] ));
 sky130_fd_sc_hd__dfxtp_1 _522_ (.CLK(clk),
    .D(_036_),
    .Q(\mem[1][2] ));
 sky130_fd_sc_hd__dfxtp_1 _523_ (.CLK(clk),
    .D(_037_),
    .Q(\mem[1][3] ));
 sky130_fd_sc_hd__dfxtp_1 _524_ (.CLK(clk),
    .D(_038_),
    .Q(\mem[1][4] ));
 sky130_fd_sc_hd__dfxtp_1 _525_ (.CLK(clk),
    .D(_039_),
    .Q(\mem[1][5] ));
 sky130_fd_sc_hd__dfxtp_1 _526_ (.CLK(clk),
    .D(_040_),
    .Q(\mem[1][6] ));
 sky130_fd_sc_hd__dfxtp_1 _527_ (.CLK(clk),
    .D(_041_),
    .Q(\mem[1][7] ));
 sky130_fd_sc_hd__dfxtp_1 _528_ (.CLK(clk),
    .D(_042_),
    .Q(\mem[2][0] ));
 sky130_fd_sc_hd__dfxtp_1 _529_ (.CLK(clk),
    .D(_043_),
    .Q(\mem[2][1] ));
 sky130_fd_sc_hd__dfxtp_1 _530_ (.CLK(clk),
    .D(_044_),
    .Q(\mem[2][2] ));
 sky130_fd_sc_hd__dfxtp_1 _531_ (.CLK(clk),
    .D(_045_),
    .Q(\mem[2][3] ));
 sky130_fd_sc_hd__dfxtp_1 _532_ (.CLK(clk),
    .D(_046_),
    .Q(\mem[2][4] ));
 sky130_fd_sc_hd__dfxtp_1 _533_ (.CLK(clk),
    .D(_047_),
    .Q(\mem[2][5] ));
 sky130_fd_sc_hd__dfxtp_1 _534_ (.CLK(clk),
    .D(_048_),
    .Q(\mem[2][6] ));
 sky130_fd_sc_hd__dfxtp_1 _535_ (.CLK(clk),
    .D(_049_),
    .Q(\mem[2][7] ));
 sky130_fd_sc_hd__dfxtp_1 _536_ (.CLK(clk),
    .D(_050_),
    .Q(\mem[3][0] ));
 sky130_fd_sc_hd__dfxtp_1 _537_ (.CLK(clk),
    .D(_051_),
    .Q(\mem[3][1] ));
 sky130_fd_sc_hd__dfxtp_1 _538_ (.CLK(clk),
    .D(_052_),
    .Q(\mem[3][2] ));
 sky130_fd_sc_hd__dfxtp_1 _539_ (.CLK(clk),
    .D(_053_),
    .Q(\mem[3][3] ));
 sky130_fd_sc_hd__dfxtp_1 _540_ (.CLK(clk),
    .D(_054_),
    .Q(\mem[3][4] ));
 sky130_fd_sc_hd__dfxtp_1 _541_ (.CLK(clk),
    .D(_055_),
    .Q(\mem[3][5] ));
 sky130_fd_sc_hd__dfxtp_1 _542_ (.CLK(clk),
    .D(_056_),
    .Q(\mem[3][6] ));
 sky130_fd_sc_hd__dfxtp_1 _543_ (.CLK(clk),
    .D(_057_),
    .Q(\mem[3][7] ));
 sky130_fd_sc_hd__dfxtp_1 _544_ (.CLK(clk),
    .D(_058_),
    .Q(\mem[4][0] ));
 sky130_fd_sc_hd__dfxtp_1 _545_ (.CLK(clk),
    .D(_059_),
    .Q(\mem[4][1] ));
 sky130_fd_sc_hd__dfxtp_1 _546_ (.CLK(clk),
    .D(_060_),
    .Q(\mem[4][2] ));
 sky130_fd_sc_hd__dfxtp_1 _547_ (.CLK(clk),
    .D(_061_),
    .Q(\mem[4][3] ));
 sky130_fd_sc_hd__dfxtp_1 _548_ (.CLK(clk),
    .D(_062_),
    .Q(\mem[4][4] ));
 sky130_fd_sc_hd__dfxtp_1 _549_ (.CLK(clk),
    .D(_063_),
    .Q(\mem[4][5] ));
 sky130_fd_sc_hd__dfxtp_1 _550_ (.CLK(clk),
    .D(_064_),
    .Q(\mem[4][6] ));
 sky130_fd_sc_hd__dfxtp_1 _551_ (.CLK(clk),
    .D(_065_),
    .Q(\mem[4][7] ));
 sky130_fd_sc_hd__dfxtp_1 _552_ (.CLK(clk),
    .D(_066_),
    .Q(\mem[5][0] ));
 sky130_fd_sc_hd__dfxtp_1 _553_ (.CLK(clk),
    .D(_067_),
    .Q(\mem[5][1] ));
 sky130_fd_sc_hd__dfxtp_1 _554_ (.CLK(clk),
    .D(_068_),
    .Q(\mem[5][2] ));
 sky130_fd_sc_hd__dfxtp_1 _555_ (.CLK(clk),
    .D(_069_),
    .Q(\mem[5][3] ));
 sky130_fd_sc_hd__dfxtp_1 _556_ (.CLK(clk),
    .D(_070_),
    .Q(\mem[5][4] ));
 sky130_fd_sc_hd__dfxtp_1 _557_ (.CLK(clk),
    .D(_071_),
    .Q(\mem[5][5] ));
 sky130_fd_sc_hd__dfxtp_1 _558_ (.CLK(clk),
    .D(_072_),
    .Q(\mem[5][6] ));
 sky130_fd_sc_hd__dfxtp_1 _559_ (.CLK(clk),
    .D(_073_),
    .Q(\mem[5][7] ));
 sky130_fd_sc_hd__dfxtp_1 _560_ (.CLK(clk),
    .D(_074_),
    .Q(\mem[6][0] ));
 sky130_fd_sc_hd__dfxtp_1 _561_ (.CLK(clk),
    .D(_075_),
    .Q(\mem[6][1] ));
 sky130_fd_sc_hd__dfxtp_1 _562_ (.CLK(clk),
    .D(_076_),
    .Q(\mem[6][2] ));
 sky130_fd_sc_hd__dfxtp_1 _563_ (.CLK(clk),
    .D(_077_),
    .Q(\mem[6][3] ));
 sky130_fd_sc_hd__dfxtp_1 _564_ (.CLK(clk),
    .D(_078_),
    .Q(\mem[6][4] ));
 sky130_fd_sc_hd__dfxtp_1 _565_ (.CLK(clk),
    .D(_079_),
    .Q(\mem[6][5] ));
 sky130_fd_sc_hd__dfxtp_1 _566_ (.CLK(clk),
    .D(_080_),
    .Q(\mem[6][6] ));
 sky130_fd_sc_hd__dfxtp_1 _567_ (.CLK(clk),
    .D(_081_),
    .Q(\mem[6][7] ));
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
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__decap_3 PHY_56 ();
 sky130_fd_sc_hd__decap_3 PHY_57 ();
 sky130_fd_sc_hd__decap_3 PHY_58 ();
 sky130_fd_sc_hd__decap_3 PHY_59 ();
 sky130_fd_sc_hd__decap_3 PHY_60 ();
 sky130_fd_sc_hd__decap_3 PHY_61 ();
 sky130_fd_sc_hd__decap_3 PHY_62 ();
 sky130_fd_sc_hd__decap_3 PHY_63 ();
 sky130_fd_sc_hd__decap_3 PHY_64 ();
 sky130_fd_sc_hd__decap_3 PHY_65 ();
 sky130_fd_sc_hd__decap_3 PHY_66 ();
 sky130_fd_sc_hd__decap_3 PHY_67 ();
 sky130_fd_sc_hd__decap_3 PHY_68 ();
 sky130_fd_sc_hd__decap_3 PHY_69 ();
 sky130_fd_sc_hd__decap_3 PHY_70 ();
 sky130_fd_sc_hd__decap_3 PHY_71 ();
 sky130_fd_sc_hd__decap_3 PHY_72 ();
 sky130_fd_sc_hd__decap_3 PHY_73 ();
 sky130_fd_sc_hd__decap_3 PHY_74 ();
 sky130_fd_sc_hd__decap_3 PHY_75 ();
 sky130_fd_sc_hd__decap_3 PHY_76 ();
 sky130_fd_sc_hd__decap_3 PHY_77 ();
 sky130_fd_sc_hd__decap_3 PHY_78 ();
 sky130_fd_sc_hd__decap_3 PHY_79 ();
 sky130_fd_sc_hd__decap_3 PHY_80 ();
 sky130_fd_sc_hd__decap_3 PHY_81 ();
 sky130_fd_sc_hd__decap_3 PHY_82 ();
 sky130_fd_sc_hd__decap_3 PHY_83 ();
 sky130_fd_sc_hd__decap_3 PHY_84 ();
 sky130_fd_sc_hd__decap_3 PHY_85 ();
 sky130_fd_sc_hd__decap_3 PHY_86 ();
 sky130_fd_sc_hd__decap_3 PHY_87 ();
 sky130_fd_sc_hd__decap_3 PHY_88 ();
 sky130_fd_sc_hd__decap_3 PHY_89 ();
 sky130_fd_sc_hd__decap_3 PHY_90 ();
 sky130_fd_sc_hd__decap_3 PHY_91 ();
 sky130_fd_sc_hd__decap_3 PHY_92 ();
 sky130_fd_sc_hd__decap_3 PHY_93 ();
 sky130_fd_sc_hd__decap_3 PHY_94 ();
 sky130_fd_sc_hd__decap_3 PHY_95 ();
 sky130_fd_sc_hd__decap_3 PHY_96 ();
 sky130_fd_sc_hd__decap_3 PHY_97 ();
 sky130_fd_sc_hd__decap_3 PHY_98 ();
 sky130_fd_sc_hd__decap_3 PHY_99 ();
 sky130_fd_sc_hd__decap_3 PHY_100 ();
 sky130_fd_sc_hd__decap_3 PHY_101 ();
 sky130_fd_sc_hd__decap_3 PHY_102 ();
 sky130_fd_sc_hd__decap_3 PHY_103 ();
 sky130_fd_sc_hd__decap_3 PHY_104 ();
 sky130_fd_sc_hd__decap_3 PHY_105 ();
 sky130_fd_sc_hd__decap_3 PHY_106 ();
 sky130_fd_sc_hd__decap_3 PHY_107 ();
 sky130_fd_sc_hd__decap_3 PHY_108 ();
 sky130_fd_sc_hd__decap_3 PHY_109 ();
 sky130_fd_sc_hd__decap_3 PHY_110 ();
 sky130_fd_sc_hd__decap_3 PHY_111 ();
 sky130_fd_sc_hd__decap_3 PHY_112 ();
 sky130_fd_sc_hd__decap_3 PHY_113 ();
 sky130_fd_sc_hd__decap_3 PHY_114 ();
 sky130_fd_sc_hd__decap_3 PHY_115 ();
 sky130_fd_sc_hd__decap_3 PHY_116 ();
 sky130_fd_sc_hd__decap_3 PHY_117 ();
 sky130_fd_sc_hd__decap_3 PHY_118 ();
 sky130_fd_sc_hd__decap_3 PHY_119 ();
 sky130_fd_sc_hd__decap_3 PHY_120 ();
 sky130_fd_sc_hd__decap_3 PHY_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_287 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_288 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_289 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_290 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_291 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_292 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_293 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_294 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_295 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_296 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_297 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_298 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_299 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_300 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_301 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_302 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_303 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_304 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_305 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_306 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_307 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_308 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_309 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_310 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_311 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_312 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_313 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_314 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_315 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_316 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_317 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_318 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_319 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_320 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_321 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_322 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_323 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_324 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_325 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_326 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_327 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_328 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_329 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_330 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_331 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_332 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_333 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_334 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_335 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_336 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_337 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_338 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_339 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_340 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_341 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_342 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_343 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_344 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_345 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_346 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_347 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_348 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_349 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_350 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_351 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_352 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_353 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_354 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_355 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_356 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_357 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_358 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_359 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_360 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_361 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_362 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_363 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_364 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_365 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_366 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_367 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_368 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_369 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_370 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_371 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_372 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_373 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_374 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_375 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_376 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_377 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_378 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_379 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_380 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_381 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_382 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_383 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_384 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_385 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_386 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_387 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_388 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_389 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_390 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_391 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_392 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_393 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_394 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_395 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_396 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_397 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_398 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_399 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_400 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_401 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_402 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_403 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_404 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_405 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_406 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_407 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_408 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_409 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_410 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_411 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_412 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_413 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_414 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_415 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_416 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_417 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_418 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_419 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_420 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_421 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_422 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_423 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_424 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_425 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_426 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_427 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_428 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_429 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_430 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_431 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_432 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_433 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_434 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_435 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_436 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_437 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_438 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_439 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_440 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_441 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_442 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_443 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_444 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_445 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_446 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_447 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_448 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_449 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_450 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_451 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_452 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_453 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_454 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_455 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_456 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_457 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_458 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_459 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_460 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_461 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_462 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_463 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_464 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_465 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_466 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_467 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_468 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_469 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_470 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_471 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_472 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_473 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_474 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_475 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_476 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_477 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_478 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_479 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_480 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_481 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_482 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_483 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_484 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_485 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_486 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_487 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_488 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_489 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_490 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_491 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_492 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_493 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_494 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_495 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_496 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_497 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_498 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_499 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_500 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_501 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_502 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_503 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_504 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_505 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_506 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_507 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_508 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_509 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_510 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_511 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_512 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_513 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_514 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_515 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_516 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_517 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_518 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_519 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_520 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_521 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_522 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_523 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_524 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_525 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_526 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_527 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_528 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_529 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_530 ();
 sky130_fd_sc_hd__buf_2 input1 (.A(data_in[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_2 input2 (.A(data_in[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_2 input3 (.A(data_in[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_2 input4 (.A(data_in[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_2 input5 (.A(data_in[4]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_2 input6 (.A(data_in[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_2 input7 (.A(data_in[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_2 input8 (.A(data_in[7]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_2 input9 (.A(pop),
    .X(net9));
 sky130_fd_sc_hd__buf_2 input10 (.A(push),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(rst_n),
    .X(net11));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(count[0]));
 sky130_fd_sc_hd__clkbuf_4 output13 (.A(net13),
    .X(count[1]));
 sky130_fd_sc_hd__clkbuf_4 output14 (.A(net14),
    .X(count[2]));
 sky130_fd_sc_hd__buf_2 output15 (.A(net15),
    .X(count[3]));
 sky130_fd_sc_hd__clkbuf_4 output16 (.A(net16),
    .X(data_out[0]));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(data_out[1]));
 sky130_fd_sc_hd__clkbuf_4 output18 (.A(net18),
    .X(data_out[2]));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(data_out[3]));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(data_out[4]));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(data_out[5]));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(data_out[6]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(data_out[7]));
 sky130_fd_sc_hd__clkbuf_4 output24 (.A(net27),
    .X(empty));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(full));
 sky130_fd_sc_hd__clkbuf_2 max_cap26 (.A(_107_),
    .X(net26));
 sky130_fd_sc_hd__clkbuf_1 max_cap27 (.A(net24),
    .X(net27));
 sky130_fd_sc_hd__clkbuf_4 fanout28 (.A(net29),
    .X(net28));
 sky130_fd_sc_hd__buf_2 fanout29 (.A(net30),
    .X(net29));
 sky130_fd_sc_hd__buf_2 fanout30 (.A(net11),
    .X(net30));
endmodule
