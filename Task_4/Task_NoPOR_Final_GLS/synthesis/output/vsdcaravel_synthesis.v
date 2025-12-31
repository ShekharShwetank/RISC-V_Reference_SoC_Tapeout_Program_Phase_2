/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Thu Dec 25 15:57:34 2025
/////////////////////////////////////////////////////////////


module RAM128 ( CLK, EN0, VGND, VPWR, A0, Di0, Do0, WE0 );
  input [6:0] A0;
  input [31:0] Di0;
  output [31:0] Do0;
  input [3:0] WE0;
  input CLK, EN0, VGND, VPWR;


endmodule


module mprj_io ( vddio, vssio, vdda, vssa, vccd, vssd, vdda1, vdda2, vssa1, 
        vssa2, vddio_q, vssio_q, analog_a, analog_b, rstn_h, reset_n_core_h, 
        vccd_conb, enh, ib_mode_sel, vtrip_sel, slow_sel, holdover, analog_en, 
        analog_sel, analog_pol, io, io_out, oeb, inp_dis, dm, io_in, io_in_3v3, 
        analog_io, analog_noesd_io );
  input [37:0] vccd_conb;
  input [37:0] enh;
  input [37:0] ib_mode_sel;
  input [37:0] vtrip_sel;
  input [37:0] slow_sel;
  input [37:0] holdover;
  input [37:0] analog_en;
  input [37:0] analog_sel;
  input [37:0] analog_pol;
  inout [37:0] io;
  input [37:0] io_out;
  input [37:0] oeb;
  input [37:0] inp_dis;
  input [113:0] dm;
  output [37:0] io_in;
  output [37:0] io_in_3v3;
  output [28:0] analog_io;
  output [28:0] analog_noesd_io;
  input vddio_q, vssio_q, analog_a, analog_b, rstn_h, reset_n_core_h;
  inout vddio,  vssio,  vdda,  vssa,  vccd,  vssd,  vdda1,  vdda2,  vssa1, 
     vssa2;

  tri   [37:0] io;
  tri   [37:0] io_out;
  tri   [37:0] oeb;
  tri   [37:0] inp_dis;
  tri   [113:0] dm;
  tri   [37:0] io_in;
  assign analog_noesd_io[28] = io[35];
  assign analog_io[28] = io[35];
  assign analog_noesd_io[27] = io[34];
  assign analog_io[27] = io[34];
  assign analog_noesd_io[26] = io[33];
  assign analog_io[26] = io[33];
  assign analog_noesd_io[25] = io[32];
  assign analog_io[25] = io[32];
  assign analog_noesd_io[24] = io[31];
  assign analog_io[24] = io[31];
  assign analog_noesd_io[23] = io[30];
  assign analog_io[23] = io[30];
  assign analog_noesd_io[22] = io[29];
  assign analog_io[22] = io[29];
  assign analog_noesd_io[21] = io[28];
  assign analog_io[21] = io[28];
  assign analog_noesd_io[20] = io[27];
  assign analog_io[20] = io[27];
  assign analog_noesd_io[19] = io[26];
  assign analog_io[19] = io[26];
  assign analog_noesd_io[18] = io[25];
  assign analog_io[18] = io[25];
  assign analog_noesd_io[17] = io[24];
  assign analog_io[17] = io[24];
  assign analog_noesd_io[16] = io[23];
  assign analog_io[16] = io[23];
  assign analog_noesd_io[15] = io[22];
  assign analog_io[15] = io[22];
  assign analog_noesd_io[14] = io[21];
  assign analog_io[14] = io[21];
  assign analog_noesd_io[13] = io[20];
  assign analog_io[13] = io[20];
  assign analog_noesd_io[12] = io[19];
  assign analog_io[12] = io[19];
  assign analog_noesd_io[11] = io[18];
  assign analog_io[11] = io[18];
  assign analog_noesd_io[10] = io[17];
  assign analog_io[10] = io[17];
  assign analog_noesd_io[9] = io[16];
  assign analog_io[9] = io[16];
  assign analog_noesd_io[8] = io[15];
  assign analog_io[8] = io[15];
  assign analog_noesd_io[7] = io[14];
  assign analog_io[7] = io[14];
  assign analog_noesd_io[6] = io[13];
  assign analog_io[6] = io[13];
  assign analog_noesd_io[5] = io[12];
  assign analog_io[5] = io[12];
  assign analog_noesd_io[4] = io[11];
  assign analog_io[4] = io[11];
  assign analog_noesd_io[3] = io[10];
  assign analog_io[3] = io[10];
  assign analog_noesd_io[2] = io[9];
  assign analog_io[2] = io[9];
  assign analog_noesd_io[1] = io[8];
  assign analog_io[1] = io[8];
  assign analog_noesd_io[0] = io[7];
  assign analog_io[0] = io[7];
  assign io_in_3v3[37] = io_in[37];
  assign io_in_3v3[36] = io_in[36];
  assign io_in_3v3[35] = io_in[35];
  assign io_in_3v3[34] = io_in[34];
  assign io_in_3v3[33] = io_in[33];
  assign io_in_3v3[32] = io_in[32];
  assign io_in_3v3[31] = io_in[31];
  assign io_in_3v3[30] = io_in[30];
  assign io_in_3v3[29] = io_in[29];
  assign io_in_3v3[28] = io_in[28];
  assign io_in_3v3[27] = io_in[27];
  assign io_in_3v3[26] = io_in[26];
  assign io_in_3v3[25] = io_in[25];
  assign io_in_3v3[24] = io_in[24];
  assign io_in_3v3[23] = io_in[23];
  assign io_in_3v3[22] = io_in[22];
  assign io_in_3v3[21] = io_in[21];
  assign io_in_3v3[20] = io_in[20];
  assign io_in_3v3[19] = io_in[19];
  assign io_in_3v3[18] = io_in[18];
  assign io_in_3v3[17] = io_in[17];
  assign io_in_3v3[16] = io_in[16];
  assign io_in_3v3[15] = io_in[15];
  assign io_in_3v3[14] = io_in[14];
  assign io_in_3v3[13] = io_in[13];
  assign io_in_3v3[12] = io_in[12];
  assign io_in_3v3[11] = io_in[11];
  assign io_in_3v3[10] = io_in[10];
  assign io_in_3v3[9] = io_in[9];
  assign io_in_3v3[8] = io_in[8];
  assign io_in_3v3[7] = io_in[7];
  assign io_in_3v3[6] = io_in[6];
  assign io_in_3v3[5] = io_in[5];
  assign io_in_3v3[4] = io_in[4];
  assign io_in_3v3[3] = io_in[3];
  assign io_in_3v3[2] = io_in[2];
  assign io_in_3v3[1] = io_in[1];
  assign io_in_3v3[0] = io_in[0];

  pc3b03ed_wrapper area1_io_pad ( .PAD(io[18:0]), .OUT(io_out[18:0]), .IN(
        io_in[18:0]), .OUT_EN_N(oeb[18:0]), .INPUT_DIS(inp_dis[18:0]), .dm(
        dm[56:0]) );
  pc3b03ed_wrapper area2_io_pad ( .PAD(io[37:19]), .OUT(io_out[37:19]), .IN(
        io_in[37:19]), .OUT_EN_N(oeb[37:19]), .INPUT_DIS(inp_dis[37:19]), .dm(
        dm[113:57]) );
endmodule


module chip_io ( vddio_pad, vddio_pad2, vssio_pad, vssio_pad2, vccd_pad, 
        vssd_pad, vdda_pad, vssa_pad, vdda1_pad, vdda1_pad2, vdda2_pad, 
        vssa1_pad, vssa1_pad2, vssa2_pad, vccd1_pad, vccd2_pad, vssd1_pad, 
        vssd2_pad, vddio, vssio, vccd, vssd, vdda, vssa, vdda1, vdda2, vssa1, 
        vssa2, vccd1, vccd2, vssd1, vssd2, gpio, clock, reset_n, flash_csb, 
        flash_clk, flash_io0, flash_io1, rstn_h, por, reset_n_core_h, 
        clock_core, gpio_out_core, gpio_in_core, gpio_mode0_core, 
        gpio_mode1_core, gpio_outenb_core, gpio_inenb_core, flash_csb_core, 
        flash_clk_core, flash_csb_oeb_core, flash_clk_oeb_core, 
        flash_io0_oeb_core, flash_io1_oeb_core, flash_io0_ieb_core, 
        flash_io1_ieb_core, flash_io0_do_core, flash_io1_do_core, 
        flash_io0_di_core, flash_io1_di_core, mprj_io, mprj_io_out, 
        mprj_io_oeb, mprj_io_inp_dis, mprj_io_ib_mode_sel, mprj_io_vtrip_sel, 
        mprj_io_slow_sel, mprj_io_holdover, mprj_io_analog_en, 
        mprj_io_analog_sel, mprj_io_analog_pol, mprj_io_dm, mprj_io_in, 
        mprj_io_one, mprj_analog_io );
  inout [37:0] mprj_io;
  input [37:0] mprj_io_out;
  input [37:0] mprj_io_oeb;
  input [37:0] mprj_io_inp_dis;
  input [37:0] mprj_io_ib_mode_sel;
  input [37:0] mprj_io_vtrip_sel;
  input [37:0] mprj_io_slow_sel;
  input [37:0] mprj_io_holdover;
  input [37:0] mprj_io_analog_en;
  input [37:0] mprj_io_analog_sel;
  input [37:0] mprj_io_analog_pol;
  input [113:0] mprj_io_dm;
  output [37:0] mprj_io_in;
  input [37:0] mprj_io_one;
  inout [28:0] mprj_analog_io;
  input clock, reset_n, rstn_h, por, gpio_out_core, gpio_mode0_core,
         gpio_mode1_core, gpio_outenb_core, gpio_inenb_core, flash_csb_core,
         flash_clk_core, flash_csb_oeb_core, flash_clk_oeb_core,
         flash_io0_oeb_core, flash_io1_oeb_core, flash_io0_ieb_core,
         flash_io1_ieb_core, flash_io0_do_core, flash_io1_do_core;
  output flash_csb, flash_clk, reset_n_core_h, clock_core, gpio_in_core,
         flash_io0_di_core, flash_io1_di_core;
  inout vddio_pad,  vddio_pad2,  vssio_pad,  vssio_pad2,  vccd_pad,  vssd_pad, 
     vdda_pad,  vssa_pad,  vdda1_pad,  vdda1_pad2,  vdda2_pad,  vssa1_pad, 
     vssa1_pad2,  vssa2_pad,  vccd1_pad,  vccd2_pad,  vssd1_pad,  vssd2_pad, 
     vddio,  vssio,  vccd,  vssd,  vdda,  vssa,  vdda1,  vdda2,  vssa1,  vssa2, 
     vccd1,  vccd2,  vssd1,  vssd2,  gpio,  flash_io0,  flash_io1;
  wire   net170634, net170635, net170636, net170637, net170638, net170639,
         net170640, net170641, net170642, net170643, net170644, net170645,
         net170646, net170647, net170648, net170649, net170650, net170651,
         net170652, net170653, net170654, net170655, net170656, net170657,
         net170658, net170659, net170660, net170661, net170662, net170663,
         net170664, net170665, net170666, net170667, net170668, net170669,
         net170670, net170671, net170672, net170673, net170674, net170675,
         net170676, net170677, net170678, net170679, net170680, net170681,
         net170682, net170683, net170684, net170685, net170686, net170687,
         net170688, net170689, net170690, net170691, net170692, net170693,
         net170694, net170695, net170696, net170697, net170698, net170699,
         net170700, net170701, net170702, net170703, net170704, net170705,
         net170706, net170707, net170708, net170709, net170710, net170711,
         net170712, net170713, net170714, net170715, net170716, net170717,
         net170718, net170719, net170720, net170721, net170722, net170723,
         net170724, net170725, net170726, net170727, net170728, net170729,
         net170730, net170731, net170732, net170733, net170734, net170735,
         net170736, net170737, net170738, net170739, net170740, net170741,
         net170742, net170743, net170744, net170745, net170746, net170747,
         net170748, net170749, net170750, net170751, net170752, net170753,
         net170754, net170755, net170756, net170757, net170758, net170759,
         net170760, net170761, net170762, net170763, net170764, net170765,
         net170766, net170767, net170768, net170769, net170770, net170771,
         net170772, net170773, net170774, net170775, net170776, net170777,
         net170778, net170779, net170780, net170781, net170782, net170783,
         net170784, net170785, net170786, net170787, net170788, net170789,
         net170790, net170791, net170792, net170793, net170794, net170795,
         net170796, net170797, net170798, net170799, net170800, net170801,
         net170802, net170803, net170804, net170805, net170806, net170807,
         net170808, net170809, net170810, net170811, net170812, net170813,
         net170814, net170815, net170816, net170817, net170818, net170819,
         net170820, net170821, net170822, net170823, net170824, net170825,
         net170826, net170827, net170828, net170829, net170830, net170831,
         net170832, net170833, net170834, net170835, net170836, net170837,
         net170838, net170839, net170840, net170841, net170842, net170843,
         net170844, net170845, net170846, net170847, net170848, net170849,
         net170850, net170851, net170852, net170853, net170854, net170855,
         net170856, net170857, net170858, net170859, net170860, net170861,
         net170862, net170863, net170864, net170865, net170866, net170867,
         net170868, net170869, net170870, net170871, net170872, net170873,
         net170874, net170875, net170876, net170877, net170878, net170879,
         net170880, net170881, net170882, net170883, net170884, net170885,
         net170886, net170887, net170888, net170889, net170890, net170891,
         net170892, net170893, net170894, net170895, net170896, net170897,
         net170898, net170899, net170900, net170901, net170902, net170903,
         net170904, net170905, net170906, net170907, net170908, net170909,
         net170910, net170911, net170912, net170913, net170914, net170915,
         net170916, net170917, net170918, net170919, net170920, net170921,
         net170922, net170923, net170924, net170925, net170926, net170927,
         net170928, net170929, net170930, net170931, net170932, net170933,
         net170934, net170935, net170936, net170937, net170938, net170939,
         net170940, net170941, net170942, net170943, net170944, net170945,
         net170946, net170947, net170948, net170949, net170950, net170951,
         net170952, net170953, net170954, net170955, net170956, net170957,
         net170958, net170959, net170960, net170961, net170962, net170963,
         net170964, net170965, net170966, net170967, net170968, net170969,
         net170970, net170971, net170972, net170973, net170974, net170975,
         net170976;
  tri   vddio_pad;
  tri   vddio_pad2;
  tri   vssio_pad;
  tri   vssio_pad2;
  tri   vccd_pad;
  tri   vssd_pad;
  tri   vdda_pad;
  tri   vssa_pad;
  tri   vdda1_pad;
  tri   vdda1_pad2;
  tri   vdda2_pad;
  tri   vssa1_pad;
  tri   vssa1_pad2;
  tri   vssa2_pad;
  tri   vccd1_pad;
  tri   vccd2_pad;
  tri   vssd1_pad;
  tri   vssd2_pad;
  tri   gpio;
  tri   flash_io0;
  tri   flash_io1;
  tri   [37:0] mprj_io;
  tri   [37:0] mprj_io_out;
  tri   [37:0] mprj_io_oeb;
  tri   [37:0] mprj_io_inp_dis;
  tri   [113:0] mprj_io_dm;
  tri   \mprj_io_in[3] ;
  tri   [28:0] mprj_analog_io;
wand  reset_n;
wand  reset_n_core_h;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36;

  pvda mgmt_vddio_pad_0 ( .VDDO(vddio_pad) );
  pvda mgmt_vddio_pad_1 ( .VDDO(vddio_pad2) );
  pvda mgmt_vdda_pad ( .VDDO(vdda_pad) );
  pvdi mgmt_vccd_pad ( .VDD(vccd_pad) );
  pv0a mgmt_vssio_pad_0 ( .VSSO(vssio_pad) );
  pv0a mgmt_vssio_pad_1 ( .VSSO(vssio_pad2) );
  pv0a mgmt_vssa_pad ( .VSSO(vssa_pad) );
  pv0i mgmt_vssd_pad ( .VSS(vssd_pad) );
  pvda user1_vdda_pad_0 ( .VDDO(vdda1_pad) );
  pvda user1_vdda_pad_1 ( .VDDO(vdda1_pad2) );
  pvdi user1_vccd_pad ( .VDD(vccd1_pad) );
  pv0a user1_vssa_pad_0 ( .VSSO(vssa1_pad) );
  pv0a user1_vssa_pad_1 ( .VSSO(vssa1_pad2) );
  pv0i user1_vssd_pad ( .VSS(vssd1_pad) );
  pvda user2_vdda_pad ( .VDDO(vdda2_pad) );
  pvdi user2_vccd_pad ( .VDD(vccd2_pad) );
  pv0a user2_vssa_pad ( .VSSO(vssa2_pad) );
  pv0i user2_vssd_pad ( .VSS(vssd2_pad) );
  pc3d01 clock_pad ( .PAD(clock), .CIN(clock_core) );
  pc3b03ed gpio_pad ( .I(1'b0), .OEN(1'b1), .PAD(gpio), .RENB(1'b1) );
  pc3b03ed flash_io0_pad ( .I(1'b0), .OEN(1'b1), .PAD(flash_io0), .RENB(1'b1)
         );
  pc3b03ed flash_io1_pad ( .I(1'b0), .OEN(1'b1), .PAD(flash_io1), .RENB(1'b1)
         );
  pc3o01 flash_csb_pad ( .I(1'b1), .PAD(flash_csb) );
  pc3o01 flash_clk_pad ( .I(1'b0), .PAD(flash_clk) );
  pc3d01 resetb_pad ( .PAD(reset_n), .CIN(reset_n_core_h) );
  mprj_io mprj_pads ( .vddio(vddio), .vssio(vssio), .vccd(vccd), .vssd(vssd), 
        .vdda1(vdda1), .vdda2(vdda2), .vssa1(vssa1), .vssa2(vssa2), .vddio_q(
        1'b0), .vssio_q(1'b0), .analog_a(1'b0), .analog_b(1'b0), .rstn_h(
        net170634), .reset_n_core_h(reset_n_core_h), .vccd_conb({net170635, 
        net170636, net170637, net170638, net170639, net170640, net170641, 
        net170642, net170643, net170644, net170645, net170646, net170647, 
        net170648, net170649, net170650, net170651, net170652, net170653, 
        net170654, net170655, net170656, net170657, net170658, net170659, 
        net170660, net170661, net170662, net170663, net170664, net170665, 
        net170666, net170667, net170668, net170669, net170670, net170671, 
        net170672}), .enh({net170673, net170674, net170675, net170676, 
        net170677, net170678, net170679, net170680, net170681, net170682, 
        net170683, net170684, net170685, net170686, net170687, net170688, 
        net170689, net170690, net170691, net170692, net170693, net170694, 
        net170695, net170696, net170697, net170698, net170699, net170700, 
        net170701, net170702, net170703, net170704, net170705, net170706, 
        net170707, net170708, net170709, net170710}), .ib_mode_sel({net170711, 
        net170712, net170713, net170714, net170715, net170716, net170717, 
        net170718, net170719, net170720, net170721, net170722, net170723, 
        net170724, net170725, net170726, net170727, net170728, net170729, 
        net170730, net170731, net170732, net170733, net170734, net170735, 
        net170736, net170737, net170738, net170739, net170740, net170741, 
        net170742, net170743, net170744, net170745, net170746, net170747, 
        net170748}), .vtrip_sel({net170749, net170750, net170751, net170752, 
        net170753, net170754, net170755, net170756, net170757, net170758, 
        net170759, net170760, net170761, net170762, net170763, net170764, 
        net170765, net170766, net170767, net170768, net170769, net170770, 
        net170771, net170772, net170773, net170774, net170775, net170776, 
        net170777, net170778, net170779, net170780, net170781, net170782, 
        net170783, net170784, net170785, net170786}), .slow_sel({net170787, 
        net170788, net170789, net170790, net170791, net170792, net170793, 
        net170794, net170795, net170796, net170797, net170798, net170799, 
        net170800, net170801, net170802, net170803, net170804, net170805, 
        net170806, net170807, net170808, net170809, net170810, net170811, 
        net170812, net170813, net170814, net170815, net170816, net170817, 
        net170818, net170819, net170820, net170821, net170822, net170823, 
        net170824}), .holdover({net170825, net170826, net170827, net170828, 
        net170829, net170830, net170831, net170832, net170833, net170834, 
        net170835, net170836, net170837, net170838, net170839, net170840, 
        net170841, net170842, net170843, net170844, net170845, net170846, 
        net170847, net170848, net170849, net170850, net170851, net170852, 
        net170853, net170854, net170855, net170856, net170857, net170858, 
        net170859, net170860, net170861, net170862}), .analog_en({net170863, 
        net170864, net170865, net170866, net170867, net170868, net170869, 
        net170870, net170871, net170872, net170873, net170874, net170875, 
        net170876, net170877, net170878, net170879, net170880, net170881, 
        net170882, net170883, net170884, net170885, net170886, net170887, 
        net170888, net170889, net170890, net170891, net170892, net170893, 
        net170894, net170895, net170896, net170897, net170898, net170899, 
        net170900}), .analog_sel({net170901, net170902, net170903, net170904, 
        net170905, net170906, net170907, net170908, net170909, net170910, 
        net170911, net170912, net170913, net170914, net170915, net170916, 
        net170917, net170918, net170919, net170920, net170921, net170922, 
        net170923, net170924, net170925, net170926, net170927, net170928, 
        net170929, net170930, net170931, net170932, net170933, net170934, 
        net170935, net170936, net170937, net170938}), .analog_pol({net170939, 
        net170940, net170941, net170942, net170943, net170944, net170945, 
        net170946, net170947, net170948, net170949, net170950, net170951, 
        net170952, net170953, net170954, net170955, net170956, net170957, 
        net170958, net170959, net170960, net170961, net170962, net170963, 
        net170964, net170965, net170966, net170967, net170968, net170969, 
        net170970, net170971, net170972, net170973, net170974, net170975, 
        net170976}), .io(mprj_io), .io_out(mprj_io_out), .oeb(mprj_io_oeb), 
        .inp_dis(mprj_io_inp_dis), .dm(mprj_io_dm), .io_in({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, mprj_io_in[3], 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36}), .analog_io(mprj_analog_io) );
endmodule


module RAM256 ( VPWR, VGND, CLK, WE0, EN0, A0, Di0, Do0 );
  input [3:0] WE0;
  input [7:0] A0;
  input [31:0] Di0;
  output [31:0] Do0;
  input CLK, EN0;
  inout VPWR,  VGND;
  wire   N0, \Do0_pre[1][31] , \Do0_pre[1][30] , \Do0_pre[1][29] ,
         \Do0_pre[1][28] , \Do0_pre[1][27] , \Do0_pre[1][26] ,
         \Do0_pre[1][25] , \Do0_pre[1][24] , \Do0_pre[1][23] ,
         \Do0_pre[1][22] , \Do0_pre[1][21] , \Do0_pre[1][20] ,
         \Do0_pre[1][19] , \Do0_pre[1][18] , \Do0_pre[1][17] ,
         \Do0_pre[1][16] , \Do0_pre[1][15] , \Do0_pre[1][14] ,
         \Do0_pre[1][13] , \Do0_pre[1][12] , \Do0_pre[1][11] ,
         \Do0_pre[1][10] , \Do0_pre[1][9] , \Do0_pre[1][8] , \Do0_pre[1][7] ,
         \Do0_pre[1][6] , \Do0_pre[1][5] , \Do0_pre[1][4] , \Do0_pre[1][3] ,
         \Do0_pre[1][2] , \Do0_pre[1][1] , \Do0_pre[1][0] , \Do0_pre[0][31] ,
         \Do0_pre[0][30] , \Do0_pre[0][29] , \Do0_pre[0][28] ,
         \Do0_pre[0][27] , \Do0_pre[0][26] , \Do0_pre[0][25] ,
         \Do0_pre[0][24] , \Do0_pre[0][23] , \Do0_pre[0][22] ,
         \Do0_pre[0][21] , \Do0_pre[0][20] , \Do0_pre[0][19] ,
         \Do0_pre[0][18] , \Do0_pre[0][17] , \Do0_pre[0][16] ,
         \Do0_pre[0][15] , \Do0_pre[0][14] , \Do0_pre[0][13] ,
         \Do0_pre[0][12] , \Do0_pre[0][11] , \Do0_pre[0][10] , \Do0_pre[0][9] ,
         \Do0_pre[0][8] , \Do0_pre[0][7] , \Do0_pre[0][6] , \Do0_pre[0][5] ,
         \Do0_pre[0][4] , \Do0_pre[0][3] , \Do0_pre[0][2] , \Do0_pre[0][1] ,
         \Do0_pre[0][0] , N1, N2;
  wire   [1:0] SEL0;

  RAM128 \BANK128[0].RAM128  ( .CLK(CLK), .EN0(SEL0[0]), .VGND(VGND), .VPWR(
        VPWR), .A0(A0[6:0]), .Di0(Di0), .Do0({\Do0_pre[0][31] , 
        \Do0_pre[0][30] , \Do0_pre[0][29] , \Do0_pre[0][28] , \Do0_pre[0][27] , 
        \Do0_pre[0][26] , \Do0_pre[0][25] , \Do0_pre[0][24] , \Do0_pre[0][23] , 
        \Do0_pre[0][22] , \Do0_pre[0][21] , \Do0_pre[0][20] , \Do0_pre[0][19] , 
        \Do0_pre[0][18] , \Do0_pre[0][17] , \Do0_pre[0][16] , \Do0_pre[0][15] , 
        \Do0_pre[0][14] , \Do0_pre[0][13] , \Do0_pre[0][12] , \Do0_pre[0][11] , 
        \Do0_pre[0][10] , \Do0_pre[0][9] , \Do0_pre[0][8] , \Do0_pre[0][7] , 
        \Do0_pre[0][6] , \Do0_pre[0][5] , \Do0_pre[0][4] , \Do0_pre[0][3] , 
        \Do0_pre[0][2] , \Do0_pre[0][1] , \Do0_pre[0][0] }), .WE0(WE0) );
  RAM128 \BANK128[1].RAM128  ( .CLK(CLK), .EN0(SEL0[1]), .VGND(VGND), .VPWR(
        VPWR), .A0(A0[6:0]), .Di0(Di0), .Do0({\Do0_pre[1][31] , 
        \Do0_pre[1][30] , \Do0_pre[1][29] , \Do0_pre[1][28] , \Do0_pre[1][27] , 
        \Do0_pre[1][26] , \Do0_pre[1][25] , \Do0_pre[1][24] , \Do0_pre[1][23] , 
        \Do0_pre[1][22] , \Do0_pre[1][21] , \Do0_pre[1][20] , \Do0_pre[1][19] , 
        \Do0_pre[1][18] , \Do0_pre[1][17] , \Do0_pre[1][16] , \Do0_pre[1][15] , 
        \Do0_pre[1][14] , \Do0_pre[1][13] , \Do0_pre[1][12] , \Do0_pre[1][11] , 
        \Do0_pre[1][10] , \Do0_pre[1][9] , \Do0_pre[1][8] , \Do0_pre[1][7] , 
        \Do0_pre[1][6] , \Do0_pre[1][5] , \Do0_pre[1][4] , \Do0_pre[1][3] , 
        \Do0_pre[1][2] , \Do0_pre[1][1] , \Do0_pre[1][0] }), .WE0(WE0) );
  SELECT_OP C44 ( .DATA1({\Do0_pre[1][31] , \Do0_pre[1][30] , \Do0_pre[1][29] , 
        \Do0_pre[1][28] , \Do0_pre[1][27] , \Do0_pre[1][26] , \Do0_pre[1][25] , 
        \Do0_pre[1][24] , \Do0_pre[1][23] , \Do0_pre[1][22] , \Do0_pre[1][21] , 
        \Do0_pre[1][20] , \Do0_pre[1][19] , \Do0_pre[1][18] , \Do0_pre[1][17] , 
        \Do0_pre[1][16] , \Do0_pre[1][15] , \Do0_pre[1][14] , \Do0_pre[1][13] , 
        \Do0_pre[1][12] , \Do0_pre[1][11] , \Do0_pre[1][10] , \Do0_pre[1][9] , 
        \Do0_pre[1][8] , \Do0_pre[1][7] , \Do0_pre[1][6] , \Do0_pre[1][5] , 
        \Do0_pre[1][4] , \Do0_pre[1][3] , \Do0_pre[1][2] , \Do0_pre[1][1] , 
        \Do0_pre[1][0] }), .DATA2({\Do0_pre[0][31] , \Do0_pre[0][30] , 
        \Do0_pre[0][29] , \Do0_pre[0][28] , \Do0_pre[0][27] , \Do0_pre[0][26] , 
        \Do0_pre[0][25] , \Do0_pre[0][24] , \Do0_pre[0][23] , \Do0_pre[0][22] , 
        \Do0_pre[0][21] , \Do0_pre[0][20] , \Do0_pre[0][19] , \Do0_pre[0][18] , 
        \Do0_pre[0][17] , \Do0_pre[0][16] , \Do0_pre[0][15] , \Do0_pre[0][14] , 
        \Do0_pre[0][13] , \Do0_pre[0][12] , \Do0_pre[0][11] , \Do0_pre[0][10] , 
        \Do0_pre[0][9] , \Do0_pre[0][8] , \Do0_pre[0][7] , \Do0_pre[0][6] , 
        \Do0_pre[0][5] , \Do0_pre[0][4] , \Do0_pre[0][3] , \Do0_pre[0][2] , 
        \Do0_pre[0][1] , \Do0_pre[0][0] }), .CONTROL1(N0), .CONTROL2(N1), .Z(
        Do0) );
  GTECH_AND2 C46 ( .A(EN0), .B(N2), .Z(SEL0[0]) );
  GTECH_NOT I_0 ( .A(A0[7]), .Z(N2) );
  GTECH_AND2 C48 ( .A(EN0), .B(A0[7]), .Z(SEL0[1]) );
  GTECH_BUF B_0 ( .A(A0[7]), .Z(N0) );
  GTECH_NOT I_1 ( .A(A0[7]), .Z(N1) );
endmodule


module mgmt_core_DW01_add_6 ( A, B, CI, SUM, CO );
  input [32:0] A;
  input [32:0] B;
  output [32:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , \A[1] , \A[2] , \A[3] , \A[4] ;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];

endmodule


module mgmt_core_DW01_add_7 ( A, B, CI, SUM, CO );
  input [32:0] A;
  input [32:0] B;
  output [32:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , \A[1] , \A[2] , \A[3] , \A[4] ;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];

endmodule


module mgmt_core ( VPWR, VGND, core_clk, core_rstn, flash_cs_n, flash_clk, 
        flash_io0_oeb, flash_io1_oeb, flash_io2_oeb, flash_io3_oeb, 
        flash_io0_do, flash_io1_do, flash_io2_do, flash_io3_do, flash_io0_di, 
        flash_io1_di, flash_io2_di, flash_io3_di, spi_clk, spi_cs_n, spi_mosi, 
        spi_miso, spi_sdoenb, mprj_wb_iena, mprj_cyc_o, mprj_stb_o, mprj_we_o, 
        mprj_sel_o, mprj_adr_o, mprj_dat_o, mprj_dat_i, mprj_ack_i, hk_dat_i, 
        hk_stb_o, hk_cyc_o, hk_ack_i, serial_tx, serial_rx, debug_in, 
        debug_out, debug_oeb, debug_mode, uart_enabled, gpio_out_pad, 
        gpio_in_pad, gpio_outenb_pad, gpio_inenb_pad, gpio_mode0_pad, 
        gpio_mode1_pad, la_output, la_input, la_oenb, la_iena, qspi_enabled, 
        spi_enabled, trap, user_irq_ena, user_irq, clk_in, clk_out, resetn_in, 
        resetn_out, serial_load_in, serial_load_out, serial_data_2_in, 
        serial_data_2_out, serial_resetn_in, serial_resetn_out, 
        serial_clock_in, serial_clock_out, rstb_l_in, rstb_l_out, por_l_in, 
        por_l_out, porb_h_in, porb_h_out );
  output [3:0] mprj_sel_o;
  output [31:0] mprj_adr_o;
  output [31:0] mprj_dat_o;
  input [31:0] mprj_dat_i;
  input [31:0] hk_dat_i;
  output [127:0] la_output;
  input [127:0] la_input;
  output [127:0] la_oenb;
  output [127:0] la_iena;
  output [2:0] user_irq_ena;
  input [5:0] user_irq;
  input core_clk, core_rstn, flash_io0_di, flash_io1_di, flash_io2_di,
         flash_io3_di, spi_miso, mprj_ack_i, hk_ack_i, serial_rx, debug_in,
         gpio_in_pad, clk_in, resetn_in, serial_load_in, serial_data_2_in,
         serial_resetn_in, serial_clock_in, rstb_l_in, por_l_in, porb_h_in;
  output flash_cs_n, flash_clk, flash_io0_oeb, flash_io1_oeb, flash_io2_oeb,
         flash_io3_oeb, flash_io0_do, flash_io1_do, flash_io2_do, flash_io3_do,
         spi_clk, spi_cs_n, spi_mosi, spi_sdoenb, mprj_wb_iena, mprj_cyc_o,
         mprj_stb_o, mprj_we_o, hk_stb_o, hk_cyc_o, serial_tx, debug_out,
         debug_oeb, debug_mode, uart_enabled, gpio_out_pad, gpio_outenb_pad,
         gpio_inenb_pad, gpio_mode0_pad, gpio_mode1_pad, qspi_enabled,
         spi_enabled, trap, clk_out, resetn_out, serial_load_out,
         serial_data_2_out, serial_resetn_out, serial_clock_out, rstb_l_out,
         por_l_out, porb_h_out;
  inout VPWR,  VGND;

  wire   [3:0] dff_we;
  wire   [3:0] dff2_we;
  wire   [31:0] uart_phy_tx_phase;
  wire   [31:0] uart_phy_rx_phase;
  assign flash_io3_oeb = 1'b1;
  assign flash_io2_oeb = 1'b1;
  assign flash_io1_oeb = 1'b1;
  assign trap = 1'b0;
  assign qspi_enabled = 1'b0;
  assign debug_out = 1'b0;
  assign mprj_adr_o[0] = 1'b0;
  assign mprj_adr_o[1] = 1'b0;
  assign flash_io3_do = 1'b0;
  assign flash_io2_do = 1'b0;
  assign flash_io1_do = 1'b0;
  assign mprj_adr_o[23] = 1'b0;
  assign mprj_adr_o[22] = 1'b0;
  assign mprj_adr_o[21] = 1'b0;
  assign mprj_adr_o[20] = 1'b0;
  assign mprj_adr_o[9] = 1'b0;
  assign mprj_adr_o[8] = 1'b0;
  assign mprj_adr_o[7] = 1'b0;
  assign mprj_adr_o[6] = 1'b0;
  assign mprj_adr_o[5] = 1'b0;
  assign mprj_adr_o[4] = 1'b0;
  assign mprj_adr_o[3] = 1'b0;
  assign mprj_adr_o[2] = 1'b0;
  assign mprj_dat_o[31] = 1'b0;
  assign mprj_dat_o[30] = 1'b0;
  assign mprj_dat_o[29] = 1'b0;
  assign mprj_dat_o[28] = 1'b0;
  assign mprj_dat_o[27] = 1'b0;
  assign mprj_dat_o[26] = 1'b0;
  assign mprj_dat_o[25] = 1'b0;
  assign mprj_dat_o[24] = 1'b0;
  assign mprj_dat_o[23] = 1'b0;
  assign mprj_dat_o[22] = 1'b0;
  assign mprj_dat_o[21] = 1'b0;
  assign mprj_dat_o[20] = 1'b0;
  assign mprj_dat_o[19] = 1'b0;
  assign mprj_dat_o[18] = 1'b0;
  assign mprj_dat_o[17] = 1'b0;
  assign mprj_dat_o[16] = 1'b0;
  assign mprj_dat_o[15] = 1'b0;
  assign mprj_dat_o[14] = 1'b0;
  assign mprj_dat_o[13] = 1'b0;
  assign mprj_dat_o[12] = 1'b0;
  assign mprj_dat_o[11] = 1'b0;
  assign mprj_dat_o[10] = 1'b0;
  assign mprj_dat_o[9] = 1'b0;
  assign mprj_dat_o[8] = 1'b0;
  assign mprj_dat_o[7] = 1'b0;
  assign mprj_dat_o[6] = 1'b0;
  assign mprj_dat_o[5] = 1'b0;
  assign mprj_dat_o[4] = 1'b0;
  assign mprj_dat_o[3] = 1'b0;
  assign mprj_dat_o[2] = 1'b0;
  assign mprj_dat_o[1] = 1'b0;
  assign mprj_dat_o[0] = 1'b0;

  RAM256 RAM256 ( .CLK(core_clk), .WE0({1'b0, 1'b0, 1'b0, 1'b0}), .EN0(1'b0), 
        .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Di0({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}) );
  RAM128 RAM128 ( .CLK(core_clk), .EN0(1'b0), .VGND(1'b0), .VPWR(1'b0), .A0({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Di0({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .WE0({1'b0, 1'b0, 1'b0, 1'b0}) );
  mgmt_core_DW01_add_6 add_x_378 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 
        1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0) );
  mgmt_core_DW01_add_7 add_x_379 ( .A({1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0) );
endmodule


module mgmt_core_wrapper ( core_clk, core_rstn, gpio_out_pad, gpio_in_pad, 
        gpio_mode0_pad, gpio_mode1_pad, gpio_outenb_pad, gpio_inenb_pad, 
        la_input, la_output, la_oenb, la_iena, flash_csb, flash_clk, 
        flash_io0_oeb, flash_io1_oeb, flash_io2_oeb, flash_io3_oeb, 
        flash_io0_do, flash_io1_do, flash_io2_do, flash_io3_do, flash_io0_di, 
        flash_io1_di, flash_io2_di, flash_io3_di, mprj_wb_iena, mprj_cyc_o, 
        mprj_stb_o, mprj_we_o, mprj_sel_o, mprj_adr_o, mprj_dat_o, mprj_ack_i, 
        mprj_dat_i, hk_cyc_o, hk_stb_o, hk_dat_i, hk_ack_i, irq, user_irq_ena, 
        qspi_enabled, uart_enabled, spi_enabled, debug_mode, ser_tx, ser_rx, 
        spi_csb, spi_sck, spi_sdo, spi_sdoenb, spi_sdi, debug_in, debug_out, 
        debug_oeb, trap );
  input [127:0] la_input;
  output [127:0] la_output;
  output [127:0] la_oenb;
  output [127:0] la_iena;
  output [3:0] mprj_sel_o;
  output [31:0] mprj_adr_o;
  output [31:0] mprj_dat_o;
  input [31:0] mprj_dat_i;
  input [31:0] hk_dat_i;
  input [5:0] irq;
  output [2:0] user_irq_ena;
  input core_clk, core_rstn, gpio_in_pad, flash_io0_di, flash_io1_di,
         flash_io2_di, flash_io3_di, mprj_ack_i, hk_ack_i, ser_rx, spi_sdi,
         debug_in;
  output gpio_out_pad, gpio_mode0_pad, gpio_mode1_pad, gpio_outenb_pad,
         gpio_inenb_pad, flash_csb, flash_clk, flash_io0_oeb, flash_io1_oeb,
         flash_io2_oeb, flash_io3_oeb, flash_io0_do, flash_io1_do,
         flash_io2_do, flash_io3_do, mprj_wb_iena, mprj_cyc_o, mprj_stb_o,
         mprj_we_o, hk_cyc_o, hk_stb_o, qspi_enabled, uart_enabled,
         spi_enabled, debug_mode, ser_tx, spi_csb, spi_sck, spi_sdo,
         spi_sdoenb, debug_out, debug_oeb, trap;
  wire   net169224, net169225, net169226, net169227, net169228, net169229,
         net169230, net169231, net169232, net169233, net169234, net169235,
         net169236, net169237, net169238, net169239, net169240, net169241,
         net169242, net169243, net169244, net169245, net169246, net169247,
         net169248, net169249, net169250, net169251, net169252, net169253,
         net169254, net169255, net169256, net169257, net169258, net169259,
         net169260, net169261, net169262, net169263, net169264, net169265,
         net169266, net169267, net169268, net169269, net169270, net169271,
         net169272, net169273, net169274, net169275, net169276, net169277,
         net169278, net169279, net169280, net169281, net169282, net169283,
         net169284, net169285, net169286, net169287, net169288, net169289,
         net169290, net169291, net169292, net169293, net169294, net169295,
         net169296, net169297, net169298, net169299, net169300, net169301,
         net169302, net169303, net169304, net169305, net169306, net169307,
         net169308, net169309, net169310, net169311, net169312, net169313,
         net169314, net169315, net169316, net169317, net169318, net169319,
         net169320, net169321, net169322, net169323, net169324, net169325,
         net169326, net169327, net169328, net169329, net169330, net169331,
         net169332, net169333, net169334, net169335, net169336, net169337,
         net169338, net169339, net169340, net169341, net169342, net169343,
         net169344, net169345, net169346, net169347, net169348, net169349,
         net169350, net169351, net169352, net169353, net169354, net169355,
         net169356, net169357, net169358, net169359, net169360, net169361,
         net169362, net169363, net169364, net169365, net169366, net169367,
         net169368, net169369, net169370, net169371, net169372, net169373,
         net169374, net169375, net169376, net169377, net169378, net169379,
         net169380, net169381, net169382, net169383, net169384, net169385,
         net169386, net169387, net169388, net169389, net169390, net169391,
         net169392, net169393, net169394, net169395, net169396, net169397,
         net169398, net169399, net169400, net169401, net169402, net169403,
         net169404, net169405, net169406, net169407, net169408, net169409,
         net169410, net169411, net169412, net169413, net169414, net169415,
         net169416, net169417, net169418, net169419, net169420, net169421,
         net169422, net169423, net169424, net169425, net169426, net169427,
         net169428, net169429, net169430, net169431, net169432;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21;

  mgmt_core core ( .core_clk(core_clk), .core_rstn(net169224), .flash_io0_di(
        net169225), .flash_io1_di(net169226), .flash_io2_di(net169227), 
        .flash_io3_di(net169228), .spi_miso(net169229), .mprj_adr_o({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, mprj_adr_o[23:20], 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, mprj_adr_o[7:2], 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21}), .mprj_dat_i({
        net169230, net169231, net169232, net169233, net169234, net169235, 
        net169236, net169237, net169238, net169239, net169240, net169241, 
        net169242, net169243, net169244, net169245, net169246, net169247, 
        net169248, net169249, net169250, net169251, net169252, net169253, 
        net169254, net169255, net169256, net169257, net169258, net169259, 
        net169260, net169261}), .mprj_ack_i(net169262), .hk_dat_i({net169263, 
        net169264, net169265, net169266, net169267, net169268, net169269, 
        net169270, net169271, net169272, net169273, net169274, net169275, 
        net169276, net169277, net169278, net169279, net169280, net169281, 
        net169282, net169283, net169284, net169285, net169286, net169287, 
        net169288, net169289, net169290, net169291, net169292, net169293, 
        net169294}), .hk_ack_i(net169295), .serial_rx(net169296), .debug_in(
        net169297), .gpio_in_pad(net169298), .la_input({net169299, net169300, 
        net169301, net169302, net169303, net169304, net169305, net169306, 
        net169307, net169308, net169309, net169310, net169311, net169312, 
        net169313, net169314, net169315, net169316, net169317, net169318, 
        net169319, net169320, net169321, net169322, net169323, net169324, 
        net169325, net169326, net169327, net169328, net169329, net169330, 
        net169331, net169332, net169333, net169334, net169335, net169336, 
        net169337, net169338, net169339, net169340, net169341, net169342, 
        net169343, net169344, net169345, net169346, net169347, net169348, 
        net169349, net169350, net169351, net169352, net169353, net169354, 
        net169355, net169356, net169357, net169358, net169359, net169360, 
        net169361, net169362, net169363, net169364, net169365, net169366, 
        net169367, net169368, net169369, net169370, net169371, net169372, 
        net169373, net169374, net169375, net169376, net169377, net169378, 
        net169379, net169380, net169381, net169382, net169383, net169384, 
        net169385, net169386, net169387, net169388, net169389, net169390, 
        net169391, net169392, net169393, net169394, net169395, net169396, 
        net169397, net169398, net169399, net169400, net169401, net169402, 
        net169403, net169404, net169405, net169406, net169407, net169408, 
        net169409, net169410, net169411, net169412, net169413, net169414, 
        net169415, net169416, net169417, net169418, net169419, net169420, 
        net169421, net169422, net169423, net169424, net169425, net169426}), 
        .user_irq({net169427, net169428, net169429, net169430, net169431, 
        net169432}), .clk_in(1'b0), .resetn_in(1'b0), .serial_load_in(1'b0), 
        .serial_data_2_in(1'b0), .serial_resetn_in(1'b0), .serial_clock_in(
        1'b0), .rstb_l_in(1'b0), .por_l_in(1'b0), .porb_h_in(1'b0) );
endmodule


module caravel_clocking ( rstn, reset_n, ext_clk, pll_clk, pll_clk90, sel, 
        sel2, ext_reset, core_clk, user_clk, reset_n_sync, ext_clk_sel_BAR );
  input [2:0] sel;
  input [2:0] sel2;
  input rstn, reset_n, ext_clk, pll_clk, pll_clk90, ext_reset, ext_clk_sel_BAR;
  output core_clk, user_clk, reset_n_sync;
  wire   ext_clk_syncd_pre, n1, n2, n3;

  dfnrq1 ext_clk_syncd_pre_reg ( .D(n3), .CP(pll_clk), .Q(ext_clk_syncd_pre)
         );
  oaim21d1 U3 ( .B1(1'b0), .B2(1'b1), .A(n1) );
  mx02d1 U5 ( .I0(ext_clk_syncd_pre), .I1(ext_clk), .S(1'b0), .Z(n3) );
  oaim21d1 U7 ( .B1(1'b0), .B2(1'b1), .A(n1), .ZN(core_clk) );
  nd12d0 U8 ( .A1(n2), .A2(1'b1), .ZN(n1) );
  aoi22d1 U9 ( .A1(1'b0), .A2(1'b0), .B1(1'b1), .B2(ext_clk), .ZN(n2) );
endmodule


module delay_stage_0 ( in, trim, out );
  input [1:0] trim;
  input in;
  output out;
  wire   ts, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(ts) );
  invtd2 delayen1 ( .I(ts), .EN(1'b0), .ZN(d1) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd2 delayen0 ( .I(d2), .EN(1'b0), .ZN(out) );
  invtd1 delayenb1 ( .I(ts), .EN(1'b1), .ZN(d1) );
  invtd1 delayenb0 ( .I(ts), .EN(1'b1), .ZN(out) );
endmodule


module delay_stage_11 ( in, trim, out );
  input [1:0] trim;
  input in;
  output out;
  wire   ts, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(ts) );
  invtd2 delayen1 ( .I(ts), .EN(1'b0), .ZN(d1) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd2 delayen0 ( .I(d2), .EN(1'b0), .ZN(out) );
  invtd1 delayenb1 ( .I(ts), .EN(1'b1), .ZN(d1) );
  invtd1 delayenb0 ( .I(ts), .EN(1'b1), .ZN(out) );
endmodule


module delay_stage_10 ( in, trim, out );
  input [1:0] trim;
  input in;
  output out;
  wire   ts, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(ts) );
  invtd2 delayen1 ( .I(ts), .EN(1'b0), .ZN(d1) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd2 delayen0 ( .I(d2), .EN(1'b0), .ZN(out) );
  invtd1 delayenb1 ( .I(ts), .EN(1'b1), .ZN(d1) );
  invtd1 delayenb0 ( .I(ts), .EN(1'b1), .ZN(out) );
endmodule


module delay_stage_9 ( in, trim, out );
  input [1:0] trim;
  input in;
  output out;
  wire   ts, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(ts) );
  invtd2 delayen1 ( .I(ts), .EN(1'b0), .ZN(d1) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd2 delayen0 ( .I(d2), .EN(1'b0), .ZN(out) );
  invtd1 delayenb1 ( .I(ts), .EN(1'b1), .ZN(d1) );
  invtd1 delayenb0 ( .I(ts), .EN(1'b1), .ZN(out) );
endmodule


module delay_stage_8 ( in, trim, out );
  input [1:0] trim;
  input in;
  output out;
  wire   ts, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(ts) );
  invtd2 delayen1 ( .I(ts), .EN(1'b0), .ZN(d1) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd2 delayen0 ( .I(d2), .EN(1'b0), .ZN(out) );
  invtd1 delayenb1 ( .I(ts), .EN(1'b1), .ZN(d1) );
  invtd1 delayenb0 ( .I(ts), .EN(1'b1), .ZN(out) );
endmodule


module delay_stage_7 ( in, trim, out );
  input [1:0] trim;
  input in;
  output out;
  wire   ts, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(ts) );
  invtd2 delayen1 ( .I(ts), .EN(1'b0), .ZN(d1) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd2 delayen0 ( .I(d2), .EN(1'b0), .ZN(out) );
  invtd1 delayenb1 ( .I(ts), .EN(1'b1), .ZN(d1) );
  invtd1 delayenb0 ( .I(ts), .EN(1'b1), .ZN(out) );
endmodule


module delay_stage_6 ( in, trim, out );
  input [1:0] trim;
  input in;
  output out;
  wire   ts, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(ts) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd2 delayen0 ( .I(d2), .EN(1'b0), .ZN(out) );
  invtd1 delayen1 ( .I(ts), .EN(1'b0), .ZN(d1) );
  invtd1 delayenb1 ( .I(ts), .EN(1'b1), .ZN(d1) );
  invtd1 delayenb0 ( .I(ts), .EN(1'b1), .ZN(out) );
endmodule


module delay_stage_5 ( in, trim, out );
  input [1:0] trim;
  input in;
  output out;
  wire   ts, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(ts) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd2 delayen0 ( .I(d2), .EN(1'b0), .ZN(out) );
  invtd1 delayen1 ( .I(ts), .EN(1'b0), .ZN(d1) );
  invtd1 delayenb1 ( .I(ts), .EN(1'b1), .ZN(d1) );
  invtd1 delayenb0 ( .I(ts), .EN(1'b1), .ZN(out) );
endmodule


module delay_stage_4 ( in, trim, out );
  input [1:0] trim;
  input in;
  output out;
  wire   ts, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(ts) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd2 delayen0 ( .I(d2), .EN(1'b0), .ZN(out) );
  invtd1 delayen1 ( .I(ts), .EN(1'b0), .ZN(d1) );
  invtd1 delayenb1 ( .I(ts), .EN(1'b1), .ZN(d1) );
  invtd1 delayenb0 ( .I(ts), .EN(1'b1), .ZN(out) );
endmodule


module delay_stage_3 ( in, trim, out );
  input [1:0] trim;
  input in;
  output out;
  wire   ts, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(ts) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd2 delayen0 ( .I(d2), .EN(1'b0), .ZN(out) );
  invtd1 delayen1 ( .I(ts), .EN(1'b0), .ZN(d1) );
  invtd1 delayenb1 ( .I(ts), .EN(1'b1), .ZN(d1) );
  invtd1 delayenb0 ( .I(ts), .EN(1'b1), .ZN(out) );
endmodule


module delay_stage_2 ( in, trim, out );
  input [1:0] trim;
  input in;
  output out;
  wire   ts, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(ts) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd2 delayen0 ( .I(d2), .EN(1'b0), .ZN(out) );
  invtd1 delayen1 ( .I(ts), .EN(1'b0), .ZN(d1) );
  invtd1 delayenb1 ( .I(ts), .EN(1'b1), .ZN(d1) );
  invtd1 delayenb0 ( .I(ts), .EN(1'b1), .ZN(out) );
endmodule


module delay_stage_1 ( in, trim, out );
  input [1:0] trim;
  input in;
  output out;
  wire   ts, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(ts) );
  invtd2 delayen1 ( .I(ts), .EN(1'b0), .ZN(d1) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd1 delayen0 ( .I(d2), .EN(1'b0), .ZN(out) );
  invtd1 delayenb1 ( .I(ts), .EN(1'b1), .ZN(d1) );
  invtd1 delayenb0 ( .I(ts), .EN(1'b1), .ZN(out) );
endmodule


module start_stage ( in, trim, reset, out );
  input [1:0] trim;
  input in, reset;
  output out;
  wire   d0, d2;
  tri   in;
  tri   out;
  tri   d1;

  buffd1 delaybuf0 ( .I(in), .Z(d0) );
  invtd2 delayen1 ( .I(d0), .EN(1'b0), .ZN(d1) );
  invtd4 delayenb1 ( .I(in), .EN(1'b1), .ZN(d1) );
  inv0d0 delayint0 ( .I(d1), .ZN(d2) );
  invtd7 delayenb0 ( .I(in), .EN(1'b1), .ZN(out) );
  invtd1 reseten0 ( .I(1'b1), .EN(1'b0), .ZN(out) );
  invtd1 delayen0 ( .I(d2), .EN(1'b1), .ZN(out) );
endmodule


module ring_osc2x13 ( reset, trim, \clockp[1]_BAR , \clockp[0]  );
  input [25:0] trim;
  input reset;
  output \clockp[1]_BAR , \clockp[0] ;
  wire   \c[1] , net169197, net169198, net169199, net169200, net169201,
         net169202, net169203, net169204, net169205, net169206, net169207,
         net169208, net169209, net169210, net169211, net169212, net169213,
         net169214, net169215, net169216, net169217, net169218, net169219,
         net169220, net169221, net169222, net169223;
  tri   [12:0] d;
  assign \clockp[1]_BAR  = \c[1] ;

  inv0d0 ibufp10 ( .I(d[6]), .ZN(\c[1] ) );
  delay_stage_0 \dstage[0].id  ( .in(d[0]), .trim({net169222, net169223}), 
        .out(d[1]) );
  delay_stage_11 \dstage[1].id  ( .in(d[1]), .trim({net169220, net169221}), 
        .out(d[2]) );
  delay_stage_10 \dstage[2].id  ( .in(d[2]), .trim({net169218, net169219}), 
        .out(d[3]) );
  delay_stage_9 \dstage[3].id  ( .in(d[3]), .trim({net169216, net169217}), 
        .out(d[4]) );
  delay_stage_8 \dstage[4].id  ( .in(d[4]), .trim({net169214, net169215}), 
        .out(d[5]) );
  delay_stage_7 \dstage[5].id  ( .in(d[5]), .trim({net169212, net169213}), 
        .out(d[6]) );
  delay_stage_6 \dstage[6].id  ( .in(d[6]), .trim({net169210, net169211}), 
        .out(d[7]) );
  delay_stage_5 \dstage[7].id  ( .in(d[7]), .trim({net169208, net169209}), 
        .out(d[8]) );
  delay_stage_4 \dstage[8].id  ( .in(d[8]), .trim({net169206, net169207}), 
        .out(d[9]) );
  delay_stage_3 \dstage[9].id  ( .in(d[9]), .trim({net169204, net169205}), 
        .out(d[10]) );
  delay_stage_2 \dstage[10].id  ( .in(d[10]), .trim({net169202, net169203}), 
        .out(d[11]) );
  delay_stage_1 \dstage[11].id  ( .in(d[11]), .trim({net169200, net169201}), 
        .out(d[12]) );
  start_stage iss ( .in(d[12]), .trim({net169197, net169198}), .reset(
        net169199), .out(d[0]) );
  buffd1 U1 ( .I(d[0]), .Z(\clockp[0] ) );
endmodule


module digital_pll_controller_DP_OP_20_122_7403_0 ( I1, I2, I3, O1, O2 );
  input [4:0] I1;
  input [4:0] I2;
  input [4:0] I3;
  output O1, O2;
  wire   n5, n49, n50, n51, n52, n57, n58, n59, n60, n61, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86;
  assign n64 = I3[0];
  assign n65 = I3[1];
  assign n66 = I3[2];
  assign n67 = I3[3];
  assign n68 = I3[4];
  assign n69 = I2[0];
  assign n70 = I2[1];
  assign n71 = I2[2];
  assign n72 = I2[3];
  assign n73 = I2[4];
  assign n74 = I1[0];
  assign n75 = I1[1];
  assign n76 = I1[2];
  assign n77 = I1[3];
  assign n78 = I1[4];

  ad01d1 U53 ( .A(n70), .B(n75), .CI(n52), .CO(n51), .S(n58) );
  ah01d1 U54 ( .A(n74), .B(n69), .CO(n52), .S(n57) );
  ad01d0 U57 ( .A(n71), .B(n76), .CI(n51), .CO(n50), .S(n59) );
  ad01d0 U58 ( .A(n72), .B(n77), .CI(n50), .CO(n49), .S(n60) );
  ad01d0 U59 ( .A(n73), .B(n78), .CI(n49), .CO(n5), .S(n61) );
  an02d0 U60 ( .A1(n79), .A2(n80), .Z(O2) );
  nr02d0 U61 ( .A1(n61), .A2(n5), .ZN(n79) );
  inv0d0 U62 ( .I(n83), .ZN(n80) );
  nr02d0 U63 ( .A1(n84), .A2(n61), .ZN(n83) );
  nr02d0 U64 ( .A1(n59), .A2(n60), .ZN(n84) );
  inv0d0 U65 ( .I(n59), .ZN(n85) );
  aoi31d1 U66 ( .B1(n86), .B2(n81), .B3(n82), .A(O2), .ZN(O1) );
  nr04d0 U67 ( .A1(n85), .A2(n58), .A3(n61), .A4(n60), .ZN(n82) );
  inv0d0 U68 ( .I(n5), .ZN(n81) );
  inv0d0 U69 ( .I(n57), .ZN(n86) );
endmodule


module digital_pll_controller_DP_OP_19_128_3538_0 ( I1, I2, O1 );
  input [6:0] I1;
  output [6:0] O1;
  input I2;
  wire   n2, n3, n4, n5, n6, n7, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25;
  assign n7 = I1[0];
  assign O1[0] = n12;
  assign O1[1] = n13;
  assign O1[2] = n14;
  assign O1[3] = n15;
  assign O1[4] = n16;
  assign O1[5] = n17;
  assign O1[6] = n18;
  assign n19 = I2;
  assign n20 = I1[1];
  assign n21 = I1[2];
  assign n22 = I1[3];
  assign n23 = I1[4];
  assign n24 = I1[5];
  assign n25 = I1[6];

  ad01d1 U4 ( .A(n23), .B(n19), .CI(n4), .CO(n3), .S(n16) );
  ad01d1 U5 ( .A(n22), .B(n19), .CI(n5), .CO(n4), .S(n15) );
  ad01d1 U6 ( .A(n21), .B(n19), .CI(n6), .CO(n5), .S(n14) );
  ad01d1 U7 ( .A(n20), .B(n19), .CI(n7), .CO(n6), .S(n13) );
  ad01d0 U11 ( .A(n24), .B(n19), .CI(n3), .CO(n2), .S(n17) );
  xr03d1 U12 ( .A1(n19), .A2(n25), .A3(n2), .Z(n18) );
  inv0d0 U13 ( .I(n7), .ZN(n12) );
endmodule


module digital_pll_controller ( reset, clock, osc, div, trim );
  input [4:0] div;
  output [25:0] trim;
  input reset, clock, osc;
  wire   N27, \prep[0] , N41, N63, N64, N65, N66, N67, N68, N69, N72, N73, N74,
         N75, N76, N89, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         \add_x_4/n3 , \add_x_4/n2 , \add_x_4/n1 , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [4:0] count0;
  wire   [4:0] count1;
  wire   [4:0] tint;
  wire   [1:0] tval;
  wire   [2:0] oscbuf;

  dfcrq1 \oscbuf_reg[0]  ( .D(osc), .CP(clock), .CDN(n1), .Q(oscbuf[0]) );
  dfcrq1 \oscbuf_reg[1]  ( .D(oscbuf[0]), .CP(clock), .CDN(n35), .Q(oscbuf[1])
         );
  dfcrq1 \oscbuf_reg[2]  ( .D(oscbuf[1]), .CP(clock), .CDN(n2), .Q(oscbuf[2])
         );
  dfcrq1 \prep_reg[0]  ( .D(n34), .CP(clock), .CDN(n1), .Q(\prep[0] ) );
  dfcrn1 \prep_reg[1]  ( .D(n55), .CP(clock), .CDN(n1), .QN(n36) );
  dfcrn1 \prep_reg[2]  ( .D(n54), .CP(clock), .CDN(n35), .QN(n37) );
  dfcrq1 \count0_reg[1]  ( .D(n53), .CP(clock), .CDN(n35), .Q(count0[1]) );
  dfcrq1 \count0_reg[0]  ( .D(n52), .CP(clock), .CDN(n2), .Q(count0[0]) );
  dfcrq1 \count0_reg[2]  ( .D(n51), .CP(clock), .CDN(n1), .Q(count0[2]) );
  dfcrq1 \count0_reg[3]  ( .D(n50), .CP(clock), .CDN(n35), .Q(count0[3]) );
  dfcrq1 \count0_reg[4]  ( .D(n49), .CP(clock), .CDN(n2), .Q(count0[4]) );
  dfcrq1 \count1_reg[0]  ( .D(n48), .CP(clock), .CDN(n1), .Q(count1[0]) );
  dfcrq1 \count1_reg[4]  ( .D(n47), .CP(clock), .CDN(n2), .Q(count1[4]) );
  dfcrq1 \count1_reg[3]  ( .D(n46), .CP(clock), .CDN(n2), .Q(count1[3]) );
  dfcrq1 \count1_reg[2]  ( .D(n45), .CP(clock), .CDN(n1), .Q(count1[2]) );
  dfcrq1 \count1_reg[1]  ( .D(n44), .CP(clock), .CDN(n35), .Q(count1[1]) );
  dfcrq1 \tval_reg[0]  ( .D(n43), .CP(clock), .CDN(n2), .Q(tval[0]) );
  dfcrq1 \tval_reg[6]  ( .D(n42), .CP(clock), .CDN(n1), .Q(trim[23]) );
  dfcrq1 \tval_reg[2]  ( .D(n33), .CP(clock), .CDN(n35), .Q(tint[0]) );
  dfcrq1 \tval_reg[1]  ( .D(n41), .CP(clock), .CDN(n2), .Q(tval[1]) );
  dfcrq1 \tval_reg[3]  ( .D(n40), .CP(clock), .CDN(n1), .Q(tint[1]) );
  dfcrq1 \tval_reg[4]  ( .D(n39), .CP(clock), .CDN(n35), .Q(tint[2]) );
  dfcrq1 \tval_reg[5]  ( .D(n38), .CP(clock), .CDN(n2), .Q(tint[3]) );
  digital_pll_controller_DP_OP_20_122_7403_0 DP_OP_20_122_7403 ( .I1(count0), 
        .I2(count1), .I3(div), .O1(N27), .O2(N41) );
  digital_pll_controller_DP_OP_19_128_3538_0 DP_OP_19_128_3538 ( .I1({trim[23], 
        tint[3:0], tval}), .I2(N89), .O1({N69, N68, N67, N66, N65, N64, N63})
         );
  ah01d1 \add_x_4/U4  ( .A(count0[0]), .B(count0[1]), .CO(\add_x_4/n3 ), .S(
        N73) );
  ah01d1 \add_x_4/U3  ( .A(\add_x_4/n3 ), .B(count0[2]), .CO(\add_x_4/n2 ), 
        .S(N74) );
  ah01d1 \add_x_4/U2  ( .A(\add_x_4/n2 ), .B(count0[3]), .CO(\add_x_4/n1 ), 
        .S(N75) );
  inv0d0 U3 ( .I(reset), .ZN(n1) );
  inv0d0 U4 ( .I(reset), .ZN(n2) );
  inv0d0 U5 ( .I(count0[0]), .ZN(N72) );
  xr02d1 U6 ( .A1(\add_x_4/n1 ), .A2(count0[4]), .Z(N76) );
  oai21d1 U7 ( .B1(n10), .B2(n36), .A(n11), .ZN(n55) );
  aoi22d1 U8 ( .A1(n10), .A2(n36), .B1(n37), .B2(n12), .ZN(n54) );
  oaim21d1 U9 ( .B1(n13), .B2(N73), .A(n14), .ZN(n53) );
  nd12d0 U10 ( .A1(N72), .A2(n13), .ZN(n52) );
  oaim21d1 U11 ( .B1(n13), .B2(N74), .A(n14), .ZN(n51) );
  oaim21d1 U12 ( .B1(n13), .B2(N75), .A(n14), .ZN(n50) );
  oaim21d1 U13 ( .B1(n13), .B2(N76), .A(n14), .ZN(n49) );
  nd12d0 U14 ( .A1(n13), .A2(n12), .ZN(n14) );
  aoi31d1 U15 ( .B1(count0[0]), .B2(count0[1]), .B3(n15), .A(n10), .ZN(n13) );
  an03d0 U16 ( .A1(count0[4]), .A2(count0[2]), .A3(count0[3]), .Z(n15) );
  mx02d1 U17 ( .I0(count0[0]), .I1(count1[0]), .S(n12), .Z(n48) );
  mx02d1 U18 ( .I0(count1[4]), .I1(count0[4]), .S(n10), .Z(n47) );
  mx02d1 U19 ( .I0(count1[3]), .I1(count0[3]), .S(n10), .Z(n46) );
  mx02d1 U20 ( .I0(count1[2]), .I1(count0[2]), .S(n10), .Z(n45) );
  mx02d1 U21 ( .I0(count1[1]), .I1(count0[1]), .S(n10), .Z(n44) );
  mx02d1 U22 ( .I0(N63), .I1(tval[0]), .S(n16), .Z(n43) );
  mx02d1 U23 ( .I0(N69), .I1(trim[23]), .S(n16), .Z(n42) );
  mx02d1 U24 ( .I0(N64), .I1(tval[1]), .S(n16), .Z(n41) );
  mx02d1 U25 ( .I0(N66), .I1(tint[1]), .S(n16), .Z(n40) );
  mx02d1 U26 ( .I0(N67), .I1(tint[2]), .S(n16), .Z(n39) );
  mx02d1 U27 ( .I0(N68), .I1(tint[3]), .S(n16), .Z(n38) );
  inv0d0 U28 ( .I(reset), .ZN(n35) );
  nd12d0 U29 ( .A1(\prep[0] ), .A2(n12), .ZN(n34) );
  inv0d0 U30 ( .I(n10), .ZN(n12) );
  mx02d1 U31 ( .I0(N65), .I1(tint[0]), .S(n16), .Z(n33) );
  oai321d1 U32 ( .C1(n4), .C2(n17), .C3(n5), .B1(N27), .B2(N41), .A(n18), .ZN(
        n16) );
  nr04d0 U33 ( .A1(n19), .A2(n36), .A3(n37), .A4(n11), .ZN(n18) );
  nd02d0 U34 ( .A1(\prep[0] ), .A2(n10), .ZN(n11) );
  xr02d1 U35 ( .A1(oscbuf[2]), .A2(oscbuf[1]), .Z(n10) );
  nr04d0 U36 ( .A1(tval[0]), .A2(N27), .A3(tval[1]), .A4(trim[0]), .ZN(n19) );
  or02d0 U37 ( .A1(tint[0]), .A2(trim[6]), .Z(trim[0]) );
  nd02d0 U38 ( .A1(n9), .A2(n8), .ZN(trim[6]) );
  inv0d0 U39 ( .I(tint[1]), .ZN(n8) );
  inv0d0 U40 ( .I(trim[3]), .ZN(n9) );
  nd02d0 U41 ( .A1(n6), .A2(n4), .ZN(trim[3]) );
  inv0d0 U42 ( .I(trim[2]), .ZN(n6) );
  nd02d0 U43 ( .A1(n3), .A2(n7), .ZN(trim[2]) );
  nd02d0 U44 ( .A1(tint[0]), .A2(tint[1]), .ZN(n5) );
  nd04d0 U45 ( .A1(N27), .A2(tval[0]), .A3(tval[1]), .A4(trim[24]), .ZN(n17)
         );
  nr02d0 U46 ( .A1(n3), .A2(n7), .ZN(trim[24]) );
  inv0d0 U47 ( .I(trim[23]), .ZN(n7) );
  inv0d0 U48 ( .I(tint[3]), .ZN(n3) );
  inv0d0 U49 ( .I(tint[2]), .ZN(n4) );
  nr02d0 U50 ( .A1(N27), .A2(n20), .ZN(N89) );
  inv0d0 U51 ( .I(N41), .ZN(n20) );
endmodule


module digital_pll ( reset_n, osc, clockp, div, dco, ext_trim, enable_BAR );
  output [1:0] clockp;
  input [4:0] div;
  input [25:0] ext_trim;
  input reset_n, osc, dco, enable_BAR;
  wire   creset, \clockp_buffer_in[1] ;
  wire   [25:0] itrim;

  ring_osc2x13 ringosc ( .reset(1'b1), .trim({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), 
        .\clockp[1]_BAR (\clockp_buffer_in[1] ), .\clockp[0] (clockp[0]) );
  digital_pll_controller pll_control ( .reset(creset), .clock(clockp[0]), 
        .osc(osc), .div(div) );
  mx02d1 U30 ( .I0(1'b1), .I1(1'b1), .S(1'b0), .Z(creset) );
  inv0d0 U31 ( .I(\clockp_buffer_in[1] ), .ZN(clockp[1]) );
endmodule


module housekeeping_DW_decode_en_0 ( en, a, b );
  input [11:0] a;
  output [4095:0] b;
  input en;


endmodule


module housekeeping ( VPWR, VGND, wb_clk_i, wb_rstn_i, wb_adr_i, wb_dat_i, 
        wb_sel_i, wb_we_i, wb_cyc_i, wb_stb_i, wb_ack_o, wb_dat_o, rstn, 
        pll_dco_ena, pll_div, pll_sel, pll90_sel, pll_trim, qspi_enabled, 
        uart_enabled, spi_enabled, debug_mode, ser_tx, ser_rx, spi_sdi, 
        spi_csb, spi_sck, spi_sdo, spi_sdoenb, irq, reset, serial_clock, 
        serial_load, serial_resetn, serial_data_1, serial_data_2, mgmt_gpio_in, 
        mgmt_gpio_out, mgmt_gpio_oeb, pwr_ctrl_out, trap, user_clock, 
        mask_rev_in, spimemio_flash_csb, spimemio_flash_clk, 
        spimemio_flash_io0_oeb, spimemio_flash_io1_oeb, spimemio_flash_io2_oeb, 
        spimemio_flash_io3_oeb, spimemio_flash_io0_do, spimemio_flash_io1_do, 
        spimemio_flash_io2_do, spimemio_flash_io3_do, spimemio_flash_io0_di, 
        spimemio_flash_io1_di, spimemio_flash_io2_di, spimemio_flash_io3_di, 
        debug_in, debug_out, debug_oeb, pad_flash_csb, pad_flash_csb_oeb, 
        pad_flash_clk, pad_flash_clk_oeb, pad_flash_io0_oeb, pad_flash_io1_oeb, 
        pad_flash_io0_ieb, pad_flash_io1_ieb, pad_flash_io0_do, 
        pad_flash_io1_do, pad_flash_io0_di, pad_flash_io1_di, usr1_vcc_pwrgood, 
        usr2_vcc_pwrgood, usr1_vdd_pwrgood, usr2_vdd_pwrgood, pll_bypass_BAR, 
        pll_ena_BAR );
  input [31:0] wb_adr_i;
  input [31:0] wb_dat_i;
  input [3:0] wb_sel_i;
  output [31:0] wb_dat_o;
  output [4:0] pll_div;
  output [2:0] pll_sel;
  output [2:0] pll90_sel;
  output [25:0] pll_trim;
  output [2:0] irq;
  input [37:0] mgmt_gpio_in;
  output [37:0] mgmt_gpio_out;
  output [37:0] mgmt_gpio_oeb;
  output [3:0] pwr_ctrl_out;
  input [31:0] mask_rev_in;
  input wb_clk_i, wb_rstn_i, wb_we_i, wb_cyc_i, wb_stb_i, rstn, qspi_enabled,
         uart_enabled, spi_enabled, debug_mode, ser_tx, spi_csb, spi_sck,
         spi_sdo, spi_sdoenb, trap, user_clock, spimemio_flash_csb,
         spimemio_flash_clk, spimemio_flash_io0_oeb, spimemio_flash_io1_oeb,
         spimemio_flash_io2_oeb, spimemio_flash_io3_oeb, spimemio_flash_io0_do,
         spimemio_flash_io1_do, spimemio_flash_io2_do, spimemio_flash_io3_do,
         debug_out, debug_oeb, pad_flash_io0_di, pad_flash_io1_di,
         usr1_vcc_pwrgood, usr2_vcc_pwrgood, usr1_vdd_pwrgood,
         usr2_vdd_pwrgood;
  output wb_ack_o, pll_dco_ena, ser_rx, spi_sdi, reset, serial_clock,
         serial_load, serial_resetn, serial_data_1, serial_data_2,
         spimemio_flash_io0_di, spimemio_flash_io1_di, spimemio_flash_io2_di,
         spimemio_flash_io3_di, debug_in, pad_flash_csb, pad_flash_csb_oeb,
         pad_flash_clk, pad_flash_clk_oeb, pad_flash_io0_oeb,
         pad_flash_io1_oeb, pad_flash_io0_ieb, pad_flash_io1_ieb,
         pad_flash_io0_do, pad_flash_io1_do, pll_bypass_BAR, pll_ena_BAR;
  inout VPWR,  VGND;
  wire   N616, N617, N618, N619, N620, N621, N622, N623, N624, N625;
  tri   \mgmt_gpio_in[3] ;
  assign pll_div[4] = 1'b0;
  assign pll_div[3] = 1'b0;
  assign pll_div[2] = 1'b1;
  assign pll_div[1] = 1'b0;
  assign pll_div[0] = 1'b0;
  assign N616 = wb_adr_i[2];
  assign N617 = wb_adr_i[3];
  assign N618 = wb_adr_i[4];
  assign N619 = wb_adr_i[5];
  assign N620 = wb_adr_i[6];
  assign N621 = wb_adr_i[7];
  assign N622 = wb_adr_i[20];
  assign N623 = wb_adr_i[21];
  assign N624 = wb_adr_i[22];
  assign N625 = wb_adr_i[23];

  aoim22d1 U3602 ( .A1(1'b1), .A2(1'b1), .B1(1'b1), .B2(wb_clk_i), .Z(
        mgmt_gpio_out[14]) );
  housekeeping_DW_decode_en_0 U3669 ( .en(1'b1), .a({N625, N624, N623, N622, 
        N621, N620, N619, N618, N617, N616, 1'b0, 1'b1}) );
  mx02d1 U14 ( .I0(1'b0), .I1(1'b0), .S(1'b0), .Z(serial_load) );
  mx02d1 U15 ( .I0(1'b1), .I1(mgmt_gpio_in[3]), .S(1'b1) );
endmodule


module gpio_control_block_0 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   n29, n30, n1;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign pad_gpio_outenb = 1'b1;

  buffd1 \BUF[0]  ( .I(serial_load), .Z(serial_load_out) );
  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n29) );
  inv0d0 U4 ( .I(pad_gpio_dm[1]), .ZN(n1) );
  nr02d0 U5 ( .A1(pad_gpio_dm[0]), .A2(n30), .ZN(pad_gpio_out) );
  inv0d0 U6 ( .I(n29), .ZN(n30) );
endmodule


module gpio_control_block_37 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U4 ( .I(pad_gpio_dm[1]), .ZN(n1) );
  nr02d0 U5 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U6 ( .I(n5), .ZN(n4) );
endmodule


module gpio_control_block_36 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_35 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_in;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign mgmt_gpio_in = pad_gpio_in;
  assign user_gpio_in = pad_gpio_in;
  assign pad_gpio_outenb = 1'b0;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_34 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign pad_gpio_outenb = 1'b1;

  buffd1 \BUF[0]  ( .I(serial_load), .Z(serial_load_out) );
  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_33 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_32 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_31 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_30 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign pad_gpio_outenb = 1'b1;

  buffd1 \BUF[0]  ( .I(serial_load), .Z(serial_load_out) );
  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_29 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_28 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_27 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_26 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign pad_gpio_outenb = 1'b1;

  buffd1 \BUF[0]  ( .I(serial_load), .Z(serial_load_out) );
  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_25 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign pad_gpio_outenb = 1'b1;

  buffd1 \BUF[0]  ( .I(serial_load), .Z(serial_load_out) );
  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_24 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(n5), .A2(mgmt_gpio_out), .ZN(n4) );
  oai22d1 U4 ( .A1(n5), .A2(n4), .B1(pad_gpio_dm[0]), .B2(n4), .ZN(
        pad_gpio_out) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_23 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_22 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_21 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_20 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_19 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign pad_gpio_outenb = 1'b1;

  buffd1 \BUF[0]  ( .I(serial_load), .Z(serial_load_out) );
  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U4 ( .I(pad_gpio_dm[1]), .ZN(n1) );
  nr02d0 U5 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U6 ( .I(n5), .ZN(n4) );
endmodule


module gpio_control_block_18 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U4 ( .I(pad_gpio_dm[1]), .ZN(n1) );
  nr02d0 U5 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U6 ( .I(n5), .ZN(n4) );
endmodule


module gpio_control_block_17 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U4 ( .I(pad_gpio_dm[1]), .ZN(n1) );
  nr02d0 U5 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U6 ( .I(n5), .ZN(n4) );
endmodule


module gpio_control_block_16 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_15 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_14 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_13 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_12 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_11 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign pad_gpio_outenb = 1'b1;

  buffd1 \BUF[0]  ( .I(serial_load), .Z(serial_load_out) );
  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_10 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_9 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_8 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign pad_gpio_outenb = 1'b1;

  buffd1 \BUF[0]  ( .I(serial_load), .Z(serial_load_out) );
  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_7 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_6 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_5 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_4 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign pad_gpio_outenb = 1'b1;

  buffd1 \BUF[0]  ( .I(serial_load), .Z(serial_load_out) );
  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_3 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_2 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module gpio_control_block_1 ( vccd, vssd, vccd1, vssd1, gpio_defaults, resetn, 
        resetn_out, serial_clock, serial_clock_out, serial_load, 
        serial_load_out, mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, 
        serial_data_in, serial_data_out, user_gpio_out, user_gpio_oeb, 
        user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel, pad_gpio_vtrip_sel, 
        pad_gpio_inenb, pad_gpio_ib_mode_sel, pad_gpio_ana_en, 
        pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_dm, pad_gpio_outenb, 
        pad_gpio_out, pad_gpio_in, one, zero );
  input [12:0] gpio_defaults;
  output [2:0] pad_gpio_dm;
  input resetn, serial_clock, serial_load, mgmt_gpio_out, mgmt_gpio_oeb,
         serial_data_in, user_gpio_out, user_gpio_oeb, pad_gpio_in;
  output resetn_out, serial_clock_out, serial_load_out, mgmt_gpio_in,
         serial_data_out, user_gpio_in, pad_gpio_holdover, pad_gpio_slow_sel,
         pad_gpio_vtrip_sel, pad_gpio_inenb, pad_gpio_ib_mode_sel,
         pad_gpio_ana_en, pad_gpio_ana_sel, pad_gpio_ana_pol, pad_gpio_outenb,
         pad_gpio_out, one, zero;
  inout vccd,  vssd,  vccd1,  vssd1;
  wire   serial_load, n1, n4, n5;
  wire   [12:0] shift_register;
  tri   pad_gpio_inenb;
  tri   [2:0] pad_gpio_dm;
  tri   pad_gpio_outenb;
  tri   pad_gpio_out;
  assign serial_load_out = serial_load;
  assign pad_gpio_outenb = 1'b1;

  dfbrb1 \gpio_dm_reg[2]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[2]) );
  dfbrb1 \gpio_dm_reg[1]  ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_dm[1]) );
  dfbrb1 \gpio_dm_reg[0]  ( .D(1'b0), .CP(serial_load), .CDN(1'b1), .SDN(1'b0), 
        .Q(pad_gpio_dm[0]) );
  dfbrb1 gpio_inenb_reg ( .D(1'b0), .CP(serial_load), .CDN(1'b0), .SDN(1'b1), 
        .Q(pad_gpio_inenb) );
  nr02d0 U3 ( .A1(pad_gpio_dm[0]), .A2(n4), .ZN(pad_gpio_out) );
  inv0d0 U4 ( .I(n5), .ZN(n4) );
  nr02d0 U14 ( .A1(pad_gpio_dm[2]), .A2(n1), .ZN(n5) );
  inv0d0 U15 ( .I(pad_gpio_dm[1]), .ZN(n1) );
endmodule


module xres_buf ( X, A, VPWR, VGND, LVPWR, LVGND, Port7 );
  input Port7;
  inout X,  A,  VPWR,  VGND,  LVPWR,  LVGND;

wand  A;
  tran( A, X);

endmodule


module spare_logic_block_0 ( spare_xz, spare_xi, spare_xib, spare_xna, 
        spare_xno, spare_xmx, spare_xfq, spare_xfqn );
  output [26:0] spare_xz;
  output [3:0] spare_xi;
  output [1:0] spare_xna;
  output [1:0] spare_xno;
  output [1:0] spare_xmx;
  output [1:0] spare_xfq;
  output [1:0] spare_xfqn;
  output spare_xib;

  wire   [3:0] spare_logic_nc;

  adiode \spare_logic_diode[0]  ( .I(1'b0) );
  adiode \spare_logic_diode[1]  ( .I(1'b0) );
  adiode \spare_logic_diode[2]  ( .I(1'b0) );
  adiode \spare_logic_diode[3]  ( .I(1'b0) );
endmodule


module spare_logic_block_3 ( spare_xz, spare_xi, spare_xib, spare_xna, 
        spare_xno, spare_xmx, spare_xfq, spare_xfqn );
  output [26:0] spare_xz;
  output [3:0] spare_xi;
  output [1:0] spare_xna;
  output [1:0] spare_xno;
  output [1:0] spare_xmx;
  output [1:0] spare_xfq;
  output [1:0] spare_xfqn;
  output spare_xib;

  wire   [3:0] spare_logic_nc;

  adiode \spare_logic_diode[0]  ( .I(1'b0) );
  adiode \spare_logic_diode[1]  ( .I(1'b0) );
  adiode \spare_logic_diode[2]  ( .I(1'b0) );
  adiode \spare_logic_diode[3]  ( .I(1'b0) );
endmodule


module spare_logic_block_2 ( spare_xz, spare_xi, spare_xib, spare_xna, 
        spare_xno, spare_xmx, spare_xfq, spare_xfqn );
  output [26:0] spare_xz;
  output [3:0] spare_xi;
  output [1:0] spare_xna;
  output [1:0] spare_xno;
  output [1:0] spare_xmx;
  output [1:0] spare_xfq;
  output [1:0] spare_xfqn;
  output spare_xib;

  wire   [3:0] spare_logic_nc;

  adiode \spare_logic_diode[0]  ( .I(1'b0) );
  adiode \spare_logic_diode[1]  ( .I(1'b0) );
  adiode \spare_logic_diode[2]  ( .I(1'b0) );
  adiode \spare_logic_diode[3]  ( .I(1'b0) );
endmodule


module spare_logic_block_1 ( spare_xz, spare_xi, spare_xib, spare_xna, 
        spare_xno, spare_xmx, spare_xfq, spare_xfqn );
  output [26:0] spare_xz;
  output [3:0] spare_xi;
  output [1:0] spare_xna;
  output [1:0] spare_xno;
  output [1:0] spare_xmx;
  output [1:0] spare_xfq;
  output [1:0] spare_xfqn;
  output spare_xib;

  wire   [3:0] spare_logic_nc;

  adiode \spare_logic_diode[0]  ( .I(1'b0) );
  adiode \spare_logic_diode[1]  ( .I(1'b0) );
  adiode \spare_logic_diode[2]  ( .I(1'b0) );
  adiode \spare_logic_diode[3]  ( .I(1'b0) );
endmodule


module caravel_core ( vddio, vssio, vdda, vssa, vccd, vssd, vdda1, vdda2, 
        vssa1, vssa2, vccd1, vccd2, vssd1, vssd2, rstn_h, rst_l, rstb_h, 
        clock_core, gpio_out_core, gpio_in_core, gpio_mode0_core, 
        gpio_mode1_core, gpio_outenb_core, gpio_inenb_core, flash_csb_frame, 
        flash_clk_frame, flash_csb_oeb, flash_clk_oeb, flash_io0_oeb, 
        flash_io1_oeb, flash_io0_ieb, flash_io1_ieb, flash_io0_do, 
        flash_io1_do, flash_io0_di, flash_io1_di, mprj_io_in, mprj_io_out, 
        mprj_io_oeb, mprj_io_inp_dis, mprj_io_ib_mode_sel, mprj_io_vtrip_sel, 
        mprj_io_slow_sel, mprj_io_holdover, mprj_io_analog_en, 
        mprj_io_analog_sel, mprj_io_analog_pol, mprj_io_dm, mprj_io_one, 
        mprj_analog_io );
  input [37:0] mprj_io_in;
  output [37:0] mprj_io_out;
  output [37:0] mprj_io_oeb;
  output [37:0] mprj_io_inp_dis;
  output [37:0] mprj_io_ib_mode_sel;
  output [37:0] mprj_io_vtrip_sel;
  output [37:0] mprj_io_slow_sel;
  output [37:0] mprj_io_holdover;
  output [37:0] mprj_io_analog_en;
  output [37:0] mprj_io_analog_sel;
  output [37:0] mprj_io_analog_pol;
  output [113:0] mprj_io_dm;
  output [37:0] mprj_io_one;
  inout [28:0] mprj_analog_io;
  input rstb_h, clock_core, gpio_in_core, flash_io0_di, flash_io1_di;
  output rstn_h, rst_l, gpio_out_core, gpio_mode0_core, gpio_mode1_core,
         gpio_outenb_core, gpio_inenb_core, flash_csb_frame, flash_clk_frame,
         flash_csb_oeb, flash_clk_oeb, flash_io0_oeb, flash_io1_oeb,
         flash_io0_ieb, flash_io1_ieb, flash_io0_do, flash_io1_do;
  inout vddio,  vssio,  vdda,  vssa,  vccd,  vssd,  vdda1,  vdda2,  vssa1, 
     vssa2,  vccd1,  vccd2,  vssd1,  vssd2;
  wire   caravel_clk, pll_clk, \mgmt_io_out_hk[14] , net169433, net169434,
         net169435, net169436, net169437, net169438, net169439, net169440,
         net169441, net169442, net169443, net169444, net169445, net169446,
         net169447, net169448, net169449, net169450, net169451, net169452,
         net169453, net169454, net169455, net169456, net169457, net169458,
         net169459, net169460, net169461, net169462, net169463, net169464,
         net169465, net169466, net169467, net169468, net169469, net169470,
         net169471, net169472, net169473, net169474, net169475, net169476,
         net169477, net169478, net169479, net169480, net169481, net169482,
         net169483, net169484, net169485, net169486, net169487, net169488,
         net169489, net169490, net169491, net169492, net169493, net169494,
         net169495, net169496, net169497, net169498, net169499, net169500,
         net169501, net169502, net169503, net169504, net169505, net169506,
         net169507, net169508, net169509, net169510, net169511, net169512,
         net169513, net169514, net169515, net169516, net169517, net169518,
         net169519, net169520, net169521, net169522, net169523, net169524,
         net169525, net169526, net169527, net169528, net169529, net169530,
         net169531, net169532, net169533, net169534, net169535, net169536,
         net169537, net169538, net169539, net169540, net169541, net169542,
         net169543, net169544, net169545, net169546, net169547, net169548,
         net169549, net169550, net169551, net169552, net169553, net169554,
         net169555, net169556, net169557, net169558, net169559, net169560,
         net169561, net169562, net169563, net169564, net169565, net169566,
         net169567, net169568, net169569, net169570, net169571, net169572,
         net169573, net169574, net169575, net169576, net169577, net169578,
         net169579, net169580, net169581, net169582, net169583, net169584,
         net169585, net169586, net169587, net169588, net169589, net169590,
         net169591, net169592, net169593, net169594, net169595, net169596,
         net169597, net169598, net169599, net169600, net169601, net169602,
         net169603, net169604, net169605, net169606, net169607, net169608,
         net169609, net169610, net169611, net169612, net169613, net169614,
         net169615, net169616, net169617, net169618, net169619, net169620,
         net169621, net169622, net169623, net169624, net169625, net169626,
         net169627, net169628, net169629, net169630, net169631, net169632,
         net169633, net169634, net169635, net169636, net169637, net169638,
         net169639, net169640, net169641, net169642, net169643, net169644,
         net169645, net169646, net169647, net169648, net169649, net169650,
         net169651, net169652, net169653, net169654, net169655, net169656,
         net169657, net169658, net169659, net169660, net169661, net169662,
         net169663, net169664, net169665, net169666, net169667, net169668,
         net169669, net169670, net169671, net169672, net169673, net169674,
         net169675, net169676, net169677, net169678, net169679, net169680,
         net169681, net169682, net169683, net169684, net169685, net169686,
         net169687, net169688, net169689, net169690, net169691, net169692,
         net169693, net169694, net169695, net169696, net169697, net169698,
         net169699, net169700, net169701, net169702, net169703, net169704,
         net169705, net169706, net169707, net169708, net169709, net169710,
         net169711, net169712, net169713, net169714, net169715, net169716,
         net169717, net169718, net169719, net169720, net169721, net169722,
         net169723, net169724, net169725, net169726, net169727, net169728,
         net169729, net169730, net169731, net169732, net169733, net169734,
         net169735, net169736, net169737, net169738, net169739, net169740,
         net169741, net169742, net169743, net169744, net169745, net169746,
         net169747, net169748, net169749, net169750, net169751, net169752,
         net169753, net169754, net169755, net169756, net169757, net169758,
         net169759, net169760, net169761, net169762, net169763, net169764,
         net169765, net169766, net169767, net169768, net169769, net169770,
         net169771, net169772, net169773, net169774, net169775, net169776,
         net169777, net169778, net169779, net169780, net169781, net169782,
         net169783, net169784, net169785, net169786, net169787, net169788,
         net169789, net169790, net169791, net169792, net169793, net169794,
         net169795, net169796, net169797, net169798, net169799, net169800,
         net169801, net169802, net169803, net169804, net169805, net169806,
         net169807, net169808, net169809, net169810, net169811, net169812,
         net169813, net169814, net169815, net169816, net169817, net169818,
         net169819, net169820, net169821, net169822, net169823, net169824,
         net169825, net169826, net169827, net169828, net169829, net169830,
         net169831, net169832, net169833, net169834, net169835, net169836,
         net169837, net169838, net169839, net169840, net169841, net169842,
         net169843, net169844, net169845, net169846, net169847, net169848,
         net169849, net169850, net169851, net169852, net169853, net169854,
         net169855, net169856, net169857, net169858, net169859, net169860,
         net169861, net169862, net169863, net169864, net169865, net169866,
         net169867, net169868, net169869, net169870, net169871, net169872,
         net169873, net169874, net169875, net169876, net169877, net169878,
         net169879, net169880, net169881, net169882, net169883, net169884,
         net169885, net169886, net169887, net169888, net169889, net169890,
         net169891, net169892, net169893, net169894, net169895, net169896,
         net169897, net169898, net169899, net169900, net169901, net169902,
         net169903, net169904, net169905, net169906, net169907, net169908,
         net169909, net169910, net169911, net169912, net169913, net169914,
         net169915, net169916, net169917, net169918, net169919, net169920,
         net169921, net169922, net169923, net169924, net169925, net169926,
         net169927, net169928, net169929, net169930, net169931, net169932,
         net169933, net169934, net169935, net169936, net169937, net169938,
         net169939, net169940, net169941, net169942, net169943, net169944,
         net169945, net169946, net169947, net169948, net169949, net169950,
         net169951, net169952, net169953, net169954, net169955, net169956,
         net169957, net169958, net169959, net169960, net169961, net169962,
         net169963, net169964, net169965, net169966, net169967, net169968,
         net169969, net169970, net169971, net169972, net169973, net169974,
         net169975, net169976, net169977, net169978, net169979, net169980,
         net169981, net169982, net169983, net169984, net169985, net169986,
         net169987, net169988, net169989, net169990, net169991, net169992,
         net169993, net169994, net169995, net169996, net169997, net169998,
         net169999, net170000, net170001, net170002, net170003, net170004,
         net170005, net170006, net170007, net170008, net170009, net170010,
         net170011, net170012, net170013, net170014, net170015, net170016,
         net170017, net170018, net170019, net170020, net170021, net170022,
         net170023, net170024, net170025, net170026, net170027, net170028,
         net170029, net170030, net170031, net170032, net170033, net170034,
         net170035, net170036, net170037, net170038, net170039, net170040,
         net170041, net170042, net170043, net170044, net170045, net170046,
         net170047, net170048, net170049, net170050, net170051, net170052,
         net170053, net170054, net170055, net170056, net170057, net170058,
         net170059, net170060, net170061, net170062, net170063, net170064,
         net170065, net170066, net170067, net170068, net170069, net170070,
         net170071, net170072, net170073, net170074, net170075, net170076,
         net170077, net170078, net170079, net170080, net170081, net170082,
         net170083, net170084, net170085, net170086, net170087, net170088,
         net170089, net170090, net170091, net170092, net170093, net170094,
         net170095, net170096, net170097, net170098, net170099, net170100,
         net170101, net170102, net170103, net170104, net170105, net170106,
         net170107, net170108, net170109, net170110, net170111, net170112,
         net170113, net170114, net170115, net170116, net170117, net170118,
         net170119, net170120, net170121, net170122, net170123, net170124,
         net170125, net170126, net170127, net170128, net170129, net170130,
         net170131, net170132, net170133, net170134, net170135, net170136,
         net170137, net170138, net170139, net170140, net170141, net170142,
         net170143, net170144, net170145, net170146, net170147, net170148,
         net170149, net170150, net170151, net170152, net170153, net170154,
         net170155, net170156, net170157, net170158, net170159, net170160,
         net170161, net170162, net170163, net170164, net170165, net170166,
         net170167, net170168, net170169, net170170, net170171, net170172,
         net170173, net170174, net170175, net170176, net170177, net170178,
         net170179, net170180, net170181, net170182, net170183, net170184,
         net170185, net170186, net170187, net170188, net170189, net170190,
         net170191, net170192, net170193, net170194, net170195, net170196,
         net170197, net170198, net170199, net170200, net170201, net170202,
         net170203, net170204, net170205, net170206, net170207, net170208,
         net170209, net170210, net170211, net170212, net170213, net170214,
         net170215, net170216, net170217, net170218, net170219, net170220,
         net170221, net170222, net170223, net170224, net170225, net170226,
         net170227, net170228, net170229, net170230, net170231, net170232,
         net170233, net170234, net170235, net170236, net170237, net170238,
         net170239, net170240, net170241, net170242, net170243, net170244,
         net170245, net170246, net170247, net170248, net170249, net170250,
         net170251, net170252, net170253, net170254, net170255, net170256,
         net170257, net170258, net170259, net170260, net170261, net170262,
         net170263, net170264, net170265, net170266, net170267, net170268,
         net170269, net170270, net170271, net170272, net170273, net170274,
         net170275, net170276, net170277, net170278, net170279, net170280,
         net170281, net170282, net170283, net170284, net170285, net170286,
         net170287, net170288, net170289, net170290, net170291, net170292,
         net170293, net170294, net170295, net170296, net170297, net170298,
         net170299, net170300, net170301, net170302, net170303, net170304,
         net170305, net170306, net170307, net170308, net170309, net170310,
         net170311, net170312, net170313, net170314, net170315, net170316,
         net170317, net170318, net170319, net170320, net170321, net170322,
         net170323, net170324, net170325, net170326, net170327, net170328,
         net170329, net170330, net170331, net170332, net170333, net170334,
         net170335, net170336, net170337, net170338, net170339, net170340,
         net170341, net170342, net170343, net170344, net170345, net170346,
         net170347, net170348, net170349, net170350, net170351, net170352,
         net170353, net170354, net170355, net170356, net170357, net170358,
         net170359, net170360, net170361, net170362, net170363, net170364,
         net170365, net170366, net170367, net170368, net170369, net170370,
         net170371, net170372, net170373, net170374, net170375, net170376,
         net170377, net170378, net170379, net170380, net170381, net170382,
         net170383, net170384, net170385, net170386, net170387, net170388,
         net170389, net170390, net170391, net170392, net170393, net170394,
         net170395, net170396, net170397, net170398, net170399, net170400,
         net170401, net170402, net170403, net170404, net170405, net170406,
         net170407, net170408, net170409, net170410, net170411, net170412,
         net170413, net170414, net170415, net170416, net170417, net170418,
         net170419, net170420, net170421, net170422, net170423, net170424,
         net170425, net170426, net170427, net170428, net170429, net170430,
         net170431, net170432, net170433, net170434, net170435, net170436,
         net170437, net170438, net170439, net170440, net170441, net170442,
         net170443, net170444, net170445, net170446, net170447, net170448,
         net170449, net170450, net170451, net170452, net170453, net170454,
         net170455, net170456, net170457, net170458, net170459, net170460,
         net170461, net170462, net170463, net170464, net170465, net170466,
         net170467, net170468, net170469, net170470, net170471, net170472,
         net170473, net170474, net170475, net170476, net170477, net170478,
         net170479, net170480, net170481, net170482, net170483, net170484,
         net170485, net170486, net170487, net170488, net170489, net170490,
         net170491, net170492, net170493, net170494, net170495, net170496,
         net170497, net170498, net170499, net170500, net170501, net170502,
         net170503, net170504, net170505, net170506, net170507, net170508,
         net170509, net170510, net170511, net170512, net170513, net170514,
         net170515, net170516, net170517, net170518, net170519, net170520,
         net170521, net170522, net170523, net170524, net170525, net170526,
         net170527, net170528, net170529, net170530, net170531, net170532,
         net170533, net170534, net170535, net170536, net170537, net170538,
         net170539, net170540, net170541, net170542, net170543, net170544,
         net170545, net170546, net170547, net170548, net170549, net170550,
         net170551, net170552, net170553, net170554, net170555, net170556,
         net170557, net170558, net170559, net170560, net170561, net170562,
         net170563, net170564, net170565, net170566, net170567, net170568,
         net170569, net170570, net170571, net170572, net170573, net170574,
         net170575, net170576, net170577, net170578, net170579, net170580,
         net170581, net170582, net170583, net170584, net170585, net170586,
         net170587, net170588, net170589, net170590, net170591, net170592,
         net170593, net170594, net170595, net170596, net170597, net170598,
         net170599, net170600, net170601, net170602, net170603, net170604,
         net170605, net170606, net170607, net170608, net170609, net170610,
         net170611, net170612, net170613, net170614, net170615, net170616,
         net170617, net170618, net170619, net170620, net170621, net170622,
         net170623, net170624, net170625, net170626, net170627, net170628,
         net170629, net170630, net170631, net170632, net170633;
  wire   [31:0] mprj_adr_o_core;
  wire   [18:0] gpio_load_1_shifted;
  wire   [17:0] gpio_load_2_shifted;
  wire   [4:0] spi_pll_div;
  tri   \mprj_io_in[3] ;
  tri   [37:0] mprj_io_out;
  tri   [37:0] mprj_io_oeb;
  tri   [37:0] mprj_io_inp_dis;
  tri   [113:0] mprj_io_dm;
  tri   [28:0] mprj_analog_io;
  tri   \mgmt_io_in_hk[3] ;
wand  rstb_h;
wand  rstb_l;
wand  rstn_h;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59;
  assign rstn_h = 1'b0;

  mgmt_core_wrapper soc ( .core_clk(caravel_clk), .core_rstn(net170425), 
        .gpio_in_pad(net170426), .la_input({net170427, net170428, net170429, 
        net170430, net170431, net170432, net170433, net170434, net170435, 
        net170436, net170437, net170438, net170439, net170440, net170441, 
        net170442, net170443, net170444, net170445, net170446, net170447, 
        net170448, net170449, net170450, net170451, net170452, net170453, 
        net170454, net170455, net170456, net170457, net170458, net170459, 
        net170460, net170461, net170462, net170463, net170464, net170465, 
        net170466, net170467, net170468, net170469, net170470, net170471, 
        net170472, net170473, net170474, net170475, net170476, net170477, 
        net170478, net170479, net170480, net170481, net170482, net170483, 
        net170484, net170485, net170486, net170487, net170488, net170489, 
        net170490, net170491, net170492, net170493, net170494, net170495, 
        net170496, net170497, net170498, net170499, net170500, net170501, 
        net170502, net170503, net170504, net170505, net170506, net170507, 
        net170508, net170509, net170510, net170511, net170512, net170513, 
        net170514, net170515, net170516, net170517, net170518, net170519, 
        net170520, net170521, net170522, net170523, net170524, net170525, 
        net170526, net170527, net170528, net170529, net170530, net170531, 
        net170532, net170533, net170534, net170535, net170536, net170537, 
        net170538, net170539, net170540, net170541, net170542, net170543, 
        net170544, net170545, net170546, net170547, net170548, net170549, 
        net170550, net170551, net170552, net170553, net170554}), 
        .flash_io0_di(net170555), .flash_io1_di(net170556), .flash_io2_di(
        net170557), .flash_io3_di(net170558), .mprj_adr_o({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        mprj_adr_o_core[23:20], SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, mprj_adr_o_core[7:2], 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21}), .mprj_ack_i(
        net170559), .mprj_dat_i({net170560, net170561, net170562, net170563, 
        net170564, net170565, net170566, net170567, net170568, net170569, 
        net170570, net170571, net170572, net170573, net170574, net170575, 
        net170576, net170577, net170578, net170579, net170580, net170581, 
        net170582, net170583, net170584, net170585, net170586, net170587, 
        net170588, net170589, net170590, net170591}), .hk_dat_i({net170592, 
        net170593, net170594, net170595, net170596, net170597, net170598, 
        net170599, net170600, net170601, net170602, net170603, net170604, 
        net170605, net170606, net170607, net170608, net170609, net170610, 
        net170611, net170612, net170613, net170614, net170615, net170616, 
        net170617, net170618, net170619, net170620, net170621, net170622, 
        net170623}), .hk_ack_i(net170624), .irq({net170625, net170626, 
        net170627, net170628, net170629, net170630}), .ser_rx(net170631), 
        .spi_sdi(net170632), .debug_in(net170633) );
  caravel_clocking clock_ctrl ( .rstn(1'b0), .reset_n(1'b0), .ext_clk(
        clock_core), .pll_clk(pll_clk), .pll_clk90(net170418), .sel({net170419, 
        net170420, net170421}), .sel2({net170422, net170423, net170424}), 
        .ext_reset(1'b0), .core_clk(caravel_clk), .ext_clk_sel_BAR(net170417)
         );
  digital_pll pll ( .reset_n(rstb_l), .osc(clock_core), .clockp({pll_clk, 
        SYNOPSYS_UNCONNECTED__22}), .div(spi_pll_div), .dco(net170390), 
        .ext_trim({net170391, net170392, net170393, net170394, net170395, 
        net170396, net170397, net170398, net170399, net170400, net170401, 
        net170402, net170403, net170404, net170405, net170406, net170407, 
        net170408, net170409, net170410, net170411, net170412, net170413, 
        net170414, net170415, net170416}), .enable_BAR(net170389) );
  housekeeping housekeeping ( .wb_clk_i(caravel_clk), .wb_rstn_i(net170229), 
        .wb_adr_i({net170230, net170231, net170232, net170233, net170234, 
        net170235, net170236, net170237, mprj_adr_o_core[23:20], net170238, 
        net170239, net170240, net170241, net170242, net170243, net170244, 
        net170245, net170246, net170247, net170248, net170249, 
        mprj_adr_o_core[7:2], net170250, net170251}), .wb_dat_i({net170252, 
        net170253, net170254, net170255, net170256, net170257, net170258, 
        net170259, net170260, net170261, net170262, net170263, net170264, 
        net170265, net170266, net170267, net170268, net170269, net170270, 
        net170271, net170272, net170273, net170274, net170275, net170276, 
        net170277, net170278, net170279, net170280, net170281, net170282, 
        net170283}), .wb_sel_i({net170284, net170285, net170286, net170287}), 
        .wb_we_i(net170288), .wb_cyc_i(net170289), .wb_stb_i(net170290), 
        .rstn(1'b0), .pll_div(spi_pll_div), .qspi_enabled(net170291), 
        .uart_enabled(net170292), .spi_enabled(net170293), .debug_mode(
        net170294), .ser_tx(net170295), .spi_csb(net170296), .spi_sck(
        net170297), .spi_sdo(net170298), .spi_sdoenb(net170299), .serial_load(
        gpio_load_1_shifted[0]), .mgmt_gpio_in({net170300, net170301, 
        net170302, net170303, net170304, net170305, net170306, net170307, 
        net170308, net170309, net170310, net170311, net170312, net170313, 
        net170314, net170315, net170316, net170317, net170318, net170319, 
        net170320, net170321, net170322, net170323, net170324, net170325, 
        net170326, net170327, net170328, net170329, net170330, net170331, 
        net170332, net170333, \mgmt_io_in_hk[3] , net170334, net170335, 
        net170336}), .mgmt_gpio_out({SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        \mgmt_io_out_hk[14] , SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59}), .trap(net170337), .user_clock(net170338), 
        .mask_rev_in({net170339, net170340, net170341, net170342, net170343, 
        net170344, net170345, net170346, net170347, net170348, net170349, 
        net170350, net170351, net170352, net170353, net170354, net170355, 
        net170356, net170357, net170358, net170359, net170360, net170361, 
        net170362, net170363, net170364, net170365, net170366, net170367, 
        net170368, net170369, net170370}), .spimemio_flash_csb(net170371), 
        .spimemio_flash_clk(net170372), .spimemio_flash_io0_oeb(net170373), 
        .spimemio_flash_io1_oeb(net170374), .spimemio_flash_io2_oeb(net170375), 
        .spimemio_flash_io3_oeb(net170376), .spimemio_flash_io0_do(net170377), 
        .spimemio_flash_io1_do(net170378), .spimemio_flash_io2_do(net170379), 
        .spimemio_flash_io3_do(net170380), .debug_out(net170381), .debug_oeb(
        net170382), .pad_flash_io0_di(net170383), .pad_flash_io1_di(net170384), 
        .usr1_vcc_pwrgood(net170385), .usr2_vcc_pwrgood(net170386), 
        .usr1_vdd_pwrgood(net170387), .usr2_vdd_pwrgood(net170388) );
  gpio_control_block_0 \gpio_control_bidir_1[0]  ( .gpio_defaults({net170208, 
        net170209, net170210, net170211, net170212, net170213, net170214, 
        net170215, net170216, net170217, net170218, net170219, net170220}), 
        .resetn(net170221), .serial_clock(net170222), .serial_load(
        gpio_load_1_shifted[0]), .serial_load_out(gpio_load_1_shifted[1]), 
        .mgmt_gpio_out(net170223), .mgmt_gpio_oeb(net170224), .serial_data_in(
        net170225), .user_gpio_out(net170226), .user_gpio_oeb(net170227), 
        .pad_gpio_inenb(mprj_io_inp_dis[0]), .pad_gpio_dm(mprj_io_dm[2:0]), 
        .pad_gpio_outenb(mprj_io_oeb[0]), .pad_gpio_out(mprj_io_out[0]), 
        .pad_gpio_in(net170228) );
  gpio_control_block_37 \gpio_control_bidir_1[1]  ( .gpio_defaults({net170187, 
        net170188, net170189, net170190, net170191, net170192, net170193, 
        net170194, net170195, net170196, net170197, net170198, net170199}), 
        .resetn(net170200), .serial_clock(net170201), .serial_load(
        gpio_load_1_shifted[1]), .serial_load_out(gpio_load_1_shifted[2]), 
        .mgmt_gpio_out(net170202), .mgmt_gpio_oeb(net170203), .serial_data_in(
        net170204), .user_gpio_out(net170205), .user_gpio_oeb(net170206), 
        .pad_gpio_inenb(mprj_io_inp_dis[1]), .pad_gpio_dm(mprj_io_dm[5:3]), 
        .pad_gpio_outenb(mprj_io_oeb[1]), .pad_gpio_out(mprj_io_out[1]), 
        .pad_gpio_in(net170207) );
  gpio_control_block_36 \gpio_control_in_1a[0]  ( .gpio_defaults({net170166, 
        net170167, net170168, net170169, net170170, net170171, net170172, 
        net170173, net170174, net170175, net170176, net170177, net170178}), 
        .resetn(net170179), .serial_clock(net170180), .serial_load(
        gpio_load_1_shifted[2]), .serial_load_out(gpio_load_1_shifted[3]), 
        .mgmt_gpio_out(net170181), .mgmt_gpio_oeb(net170182), .serial_data_in(
        net170183), .user_gpio_out(net170184), .user_gpio_oeb(net170185), 
        .pad_gpio_inenb(mprj_io_inp_dis[2]), .pad_gpio_dm(mprj_io_dm[8:6]), 
        .pad_gpio_outenb(mprj_io_oeb[2]), .pad_gpio_out(mprj_io_out[2]), 
        .pad_gpio_in(net170186) );
  gpio_control_block_35 \gpio_control_in_1a[1]  ( .gpio_defaults({net170146, 
        net170147, net170148, net170149, net170150, net170151, net170152, 
        net170153, net170154, net170155, net170156, net170157, net170158}), 
        .resetn(net170159), .serial_clock(net170160), .serial_load(
        gpio_load_1_shifted[3]), .serial_load_out(gpio_load_1_shifted[4]), 
        .mgmt_gpio_in(\mgmt_io_in_hk[3] ), .mgmt_gpio_out(net170161), 
        .mgmt_gpio_oeb(net170162), .serial_data_in(net170163), .user_gpio_out(
        net170164), .user_gpio_oeb(net170165), .pad_gpio_inenb(
        mprj_io_inp_dis[3]), .pad_gpio_dm(mprj_io_dm[11:9]), .pad_gpio_outenb(
        mprj_io_oeb[3]), .pad_gpio_out(mprj_io_out[3]), .pad_gpio_in(
        mprj_io_in[3]) );
  gpio_control_block_34 \gpio_control_in_1a[2]  ( .gpio_defaults({net170125, 
        net170126, net170127, net170128, net170129, net170130, net170131, 
        net170132, net170133, net170134, net170135, net170136, net170137}), 
        .resetn(net170138), .serial_clock(net170139), .serial_load(
        gpio_load_1_shifted[4]), .serial_load_out(gpio_load_1_shifted[5]), 
        .mgmt_gpio_out(net170140), .mgmt_gpio_oeb(net170141), .serial_data_in(
        net170142), .user_gpio_out(net170143), .user_gpio_oeb(net170144), 
        .pad_gpio_inenb(mprj_io_inp_dis[4]), .pad_gpio_dm(mprj_io_dm[14:12]), 
        .pad_gpio_outenb(mprj_io_oeb[4]), .pad_gpio_out(mprj_io_out[4]), 
        .pad_gpio_in(net170145) );
  gpio_control_block_33 \gpio_control_in_1a[3]  ( .gpio_defaults({net170104, 
        net170105, net170106, net170107, net170108, net170109, net170110, 
        net170111, net170112, net170113, net170114, net170115, net170116}), 
        .resetn(net170117), .serial_clock(net170118), .serial_load(
        gpio_load_1_shifted[5]), .serial_load_out(gpio_load_1_shifted[6]), 
        .mgmt_gpio_out(net170119), .mgmt_gpio_oeb(net170120), .serial_data_in(
        net170121), .user_gpio_out(net170122), .user_gpio_oeb(net170123), 
        .pad_gpio_inenb(mprj_io_inp_dis[5]), .pad_gpio_dm(mprj_io_dm[17:15]), 
        .pad_gpio_outenb(mprj_io_oeb[5]), .pad_gpio_out(mprj_io_out[5]), 
        .pad_gpio_in(net170124) );
  gpio_control_block_32 \gpio_control_in_1a[4]  ( .gpio_defaults({net170083, 
        net170084, net170085, net170086, net170087, net170088, net170089, 
        net170090, net170091, net170092, net170093, net170094, net170095}), 
        .resetn(net170096), .serial_clock(net170097), .serial_load(
        gpio_load_1_shifted[6]), .serial_load_out(gpio_load_1_shifted[7]), 
        .mgmt_gpio_out(net170098), .mgmt_gpio_oeb(net170099), .serial_data_in(
        net170100), .user_gpio_out(net170101), .user_gpio_oeb(net170102), 
        .pad_gpio_inenb(mprj_io_inp_dis[6]), .pad_gpio_dm(mprj_io_dm[20:18]), 
        .pad_gpio_outenb(mprj_io_oeb[6]), .pad_gpio_out(mprj_io_out[6]), 
        .pad_gpio_in(net170103) );
  gpio_control_block_31 \gpio_control_in_1a[5]  ( .gpio_defaults({net170062, 
        net170063, net170064, net170065, net170066, net170067, net170068, 
        net170069, net170070, net170071, net170072, net170073, net170074}), 
        .resetn(net170075), .serial_clock(net170076), .serial_load(
        gpio_load_1_shifted[7]), .serial_load_out(gpio_load_1_shifted[8]), 
        .mgmt_gpio_out(net170077), .mgmt_gpio_oeb(net170078), .serial_data_in(
        net170079), .user_gpio_out(net170080), .user_gpio_oeb(net170081), 
        .pad_gpio_inenb(mprj_io_inp_dis[7]), .pad_gpio_dm(mprj_io_dm[23:21]), 
        .pad_gpio_outenb(mprj_io_oeb[7]), .pad_gpio_out(mprj_io_out[7]), 
        .pad_gpio_in(net170082) );
  gpio_control_block_30 \gpio_control_in_1[0]  ( .gpio_defaults({net170041, 
        net170042, net170043, net170044, net170045, net170046, net170047, 
        net170048, net170049, net170050, net170051, net170052, net170053}), 
        .resetn(net170054), .serial_clock(net170055), .serial_load(
        gpio_load_1_shifted[8]), .serial_load_out(gpio_load_1_shifted[9]), 
        .mgmt_gpio_out(net170056), .mgmt_gpio_oeb(net170057), .serial_data_in(
        net170058), .user_gpio_out(net170059), .user_gpio_oeb(net170060), 
        .pad_gpio_inenb(mprj_io_inp_dis[8]), .pad_gpio_dm(mprj_io_dm[26:24]), 
        .pad_gpio_outenb(mprj_io_oeb[8]), .pad_gpio_out(mprj_io_out[8]), 
        .pad_gpio_in(net170061) );
  gpio_control_block_29 \gpio_control_in_1[1]  ( .gpio_defaults({net170020, 
        net170021, net170022, net170023, net170024, net170025, net170026, 
        net170027, net170028, net170029, net170030, net170031, net170032}), 
        .resetn(net170033), .serial_clock(net170034), .serial_load(
        gpio_load_1_shifted[9]), .serial_load_out(gpio_load_1_shifted[10]), 
        .mgmt_gpio_out(net170035), .mgmt_gpio_oeb(net170036), .serial_data_in(
        net170037), .user_gpio_out(net170038), .user_gpio_oeb(net170039), 
        .pad_gpio_inenb(mprj_io_inp_dis[9]), .pad_gpio_dm(mprj_io_dm[29:27]), 
        .pad_gpio_outenb(mprj_io_oeb[9]), .pad_gpio_out(mprj_io_out[9]), 
        .pad_gpio_in(net170040) );
  gpio_control_block_28 \gpio_control_in_1[2]  ( .gpio_defaults({net169999, 
        net170000, net170001, net170002, net170003, net170004, net170005, 
        net170006, net170007, net170008, net170009, net170010, net170011}), 
        .resetn(net170012), .serial_clock(net170013), .serial_load(
        gpio_load_1_shifted[10]), .serial_load_out(gpio_load_1_shifted[11]), 
        .mgmt_gpio_out(net170014), .mgmt_gpio_oeb(net170015), .serial_data_in(
        net170016), .user_gpio_out(net170017), .user_gpio_oeb(net170018), 
        .pad_gpio_inenb(mprj_io_inp_dis[10]), .pad_gpio_dm(mprj_io_dm[32:30]), 
        .pad_gpio_outenb(mprj_io_oeb[10]), .pad_gpio_out(mprj_io_out[10]), 
        .pad_gpio_in(net170019) );
  gpio_control_block_27 \gpio_control_in_1[3]  ( .gpio_defaults({net169978, 
        net169979, net169980, net169981, net169982, net169983, net169984, 
        net169985, net169986, net169987, net169988, net169989, net169990}), 
        .resetn(net169991), .serial_clock(net169992), .serial_load(
        gpio_load_1_shifted[11]), .serial_load_out(gpio_load_1_shifted[12]), 
        .mgmt_gpio_out(net169993), .mgmt_gpio_oeb(net169994), .serial_data_in(
        net169995), .user_gpio_out(net169996), .user_gpio_oeb(net169997), 
        .pad_gpio_inenb(mprj_io_inp_dis[11]), .pad_gpio_dm(mprj_io_dm[35:33]), 
        .pad_gpio_outenb(mprj_io_oeb[11]), .pad_gpio_out(mprj_io_out[11]), 
        .pad_gpio_in(net169998) );
  gpio_control_block_26 \gpio_control_in_1[4]  ( .gpio_defaults({net169957, 
        net169958, net169959, net169960, net169961, net169962, net169963, 
        net169964, net169965, net169966, net169967, net169968, net169969}), 
        .resetn(net169970), .serial_clock(net169971), .serial_load(
        gpio_load_1_shifted[12]), .serial_load_out(gpio_load_1_shifted[13]), 
        .mgmt_gpio_out(net169972), .mgmt_gpio_oeb(net169973), .serial_data_in(
        net169974), .user_gpio_out(net169975), .user_gpio_oeb(net169976), 
        .pad_gpio_inenb(mprj_io_inp_dis[12]), .pad_gpio_dm(mprj_io_dm[38:36]), 
        .pad_gpio_outenb(mprj_io_oeb[12]), .pad_gpio_out(mprj_io_out[12]), 
        .pad_gpio_in(net169977) );
  gpio_control_block_25 \gpio_control_in_1[5]  ( .gpio_defaults({net169936, 
        net169937, net169938, net169939, net169940, net169941, net169942, 
        net169943, net169944, net169945, net169946, net169947, net169948}), 
        .resetn(net169949), .serial_clock(net169950), .serial_load(
        gpio_load_1_shifted[13]), .serial_load_out(gpio_load_1_shifted[14]), 
        .mgmt_gpio_out(net169951), .mgmt_gpio_oeb(net169952), .serial_data_in(
        net169953), .user_gpio_out(net169954), .user_gpio_oeb(net169955), 
        .pad_gpio_inenb(mprj_io_inp_dis[13]), .pad_gpio_dm(mprj_io_dm[41:39]), 
        .pad_gpio_outenb(mprj_io_oeb[13]), .pad_gpio_out(mprj_io_out[13]), 
        .pad_gpio_in(net169956) );
  gpio_control_block_24 \gpio_control_in_1[6]  ( .gpio_defaults({net169916, 
        net169917, net169918, net169919, net169920, net169921, net169922, 
        net169923, net169924, net169925, net169926, net169927, net169928}), 
        .resetn(net169929), .serial_clock(net169930), .serial_load(
        gpio_load_1_shifted[14]), .serial_load_out(gpio_load_1_shifted[15]), 
        .mgmt_gpio_out(\mgmt_io_out_hk[14] ), .mgmt_gpio_oeb(net169931), 
        .serial_data_in(net169932), .user_gpio_out(net169933), .user_gpio_oeb(
        net169934), .pad_gpio_inenb(mprj_io_inp_dis[14]), .pad_gpio_dm(
        mprj_io_dm[44:42]), .pad_gpio_outenb(mprj_io_oeb[14]), .pad_gpio_out(
        mprj_io_out[14]), .pad_gpio_in(net169935) );
  gpio_control_block_23 \gpio_control_in_1[7]  ( .gpio_defaults({net169895, 
        net169896, net169897, net169898, net169899, net169900, net169901, 
        net169902, net169903, net169904, net169905, net169906, net169907}), 
        .resetn(net169908), .serial_clock(net169909), .serial_load(
        gpio_load_1_shifted[15]), .serial_load_out(gpio_load_1_shifted[16]), 
        .mgmt_gpio_out(net169910), .mgmt_gpio_oeb(net169911), .serial_data_in(
        net169912), .user_gpio_out(net169913), .user_gpio_oeb(net169914), 
        .pad_gpio_inenb(mprj_io_inp_dis[15]), .pad_gpio_dm(mprj_io_dm[47:45]), 
        .pad_gpio_outenb(mprj_io_oeb[15]), .pad_gpio_out(mprj_io_out[15]), 
        .pad_gpio_in(net169915) );
  gpio_control_block_22 \gpio_control_in_1[8]  ( .gpio_defaults({net169874, 
        net169875, net169876, net169877, net169878, net169879, net169880, 
        net169881, net169882, net169883, net169884, net169885, net169886}), 
        .resetn(net169887), .serial_clock(net169888), .serial_load(
        gpio_load_1_shifted[16]), .serial_load_out(gpio_load_1_shifted[17]), 
        .mgmt_gpio_out(net169889), .mgmt_gpio_oeb(net169890), .serial_data_in(
        net169891), .user_gpio_out(net169892), .user_gpio_oeb(net169893), 
        .pad_gpio_inenb(mprj_io_inp_dis[16]), .pad_gpio_dm(mprj_io_dm[50:48]), 
        .pad_gpio_outenb(mprj_io_oeb[16]), .pad_gpio_out(mprj_io_out[16]), 
        .pad_gpio_in(net169894) );
  gpio_control_block_21 \gpio_control_in_1[9]  ( .gpio_defaults({net169853, 
        net169854, net169855, net169856, net169857, net169858, net169859, 
        net169860, net169861, net169862, net169863, net169864, net169865}), 
        .resetn(net169866), .serial_clock(net169867), .serial_load(
        gpio_load_1_shifted[17]), .serial_load_out(gpio_load_1_shifted[18]), 
        .mgmt_gpio_out(net169868), .mgmt_gpio_oeb(net169869), .serial_data_in(
        net169870), .user_gpio_out(net169871), .user_gpio_oeb(net169872), 
        .pad_gpio_inenb(mprj_io_inp_dis[17]), .pad_gpio_dm(mprj_io_dm[53:51]), 
        .pad_gpio_outenb(mprj_io_oeb[17]), .pad_gpio_out(mprj_io_out[17]), 
        .pad_gpio_in(net169873) );
  gpio_control_block_20 \gpio_control_in_1[10]  ( .gpio_defaults({net169832, 
        net169833, net169834, net169835, net169836, net169837, net169838, 
        net169839, net169840, net169841, net169842, net169843, net169844}), 
        .resetn(net169845), .serial_clock(net169846), .serial_load(
        gpio_load_1_shifted[18]), .mgmt_gpio_out(net169847), .mgmt_gpio_oeb(
        net169848), .serial_data_in(net169849), .user_gpio_out(net169850), 
        .user_gpio_oeb(net169851), .pad_gpio_inenb(mprj_io_inp_dis[18]), 
        .pad_gpio_dm(mprj_io_dm[56:54]), .pad_gpio_outenb(mprj_io_oeb[18]), 
        .pad_gpio_out(mprj_io_out[18]), .pad_gpio_in(net169852) );
  gpio_control_block_19 \gpio_control_bidir_2[0]  ( .gpio_defaults({net169811, 
        net169812, net169813, net169814, net169815, net169816, net169817, 
        net169818, net169819, net169820, net169821, net169822, net169823}), 
        .resetn(net169824), .serial_clock(net169825), .serial_load(
        gpio_load_2_shifted[16]), .serial_load_out(gpio_load_2_shifted[15]), 
        .mgmt_gpio_out(net169826), .mgmt_gpio_oeb(net169827), .serial_data_in(
        net169828), .user_gpio_out(net169829), .user_gpio_oeb(net169830), 
        .pad_gpio_inenb(mprj_io_inp_dis[35]), .pad_gpio_dm(mprj_io_dm[107:105]), .pad_gpio_outenb(mprj_io_oeb[35]), .pad_gpio_out(mprj_io_out[35]), 
        .pad_gpio_in(net169831) );
  gpio_control_block_18 \gpio_control_bidir_2[1]  ( .gpio_defaults({net169790, 
        net169791, net169792, net169793, net169794, net169795, net169796, 
        net169797, net169798, net169799, net169800, net169801, net169802}), 
        .resetn(net169803), .serial_clock(net169804), .serial_load(
        gpio_load_2_shifted[17]), .serial_load_out(gpio_load_2_shifted[16]), 
        .mgmt_gpio_out(net169805), .mgmt_gpio_oeb(net169806), .serial_data_in(
        net169807), .user_gpio_out(net169808), .user_gpio_oeb(net169809), 
        .pad_gpio_inenb(mprj_io_inp_dis[36]), .pad_gpio_dm(mprj_io_dm[110:108]), .pad_gpio_outenb(mprj_io_oeb[36]), .pad_gpio_out(mprj_io_out[36]), 
        .pad_gpio_in(net169810) );
  gpio_control_block_17 \gpio_control_bidir_2[2]  ( .gpio_defaults({net169769, 
        net169770, net169771, net169772, net169773, net169774, net169775, 
        net169776, net169777, net169778, net169779, net169780, net169781}), 
        .resetn(net169782), .serial_clock(net169783), .serial_load(
        gpio_load_1_shifted[0]), .serial_load_out(gpio_load_2_shifted[17]), 
        .mgmt_gpio_out(net169784), .mgmt_gpio_oeb(net169785), .serial_data_in(
        net169786), .user_gpio_out(net169787), .user_gpio_oeb(net169788), 
        .pad_gpio_inenb(mprj_io_inp_dis[37]), .pad_gpio_dm(mprj_io_dm[113:111]), .pad_gpio_outenb(mprj_io_oeb[37]), .pad_gpio_out(mprj_io_out[37]), 
        .pad_gpio_in(net169789) );
  gpio_control_block_16 \gpio_control_in_2[0]  ( .gpio_defaults({net169748, 
        net169749, net169750, net169751, net169752, net169753, net169754, 
        net169755, net169756, net169757, net169758, net169759, net169760}), 
        .resetn(net169761), .serial_clock(net169762), .serial_load(
        gpio_load_2_shifted[0]), .mgmt_gpio_out(net169763), .mgmt_gpio_oeb(
        net169764), .serial_data_in(net169765), .user_gpio_out(net169766), 
        .user_gpio_oeb(net169767), .pad_gpio_inenb(mprj_io_inp_dis[19]), 
        .pad_gpio_dm(mprj_io_dm[59:57]), .pad_gpio_outenb(mprj_io_oeb[19]), 
        .pad_gpio_out(mprj_io_out[19]), .pad_gpio_in(net169768) );
  gpio_control_block_15 \gpio_control_in_2[1]  ( .gpio_defaults({net169727, 
        net169728, net169729, net169730, net169731, net169732, net169733, 
        net169734, net169735, net169736, net169737, net169738, net169739}), 
        .resetn(net169740), .serial_clock(net169741), .serial_load(
        gpio_load_2_shifted[1]), .serial_load_out(gpio_load_2_shifted[0]), 
        .mgmt_gpio_out(net169742), .mgmt_gpio_oeb(net169743), .serial_data_in(
        net169744), .user_gpio_out(net169745), .user_gpio_oeb(net169746), 
        .pad_gpio_inenb(mprj_io_inp_dis[20]), .pad_gpio_dm(mprj_io_dm[62:60]), 
        .pad_gpio_outenb(mprj_io_oeb[20]), .pad_gpio_out(mprj_io_out[20]), 
        .pad_gpio_in(net169747) );
  gpio_control_block_14 \gpio_control_in_2[2]  ( .gpio_defaults({net169706, 
        net169707, net169708, net169709, net169710, net169711, net169712, 
        net169713, net169714, net169715, net169716, net169717, net169718}), 
        .resetn(net169719), .serial_clock(net169720), .serial_load(
        gpio_load_2_shifted[2]), .serial_load_out(gpio_load_2_shifted[1]), 
        .mgmt_gpio_out(net169721), .mgmt_gpio_oeb(net169722), .serial_data_in(
        net169723), .user_gpio_out(net169724), .user_gpio_oeb(net169725), 
        .pad_gpio_inenb(mprj_io_inp_dis[21]), .pad_gpio_dm(mprj_io_dm[65:63]), 
        .pad_gpio_outenb(mprj_io_oeb[21]), .pad_gpio_out(mprj_io_out[21]), 
        .pad_gpio_in(net169726) );
  gpio_control_block_13 \gpio_control_in_2[3]  ( .gpio_defaults({net169685, 
        net169686, net169687, net169688, net169689, net169690, net169691, 
        net169692, net169693, net169694, net169695, net169696, net169697}), 
        .resetn(net169698), .serial_clock(net169699), .serial_load(
        gpio_load_2_shifted[3]), .serial_load_out(gpio_load_2_shifted[2]), 
        .mgmt_gpio_out(net169700), .mgmt_gpio_oeb(net169701), .serial_data_in(
        net169702), .user_gpio_out(net169703), .user_gpio_oeb(net169704), 
        .pad_gpio_inenb(mprj_io_inp_dis[22]), .pad_gpio_dm(mprj_io_dm[68:66]), 
        .pad_gpio_outenb(mprj_io_oeb[22]), .pad_gpio_out(mprj_io_out[22]), 
        .pad_gpio_in(net169705) );
  gpio_control_block_12 \gpio_control_in_2[4]  ( .gpio_defaults({net169664, 
        net169665, net169666, net169667, net169668, net169669, net169670, 
        net169671, net169672, net169673, net169674, net169675, net169676}), 
        .resetn(net169677), .serial_clock(net169678), .serial_load(
        gpio_load_2_shifted[4]), .serial_load_out(gpio_load_2_shifted[3]), 
        .mgmt_gpio_out(net169679), .mgmt_gpio_oeb(net169680), .serial_data_in(
        net169681), .user_gpio_out(net169682), .user_gpio_oeb(net169683), 
        .pad_gpio_inenb(mprj_io_inp_dis[23]), .pad_gpio_dm(mprj_io_dm[71:69]), 
        .pad_gpio_outenb(mprj_io_oeb[23]), .pad_gpio_out(mprj_io_out[23]), 
        .pad_gpio_in(net169684) );
  gpio_control_block_11 \gpio_control_in_2[5]  ( .gpio_defaults({net169643, 
        net169644, net169645, net169646, net169647, net169648, net169649, 
        net169650, net169651, net169652, net169653, net169654, net169655}), 
        .resetn(net169656), .serial_clock(net169657), .serial_load(
        gpio_load_2_shifted[5]), .serial_load_out(gpio_load_2_shifted[4]), 
        .mgmt_gpio_out(net169658), .mgmt_gpio_oeb(net169659), .serial_data_in(
        net169660), .user_gpio_out(net169661), .user_gpio_oeb(net169662), 
        .pad_gpio_inenb(mprj_io_inp_dis[24]), .pad_gpio_dm(mprj_io_dm[74:72]), 
        .pad_gpio_outenb(mprj_io_oeb[24]), .pad_gpio_out(mprj_io_out[24]), 
        .pad_gpio_in(net169663) );
  gpio_control_block_10 \gpio_control_in_2[6]  ( .gpio_defaults({net169622, 
        net169623, net169624, net169625, net169626, net169627, net169628, 
        net169629, net169630, net169631, net169632, net169633, net169634}), 
        .resetn(net169635), .serial_clock(net169636), .serial_load(
        gpio_load_2_shifted[6]), .serial_load_out(gpio_load_2_shifted[5]), 
        .mgmt_gpio_out(net169637), .mgmt_gpio_oeb(net169638), .serial_data_in(
        net169639), .user_gpio_out(net169640), .user_gpio_oeb(net169641), 
        .pad_gpio_inenb(mprj_io_inp_dis[25]), .pad_gpio_dm(mprj_io_dm[77:75]), 
        .pad_gpio_outenb(mprj_io_oeb[25]), .pad_gpio_out(mprj_io_out[25]), 
        .pad_gpio_in(net169642) );
  gpio_control_block_9 \gpio_control_in_2[7]  ( .gpio_defaults({net169601, 
        net169602, net169603, net169604, net169605, net169606, net169607, 
        net169608, net169609, net169610, net169611, net169612, net169613}), 
        .resetn(net169614), .serial_clock(net169615), .serial_load(
        gpio_load_2_shifted[7]), .serial_load_out(gpio_load_2_shifted[6]), 
        .mgmt_gpio_out(net169616), .mgmt_gpio_oeb(net169617), .serial_data_in(
        net169618), .user_gpio_out(net169619), .user_gpio_oeb(net169620), 
        .pad_gpio_inenb(mprj_io_inp_dis[26]), .pad_gpio_dm(mprj_io_dm[80:78]), 
        .pad_gpio_outenb(mprj_io_oeb[26]), .pad_gpio_out(mprj_io_out[26]), 
        .pad_gpio_in(net169621) );
  gpio_control_block_8 \gpio_control_in_2[8]  ( .gpio_defaults({net169580, 
        net169581, net169582, net169583, net169584, net169585, net169586, 
        net169587, net169588, net169589, net169590, net169591, net169592}), 
        .resetn(net169593), .serial_clock(net169594), .serial_load(
        gpio_load_2_shifted[8]), .serial_load_out(gpio_load_2_shifted[7]), 
        .mgmt_gpio_out(net169595), .mgmt_gpio_oeb(net169596), .serial_data_in(
        net169597), .user_gpio_out(net169598), .user_gpio_oeb(net169599), 
        .pad_gpio_inenb(mprj_io_inp_dis[27]), .pad_gpio_dm(mprj_io_dm[83:81]), 
        .pad_gpio_outenb(mprj_io_oeb[27]), .pad_gpio_out(mprj_io_out[27]), 
        .pad_gpio_in(net169600) );
  gpio_control_block_7 \gpio_control_in_2[9]  ( .gpio_defaults({net169559, 
        net169560, net169561, net169562, net169563, net169564, net169565, 
        net169566, net169567, net169568, net169569, net169570, net169571}), 
        .resetn(net169572), .serial_clock(net169573), .serial_load(
        gpio_load_2_shifted[9]), .serial_load_out(gpio_load_2_shifted[8]), 
        .mgmt_gpio_out(net169574), .mgmt_gpio_oeb(net169575), .serial_data_in(
        net169576), .user_gpio_out(net169577), .user_gpio_oeb(net169578), 
        .pad_gpio_inenb(mprj_io_inp_dis[28]), .pad_gpio_dm(mprj_io_dm[86:84]), 
        .pad_gpio_outenb(mprj_io_oeb[28]), .pad_gpio_out(mprj_io_out[28]), 
        .pad_gpio_in(net169579) );
  gpio_control_block_6 \gpio_control_in_2[10]  ( .gpio_defaults({net169538, 
        net169539, net169540, net169541, net169542, net169543, net169544, 
        net169545, net169546, net169547, net169548, net169549, net169550}), 
        .resetn(net169551), .serial_clock(net169552), .serial_load(
        gpio_load_2_shifted[10]), .serial_load_out(gpio_load_2_shifted[9]), 
        .mgmt_gpio_out(net169553), .mgmt_gpio_oeb(net169554), .serial_data_in(
        net169555), .user_gpio_out(net169556), .user_gpio_oeb(net169557), 
        .pad_gpio_inenb(mprj_io_inp_dis[29]), .pad_gpio_dm(mprj_io_dm[89:87]), 
        .pad_gpio_outenb(mprj_io_oeb[29]), .pad_gpio_out(mprj_io_out[29]), 
        .pad_gpio_in(net169558) );
  gpio_control_block_5 \gpio_control_in_2[11]  ( .gpio_defaults({net169517, 
        net169518, net169519, net169520, net169521, net169522, net169523, 
        net169524, net169525, net169526, net169527, net169528, net169529}), 
        .resetn(net169530), .serial_clock(net169531), .serial_load(
        gpio_load_2_shifted[11]), .serial_load_out(gpio_load_2_shifted[10]), 
        .mgmt_gpio_out(net169532), .mgmt_gpio_oeb(net169533), .serial_data_in(
        net169534), .user_gpio_out(net169535), .user_gpio_oeb(net169536), 
        .pad_gpio_inenb(mprj_io_inp_dis[30]), .pad_gpio_dm(mprj_io_dm[92:90]), 
        .pad_gpio_outenb(mprj_io_oeb[30]), .pad_gpio_out(mprj_io_out[30]), 
        .pad_gpio_in(net169537) );
  gpio_control_block_4 \gpio_control_in_2[12]  ( .gpio_defaults({net169496, 
        net169497, net169498, net169499, net169500, net169501, net169502, 
        net169503, net169504, net169505, net169506, net169507, net169508}), 
        .resetn(net169509), .serial_clock(net169510), .serial_load(
        gpio_load_2_shifted[12]), .serial_load_out(gpio_load_2_shifted[11]), 
        .mgmt_gpio_out(net169511), .mgmt_gpio_oeb(net169512), .serial_data_in(
        net169513), .user_gpio_out(net169514), .user_gpio_oeb(net169515), 
        .pad_gpio_inenb(mprj_io_inp_dis[31]), .pad_gpio_dm(mprj_io_dm[95:93]), 
        .pad_gpio_outenb(mprj_io_oeb[31]), .pad_gpio_out(mprj_io_out[31]), 
        .pad_gpio_in(net169516) );
  gpio_control_block_3 \gpio_control_in_2[13]  ( .gpio_defaults({net169475, 
        net169476, net169477, net169478, net169479, net169480, net169481, 
        net169482, net169483, net169484, net169485, net169486, net169487}), 
        .resetn(net169488), .serial_clock(net169489), .serial_load(
        gpio_load_2_shifted[13]), .serial_load_out(gpio_load_2_shifted[12]), 
        .mgmt_gpio_out(net169490), .mgmt_gpio_oeb(net169491), .serial_data_in(
        net169492), .user_gpio_out(net169493), .user_gpio_oeb(net169494), 
        .pad_gpio_inenb(mprj_io_inp_dis[32]), .pad_gpio_dm(mprj_io_dm[98:96]), 
        .pad_gpio_outenb(mprj_io_oeb[32]), .pad_gpio_out(mprj_io_out[32]), 
        .pad_gpio_in(net169495) );
  gpio_control_block_2 \gpio_control_in_2[14]  ( .gpio_defaults({net169454, 
        net169455, net169456, net169457, net169458, net169459, net169460, 
        net169461, net169462, net169463, net169464, net169465, net169466}), 
        .resetn(net169467), .serial_clock(net169468), .serial_load(
        gpio_load_2_shifted[14]), .serial_load_out(gpio_load_2_shifted[13]), 
        .mgmt_gpio_out(net169469), .mgmt_gpio_oeb(net169470), .serial_data_in(
        net169471), .user_gpio_out(net169472), .user_gpio_oeb(net169473), 
        .pad_gpio_inenb(mprj_io_inp_dis[33]), .pad_gpio_dm(mprj_io_dm[101:99]), 
        .pad_gpio_outenb(mprj_io_oeb[33]), .pad_gpio_out(mprj_io_out[33]), 
        .pad_gpio_in(net169474) );
  gpio_control_block_1 \gpio_control_in_2[15]  ( .gpio_defaults({net169433, 
        net169434, net169435, net169436, net169437, net169438, net169439, 
        net169440, net169441, net169442, net169443, net169444, net169445}), 
        .resetn(net169446), .serial_clock(net169447), .serial_load(
        gpio_load_2_shifted[15]), .serial_load_out(gpio_load_2_shifted[14]), 
        .mgmt_gpio_out(net169448), .mgmt_gpio_oeb(net169449), .serial_data_in(
        net169450), .user_gpio_out(net169451), .user_gpio_oeb(net169452), 
        .pad_gpio_inenb(mprj_io_inp_dis[34]), .pad_gpio_dm(mprj_io_dm[104:102]), .pad_gpio_outenb(mprj_io_oeb[34]), .pad_gpio_out(mprj_io_out[34]), 
        .pad_gpio_in(net169453) );
  xres_buf rstb_level ( .X(rstb_l), .A(rstb_h), .Port7(1'b0) );
  spare_logic_block_0 \spare_logic[0]  (  );
  spare_logic_block_3 \spare_logic[1]  (  );
  spare_logic_block_2 \spare_logic[2]  (  );
  spare_logic_block_1 \spare_logic[3]  (  );
endmodule


module vsdcaravel ( vddio, vddio_2, vssio, vssio_2, vdda, vssa, vccd, vssd, 
        vdda1, vdda1_2, vdda2, vssa1, vssa1_2, vssa2, vccd1, vccd2, vssd1, 
        vssd2, gpio, mprj_io, clock, reset_n, flash_csb, flash_clk, flash_io0, 
        flash_io1 );
  inout [37:0] mprj_io;
  input clock, reset_n;
  output flash_csb, flash_clk;
  inout vddio,  vddio_2,  vssio,  vssio_2,  vdda,  vssa,  vccd,  vssd,  vdda1, 
     vdda1_2,  vdda2,  vssa1,  vssa1_2,  vssa2,  vccd1,  vccd2,  vssd1,  vssd2, 
     gpio,  flash_io0,  flash_io1;
  wire   vdda_core, vssa_core, vccd1_core, vccd2_core, vssd1_core, vssd2_core,
         clock_core, net170977, net170978, net170979, net170980, net170981,
         net170982, net170983, net170984, net170985, net170986, net170987,
         net170988, net170989, net170990, net170991, net170992, net170993,
         net170994, net170995, net170996, net170997, net170998, net170999,
         net171000, net171001, net171002, net171003, net171004, net171005,
         net171006, net171007, net171008, net171009, net171010, net171011,
         net171012, net171013, net171014, net171015, net171016, net171017,
         net171018, net171019, net171020, net171021, net171022, net171023,
         net171024, net171025, net171026, net171027, net171028, net171029,
         net171030, net171031, net171032, net171033, net171034, net171035,
         net171036, net171037, net171038, net171039, net171040, net171041,
         net171042, net171043, net171044, net171045, net171046, net171047,
         net171048, net171049, net171050, net171051, net171052, net171053,
         net171054, net171055, net171056, net171057, net171058, net171059,
         net171060, net171061, net171062, net171063, net171064, net171065,
         net171066, net171067, net171068, net171069, net171070, net171071,
         net171072, net171073, net171074, net171075, net171076, net171077,
         net171078, net171079, net171080, net171081, net171082, net171083,
         net171084, net171085, net171086, net171087, net171088, net171089,
         net171090, net171091, net171092, net171093, net171094, net171095,
         net171096, net171097, net171098, net171099, net171100, net171101,
         net171102, net171103, net171104, net171105, net171106, net171107,
         net171108, net171109, net171110, net171111, net171112, net171113,
         net171114, net171115, net171116, net171117, net171118, net171119,
         net171120, net171121, net171122, net171123, net171124, net171125,
         net171126, net171127, net171128, net171129, net171130, net171131,
         net171132, net171133, net171134, net171135, net171136, net171137,
         net171138, net171139, net171140, net171141, net171142, net171143,
         net171144, net171145, net171146, net171147, net171148, net171149,
         net171150, net171151, net171152, net171153, net171154, net171155,
         net171156, net171157, net171158, net171159, net171160, net171161,
         net171162, net171163, net171164, net171165, net171166, net171167,
         net171168, net171169, net171170, net171171, net171172, net171173,
         net171174, net171175, net171176, net171177, net171178, net171179,
         net171180, net171181, net171182, net171183, net171184, net171185,
         net171186, net171187, net171188, net171189, net171190, net171191,
         net171192, net171193, net171194, net171195, net171196, net171197,
         net171198, net171199, net171200, net171201, net171202, net171203,
         net171204, net171205, net171206, net171207, net171208, net171209,
         net171210, net171211, net171212, net171213, net171214, net171215,
         net171216, net171217, net171218, net171219, net171220, net171221,
         net171222, net171223, net171224, net171225, net171226, net171227,
         net171228, net171229, net171230, net171231, net171232, net171233,
         net171234, net171235, net171236, net171237, net171238, net171239,
         net171240, net171241, net171242, net171243, net171244, net171245,
         net171246, net171247, net171248, net171249, net171250, net171251,
         net171252, net171253, net171254, net171255, net171256, net171257,
         net171258, net171259, net171260, net171261, net171262, net171263,
         net171264, net171265, net171266, net171267, net171268, net171269,
         net171270, net171271, net171272, net171273, net171274, net171275,
         net171276, net171277, net171278, net171279, net171280, net171281,
         net171282, net171283, net171284, net171285, net171286, net171287,
         net171288, net171289, net171290, net171291, net171292, net171293,
         net171294, net171295, net171296, net171297, net171298, net171299,
         net171300, net171301, net171302, net171303, net171304, net171305,
         net171306, net171307, net171308, net171309, net171310, net171311,
         net171312, net171313, net171314, net171315, net171316, net171317,
         net171318, net171319, net171320, net171321, net171322, net171323,
         net171324, net171325, net171326, net171327, net171328, net171329,
         net171330, net171331, net171332, net171333, net171334, net171335;
  tri   vddio;
  tri   vddio_2;
  tri   vssio;
  tri   vssio_2;
  tri   vdda;
  tri   vssa;
  tri   vccd;
  tri   vssd;
  tri   vdda1;
  tri   vdda1_2;
  tri   vdda2;
  tri   vssa1;
  tri   vssa1_2;
  tri   vssa2;
  tri   vccd1;
  tri   vccd2;
  tri   vssd1;
  tri   vssd2;
  tri   gpio;
  tri   [37:0] mprj_io;
  tri   flash_io0;
  tri   flash_io1;
  tri   \mprj_io_in[3] ;
  tri   [37:0] mprj_io_out;
  tri   [37:0] mprj_io_oeb;
  tri   [37:0] mprj_io_inp_dis;
  tri   [113:0] mprj_io_dm;
  tri   [28:0] user_analog_io;
wand  reset_n;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36;
  assign reset_n = 1'b0;

  chip_io padframe ( .vddio_pad(vddio), .vddio_pad2(vddio_2), .vssio_pad(vssio), .vssio_pad2(vssio_2), .vccd_pad(vccd), .vssd_pad(vssd), .vdda_pad(vdda), 
        .vssa_pad(vssa), .vdda1_pad(vdda1), .vdda1_pad2(vdda1_2), .vdda2_pad(
        vdda2), .vssa1_pad(vssa1), .vssa1_pad2(vssa1_2), .vssa2_pad(vssa2), 
        .vccd1_pad(vccd1), .vccd2_pad(vccd2), .vssd1_pad(vssd1), .vssd2_pad(
        vssd2), .vddio(1'b0), .vssio(1'b0), .vccd(1'b0), .vssd(1'b0), .vdda(
        vdda_core), .vssa(vssa_core), .vdda1(1'b0), .vdda2(1'b0), .vssa1(1'b0), 
        .vssa2(1'b0), .vccd1(vccd1_core), .vccd2(vccd2_core), .vssd1(
        vssd1_core), .vssd2(vssd2_core), .gpio(gpio), .clock(clock), .reset_n(
        1'b0), .flash_csb(flash_csb), .flash_clk(flash_clk), .flash_io0(
        flash_io0), .flash_io1(flash_io1), .rstn_h(1'b0), .por(1'b0), 
        .reset_n_core_h(1'b0), .clock_core(clock_core), .gpio_out_core(
        net171017), .gpio_mode0_core(net171018), .gpio_mode1_core(net171019), 
        .gpio_outenb_core(net171020), .gpio_inenb_core(net171021), 
        .flash_csb_core(net171022), .flash_clk_core(net171023), 
        .flash_csb_oeb_core(net171024), .flash_clk_oeb_core(net171025), 
        .flash_io0_oeb_core(net171026), .flash_io1_oeb_core(net171027), 
        .flash_io0_ieb_core(net171028), .flash_io1_ieb_core(net171029), 
        .flash_io0_do_core(net171030), .flash_io1_do_core(net171031), 
        .mprj_io(mprj_io), .mprj_io_out(mprj_io_out), .mprj_io_oeb(mprj_io_oeb), .mprj_io_inp_dis(mprj_io_inp_dis), .mprj_io_ib_mode_sel({net171032, 
        net171033, net171034, net171035, net171036, net171037, net171038, 
        net171039, net171040, net171041, net171042, net171043, net171044, 
        net171045, net171046, net171047, net171048, net171049, net171050, 
        net171051, net171052, net171053, net171054, net171055, net171056, 
        net171057, net171058, net171059, net171060, net171061, net171062, 
        net171063, net171064, net171065, net171066, net171067, net171068, 
        net171069}), .mprj_io_vtrip_sel({net171070, net171071, net171072, 
        net171073, net171074, net171075, net171076, net171077, net171078, 
        net171079, net171080, net171081, net171082, net171083, net171084, 
        net171085, net171086, net171087, net171088, net171089, net171090, 
        net171091, net171092, net171093, net171094, net171095, net171096, 
        net171097, net171098, net171099, net171100, net171101, net171102, 
        net171103, net171104, net171105, net171106, net171107}), 
        .mprj_io_slow_sel({net171108, net171109, net171110, net171111, 
        net171112, net171113, net171114, net171115, net171116, net171117, 
        net171118, net171119, net171120, net171121, net171122, net171123, 
        net171124, net171125, net171126, net171127, net171128, net171129, 
        net171130, net171131, net171132, net171133, net171134, net171135, 
        net171136, net171137, net171138, net171139, net171140, net171141, 
        net171142, net171143, net171144, net171145}), .mprj_io_holdover({
        net171146, net171147, net171148, net171149, net171150, net171151, 
        net171152, net171153, net171154, net171155, net171156, net171157, 
        net171158, net171159, net171160, net171161, net171162, net171163, 
        net171164, net171165, net171166, net171167, net171168, net171169, 
        net171170, net171171, net171172, net171173, net171174, net171175, 
        net171176, net171177, net171178, net171179, net171180, net171181, 
        net171182, net171183}), .mprj_io_analog_en({net171184, net171185, 
        net171186, net171187, net171188, net171189, net171190, net171191, 
        net171192, net171193, net171194, net171195, net171196, net171197, 
        net171198, net171199, net171200, net171201, net171202, net171203, 
        net171204, net171205, net171206, net171207, net171208, net171209, 
        net171210, net171211, net171212, net171213, net171214, net171215, 
        net171216, net171217, net171218, net171219, net171220, net171221}), 
        .mprj_io_analog_sel({net171222, net171223, net171224, net171225, 
        net171226, net171227, net171228, net171229, net171230, net171231, 
        net171232, net171233, net171234, net171235, net171236, net171237, 
        net171238, net171239, net171240, net171241, net171242, net171243, 
        net171244, net171245, net171246, net171247, net171248, net171249, 
        net171250, net171251, net171252, net171253, net171254, net171255, 
        net171256, net171257, net171258, net171259}), .mprj_io_analog_pol({
        net171260, net171261, net171262, net171263, net171264, net171265, 
        net171266, net171267, net171268, net171269, net171270, net171271, 
        net171272, net171273, net171274, net171275, net171276, net171277, 
        net171278, net171279, net171280, net171281, net171282, net171283, 
        net171284, net171285, net171286, net171287, net171288, net171289, 
        net171290, net171291, net171292, net171293, net171294, net171295, 
        net171296, net171297}), .mprj_io_dm(mprj_io_dm), .mprj_io_in({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, \mprj_io_in[3] , 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36}), .mprj_io_one({net171298, net171299, 
        net171300, net171301, net171302, net171303, net171304, net171305, 
        net171306, net171307, net171308, net171309, net171310, net171311, 
        net171312, net171313, net171314, net171315, net171316, net171317, 
        net171318, net171319, net171320, net171321, net171322, net171323, 
        net171324, net171325, net171326, net171327, net171328, net171329, 
        net171330, net171331, net171332, net171333, net171334, net171335}), 
        .mprj_analog_io(user_analog_io) );
  caravel_core chip_core ( .vddio(1'b0), .vssio(1'b0), .vccd(1'b0), .vssd(1'b0), .vdda1(1'b0), .vdda2(1'b0), .vssa1(1'b0), .vssa2(1'b0), .vccd1(vccd1_core), 
        .vccd2(vccd2_core), .vssd1(vssd1_core), .vssd2(vssd2_core), .rstb_h(
        1'b0), .clock_core(clock_core), .gpio_in_core(net170977), 
        .flash_io0_di(net170978), .flash_io1_di(net170979), .mprj_io_in({
        net170980, net170981, net170982, net170983, net170984, net170985, 
        net170986, net170987, net170988, net170989, net170990, net170991, 
        net170992, net170993, net170994, net170995, net170996, net170997, 
        net170998, net170999, net171000, net171001, net171002, net171003, 
        net171004, net171005, net171006, net171007, net171008, net171009, 
        net171010, net171011, net171012, net171013, \mprj_io_in[3] , net171014, 
        net171015, net171016}), .mprj_io_out(mprj_io_out), .mprj_io_oeb(
        mprj_io_oeb), .mprj_io_inp_dis(mprj_io_inp_dis), .mprj_io_dm(
        mprj_io_dm), .mprj_analog_io(user_analog_io) );
endmodule

