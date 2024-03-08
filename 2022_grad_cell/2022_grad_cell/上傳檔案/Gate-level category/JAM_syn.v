/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Mon Feb 19 05:07:53 2024
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0_DW01_add_1 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [9:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(A[7]), .B(carry[7]), .Y(n2) );
  AND2X2 U2 ( .A(B[0]), .B(A[0]), .Y(n1) );
  AND2XL U3 ( .A(A[8]), .B(n2), .Y(SUM[9]) );
  XOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2X1 U5 ( .A(A[8]), .B(n2), .Y(SUM[8]) );
  XOR2X1 U6 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N222, N223, N224, N225, N226, N227, N228, N229, N230, n928, n929,
         n930, n931, n932, n933, n934, n935, n936, n937, n938, n939, n940,
         n941, n942, n943, n944, n945, n946, n947, n948, \order[0][2] ,
         \order[0][1] , \order[0][0] , \order[1][2] , \order[1][1] ,
         \order[1][0] , \order[2][2] , \order[2][1] , \order[2][0] ,
         \order[3][2] , \order[3][1] , \order[3][0] , \order[4][2] ,
         \order[4][1] , \order[4][0] , \order[5][2] , \order[5][1] ,
         \order[5][0] , \order[6][2] , \order[6][1] , \order[6][0] ,
         \order[7][2] , \order[7][1] , \order[7][0] , finish_getdata,
         start_getdata, N331, N347, N348, N349, finish_nextorder, N369, N378,
         N447, N448, N449, N450, N451, N452, N482, N483, N624, N625, N626,
         N822, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n167, n168, n170, n171, n172, n174, n221, n241, n242,
         n243, n244, n246, n253, n262, n265, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819,
         n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, n852,
         n853, n854, n855, n856, n857, n858, n859, n860, n861, n862, n863,
         n864, n865, n866, n867, n868, n869, n870, n871, n872, n873, n874,
         n875, n876, n877, n878, n879, n880, n881, n882, n883, n884, n885,
         n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, n896,
         n897, n898, n899, n900, n901, n902, n903, n904, n905, n906, n907,
         n908, n909, n910, n911, n912, n913, n914, n915, n916, n917, n918,
         n919, n920, n921, n922, n923, n924, n925, n926, n927;
  wire   [8:0] adder1;
  wire   [8:0] adder2;
  wire   [9:0] total_cost;
  wire   [2:0] state;
  wire   [2:0] step;

  OAI221X2 U361 ( .A0(n496), .A1(n449), .B0(n447), .B1(n494), .C0(n731), .Y(
        n293) );
  NAND2X4 U412 ( .A(n730), .B(n449), .Y(n429) );
  JAM_DW01_add_0_DW01_add_1 add_31 ( .A({1'b0, adder1}), .B({1'b0, 1'b0, 1'b0, 
        adder2[6:0]}), .CI(1'b0), .SUM(total_cost) );
  DFFQX1 finish_nextorder_reg ( .D(N822), .CK(CLK), .Q(finish_nextorder) );
  DFFQX1 \step_reg[2]  ( .D(n654), .CK(CLK), .Q(step[2]) );
  DFFNSRX2 \W_reg[1]  ( .D(n658), .CKN(CLK), .SN(1'b1), .RN(1'b1), .Q(n929), 
        .QN(n172) );
  DFFQX2 \step_reg[1]  ( .D(n655), .CK(CLK), .Q(step[1]) );
  DFFQX1 \adder1_reg[8]  ( .D(n582), .CK(CLK), .Q(adder1[8]) );
  DFFQX1 \adder1_reg[7]  ( .D(n583), .CK(CLK), .Q(adder1[7]) );
  DFFNSRX1 \tab_reg[1][1]  ( .D(n605), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n115) );
  DFFNSRX1 \tab_reg[1][2]  ( .D(n606), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n114) );
  DFFNSRX1 \tab_reg[1][3]  ( .D(n607), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n113) );
  DFFNSRX1 \tab_reg[1][4]  ( .D(n608), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n112) );
  DFFNSRX1 \tab_reg[1][5]  ( .D(n609), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n111) );
  DFFNSRX1 \tab_reg[1][6]  ( .D(n610), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n110) );
  DFFNSRX1 \tab_reg[1][0]  ( .D(n611), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n116) );
  DFFNSRX1 \tab_reg[0][1]  ( .D(n591), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n108) );
  DFFNSRX1 \tab_reg[0][2]  ( .D(n592), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n107) );
  DFFNSRX1 \tab_reg[0][3]  ( .D(n593), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n106) );
  DFFNSRX1 \tab_reg[0][4]  ( .D(n594), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n105) );
  DFFNSRX1 \tab_reg[0][5]  ( .D(n595), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n104) );
  DFFNSRX1 \tab_reg[0][6]  ( .D(n596), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n103) );
  DFFNSRX1 \tab_reg[0][0]  ( .D(n597), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n109) );
  DFFNSRX1 finish_getdata_reg ( .D(N331), .CKN(CLK), .SN(1'b1), .RN(1'b1), .Q(
        finish_getdata) );
  DFFNSRX1 \tab_reg[5][1]  ( .D(n633), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n143) );
  DFFNSRX1 \tab_reg[5][2]  ( .D(n634), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n142) );
  DFFNSRX1 \tab_reg[5][3]  ( .D(n635), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n141) );
  DFFNSRX1 \tab_reg[5][4]  ( .D(n636), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n140) );
  DFFNSRX1 \tab_reg[5][5]  ( .D(n637), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n139) );
  DFFNSRX1 \tab_reg[5][6]  ( .D(n638), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n138) );
  DFFNSRX1 \tab_reg[5][0]  ( .D(n639), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n144) );
  DFFNSRX1 \tab_reg[2][1]  ( .D(n612), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n122) );
  DFFNSRX1 \tab_reg[2][2]  ( .D(n613), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n121) );
  DFFNSRX1 \tab_reg[2][3]  ( .D(n614), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n120) );
  DFFNSRX1 \tab_reg[2][4]  ( .D(n615), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n119) );
  DFFNSRX1 \tab_reg[2][5]  ( .D(n616), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n118) );
  DFFNSRX1 \tab_reg[2][6]  ( .D(n617), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n117) );
  DFFNSRX1 \tab_reg[2][0]  ( .D(n618), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n123) );
  DFFNSRX1 \tab_reg[6][1]  ( .D(n640), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n150) );
  DFFNSRX1 \tab_reg[6][2]  ( .D(n641), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n149) );
  DFFNSRX1 \tab_reg[6][3]  ( .D(n642), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n148) );
  DFFNSRX1 \tab_reg[6][4]  ( .D(n643), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n147) );
  DFFNSRX1 \tab_reg[6][5]  ( .D(n644), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n146) );
  DFFNSRX1 \tab_reg[6][6]  ( .D(n645), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n145) );
  DFFNSRX1 \tab_reg[6][0]  ( .D(n646), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n151) );
  DFFNSRX1 \tab_reg[3][1]  ( .D(n619), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n129) );
  DFFNSRX1 \tab_reg[3][2]  ( .D(n620), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n128) );
  DFFNSRX1 \tab_reg[3][3]  ( .D(n621), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n127) );
  DFFNSRX1 \tab_reg[3][4]  ( .D(n622), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n126) );
  DFFNSRX1 \tab_reg[3][5]  ( .D(n623), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n125) );
  DFFNSRX1 \tab_reg[3][6]  ( .D(n624), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n124) );
  DFFNSRX1 \tab_reg[3][0]  ( .D(n625), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n130) );
  DFFNSRX1 \tab_reg[7][1]  ( .D(n647), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n157) );
  DFFNSRX1 \tab_reg[7][2]  ( .D(n648), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n156) );
  DFFNSRX1 \tab_reg[7][3]  ( .D(n649), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n155) );
  DFFNSRX1 \tab_reg[7][4]  ( .D(n650), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n154) );
  DFFNSRX1 \tab_reg[7][5]  ( .D(n651), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n153) );
  DFFNSRX1 \tab_reg[7][6]  ( .D(n652), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n152) );
  DFFNSRX1 \tab_reg[7][0]  ( .D(n653), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n158) );
  DFFNSRX1 \tab_reg[4][1]  ( .D(n626), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n136) );
  DFFNSRX1 \tab_reg[4][2]  ( .D(n627), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n135) );
  DFFNSRX1 \tab_reg[4][3]  ( .D(n628), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n134) );
  DFFNSRX1 \tab_reg[4][4]  ( .D(n629), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n133) );
  DFFNSRX1 \tab_reg[4][5]  ( .D(n630), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n132) );
  DFFNSRX1 \tab_reg[4][6]  ( .D(n631), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n131) );
  DFFNSRX1 \tab_reg[4][0]  ( .D(n632), .CKN(CLK), .SN(1'b1), .RN(1'b1), .QN(
        n137) );
  DFFQX1 \adder2_reg[3]  ( .D(n601), .CK(CLK), .Q(adder2[3]) );
  DFFQX1 \start_pointer_reg[0]  ( .D(n663), .CK(CLK), .Q(N228) );
  DFFQX1 \start_pointer_reg[2]  ( .D(n662), .CK(CLK), .Q(N230) );
  DFFQX1 \start_pointer_reg[1]  ( .D(n664), .CK(CLK), .Q(N229) );
  DFFQX1 \adder1_reg[0]  ( .D(n590), .CK(CLK), .Q(adder1[0]) );
  DFFQX1 \order_reg[6][1]  ( .D(n684), .CK(CLK), .Q(\order[6][1] ) );
  DFFQX1 \order_reg[3][1]  ( .D(n675), .CK(CLK), .Q(\order[3][1] ) );
  DFFQX1 \order_reg[7][1]  ( .D(n687), .CK(CLK), .Q(\order[7][1] ) );
  DFFX1 \order_reg[1][1]  ( .D(n669), .CK(CLK), .Q(\order[1][1] ), .QN(n246)
         );
  DFFX1 \order_reg[0][1]  ( .D(n567), .CK(CLK), .Q(\order[0][1] ), .QN(n242)
         );
  DFFQX1 \order_reg[6][2]  ( .D(n683), .CK(CLK), .Q(\order[6][2] ) );
  DFFQX1 \order_reg[7][2]  ( .D(n686), .CK(CLK), .Q(\order[7][2] ) );
  DFFQX1 \order_reg[3][2]  ( .D(n674), .CK(CLK), .Q(\order[3][2] ) );
  DFFX1 \order_reg[1][2]  ( .D(n668), .CK(CLK), .Q(\order[1][2] ), .QN(n244)
         );
  DFFX1 \order_reg[0][2]  ( .D(n689), .CK(CLK), .Q(\order[0][2] ), .QN(n241)
         );
  DFFQX1 start_getdata_reg ( .D(n855), .CK(CLK), .Q(start_getdata) );
  DFFX1 \order_reg[6][0]  ( .D(n685), .CK(CLK), .Q(\order[6][0] ), .QN(n262)
         );
  DFFX1 \order_reg[7][0]  ( .D(n688), .CK(CLK), .Q(\order[7][0] ), .QN(n265)
         );
  DFFX1 \order_reg[3][0]  ( .D(n676), .CK(CLK), .Q(\order[3][0] ), .QN(n253)
         );
  DFFQX1 \order_reg[2][0]  ( .D(n673), .CK(CLK), .Q(\order[2][0] ) );
  DFFQX1 \order_reg[5][0]  ( .D(n682), .CK(CLK), .Q(\order[5][0] ) );
  DFFQX1 \order_reg[4][0]  ( .D(n679), .CK(CLK), .Q(\order[4][0] ) );
  DFFQX1 \order_reg[1][0]  ( .D(n670), .CK(CLK), .Q(\order[1][0] ) );
  DFFX1 \order_reg[0][0]  ( .D(n568), .CK(CLK), .Q(\order[0][0] ), .QN(n243)
         );
  DFFQX2 \order_pointer_reg[2]  ( .D(n692), .CK(CLK), .Q(N224) );
  DFFQX2 \step_reg[0]  ( .D(n656), .CK(CLK), .Q(N369) );
  DFFQX2 \exchange_position_reg[2]  ( .D(n690), .CK(CLK), .Q(N227) );
  DFFQX1 \order_reg[2][1]  ( .D(n672), .CK(CLK), .Q(\order[2][1] ) );
  DFFQX1 \order_reg[5][1]  ( .D(n681), .CK(CLK), .Q(\order[5][1] ) );
  DFFQX1 \order_reg[4][1]  ( .D(n678), .CK(CLK), .Q(\order[4][1] ) );
  DFFQX1 \order_reg[2][2]  ( .D(n671), .CK(CLK), .Q(\order[2][2] ) );
  DFFQX1 \order_reg[5][2]  ( .D(n680), .CK(CLK), .Q(\order[5][2] ) );
  DFFQX1 \order_reg[4][2]  ( .D(n677), .CK(CLK), .Q(\order[4][2] ) );
  DFFQX2 \exchange_position_reg[0]  ( .D(n666), .CK(CLK), .Q(N225) );
  DFFQXL \adder1_reg[6]  ( .D(n584), .CK(CLK), .Q(adder1[6]) );
  DFFQXL \adder2_reg[6]  ( .D(n598), .CK(CLK), .Q(adder2[6]) );
  DFFQXL \adder1_reg[5]  ( .D(n585), .CK(CLK), .Q(adder1[5]) );
  DFFQXL \adder2_reg[5]  ( .D(n599), .CK(CLK), .Q(adder2[5]) );
  DFFQXL \adder1_reg[4]  ( .D(n586), .CK(CLK), .Q(adder1[4]) );
  DFFQXL \adder2_reg[4]  ( .D(n600), .CK(CLK), .Q(adder2[4]) );
  DFFQX1 \adder1_reg[3]  ( .D(n587), .CK(CLK), .Q(adder1[3]) );
  DFFQX1 \adder1_reg[2]  ( .D(n588), .CK(CLK), .Q(adder1[2]) );
  DFFQX1 \adder2_reg[2]  ( .D(n602), .CK(CLK), .Q(adder2[2]) );
  DFFQX1 \state_reg[2]  ( .D(N349), .CK(CLK), .Q(state[2]) );
  DFFQX1 \adder2_reg[1]  ( .D(n603), .CK(CLK), .Q(adder2[1]) );
  DFFQX1 \adder1_reg[1]  ( .D(n589), .CK(CLK), .Q(adder1[1]) );
  DFFQX1 \adder2_reg[0]  ( .D(n604), .CK(CLK), .Q(adder2[0]) );
  DFFNSRX2 \J_reg[2]  ( .D(n667), .CKN(CLK), .SN(1'b1), .RN(1'b1), .Q(n931), 
        .QN(n167) );
  DFFQX1 \MinCost_reg[4]  ( .D(n577), .CK(CLK), .Q(n943) );
  DFFQX1 \MinCost_reg[3]  ( .D(n578), .CK(CLK), .Q(n944) );
  DFFQX1 \MatchCount_reg[0]  ( .D(n572), .CK(CLK), .Q(n937) );
  DFFQX1 \MinCost_reg[1]  ( .D(n580), .CK(CLK), .Q(n946) );
  DFFQX1 \MinCost_reg[0]  ( .D(n581), .CK(CLK), .Q(n947) );
  DFFQX1 \MinCost_reg[9]  ( .D(n823), .CK(CLK), .Q(n938) );
  DFFQX1 \MinCost_reg[2]  ( .D(n579), .CK(CLK), .Q(n945) );
  DFFQX1 \MinCost_reg[6]  ( .D(n575), .CK(CLK), .Q(n941) );
  DFFQX1 \MinCost_reg[7]  ( .D(n574), .CK(CLK), .Q(n940) );
  DFFQX1 \MatchCount_reg[2]  ( .D(n570), .CK(CLK), .Q(n935) );
  DFFQX1 Valid_reg ( .D(n566), .CK(CLK), .Q(n948) );
  DFFQX1 \MinCost_reg[8]  ( .D(n573), .CK(CLK), .Q(n939) );
  DFFNSRX2 \W_reg[2]  ( .D(n657), .CKN(CLK), .SN(1'b1), .RN(1'b1), .Q(n928), 
        .QN(n171) );
  DFFQX1 \MinCost_reg[5]  ( .D(n576), .CK(CLK), .Q(n942) );
  DFFQX1 \MatchCount_reg[1]  ( .D(n571), .CK(CLK), .Q(n936) );
  DFFX1 \MatchCount_reg[3]  ( .D(n569), .CK(CLK), .Q(n934), .QN(n221) );
  DFFNSRX2 \J_reg[1]  ( .D(n660), .CKN(CLK), .SN(1'b1), .RN(1'b1), .Q(n932), 
        .QN(n168) );
  DFFQX2 \state_reg[1]  ( .D(N348), .CK(CLK), .Q(n716) );
  DFFQX1 \exchange_position_reg[1]  ( .D(n665), .CK(CLK), .Q(N226) );
  DFFQX4 \order_pointer_reg[0]  ( .D(n693), .CK(CLK), .Q(N222) );
  DFFQX4 \order_pointer_reg[1]  ( .D(n691), .CK(CLK), .Q(N223) );
  DFFQX1 \state_reg[0]  ( .D(N347), .CK(CLK), .Q(state[0]) );
  DFFNSRX1 \W_reg[0]  ( .D(n659), .CKN(CLK), .SN(1'b1), .RN(1'b1), .Q(n930), 
        .QN(n174) );
  DFFNSRX1 \J_reg[0]  ( .D(n661), .CKN(CLK), .SN(1'b1), .RN(1'b1), .Q(n933), 
        .QN(n170) );
  OAI221X1 U599 ( .A0(n921), .A1(n331), .B0(n922), .B1(n374), .C0(n409), .Y(
        n407) );
  INVX3 U600 ( .A(n378), .Y(n840) );
  INVX3 U601 ( .A(n329), .Y(n843) );
  INVX3 U602 ( .A(n370), .Y(n842) );
  NOR4X2 U603 ( .A(n807), .B(n806), .C(n805), .D(n804), .Y(N483) );
  NOR2X1 U604 ( .A(n815), .B(n943), .Y(n804) );
  CLKBUFX3 U605 ( .A(n377), .Y(n694) );
  INVX3 U606 ( .A(n373), .Y(n841) );
  NAND2X2 U607 ( .A(n720), .B(n721), .Y(n373) );
  INVX3 U608 ( .A(n366), .Y(n846) );
  CLKINVX1 U609 ( .A(n935), .Y(n927) );
  OAI222XL U610 ( .A0(n550), .A1(n881), .B0(N224), .B1(n551), .C0(n537), .C1(
        n244), .Y(n539) );
  NAND3X2 U611 ( .A(n716), .B(n889), .C(state[0]), .Y(n485) );
  CLKINVX1 U612 ( .A(n946), .Y(n808) );
  CLKINVX1 U613 ( .A(n945), .Y(n809) );
  CLKINVX1 U614 ( .A(n944), .Y(n810) );
  CLKINVX1 U615 ( .A(n941), .Y(n811) );
  CLKINVX1 U616 ( .A(n940), .Y(n812) );
  CLKINVX1 U617 ( .A(n938), .Y(n813) );
  INVX3 U618 ( .A(state[2]), .Y(n889) );
  CLKINVX1 U619 ( .A(n936), .Y(n926) );
  NAND2X1 U620 ( .A(n719), .B(n730), .Y(n317) );
  CLKINVX1 U621 ( .A(n937), .Y(n925) );
  OAI221X1 U622 ( .A0(n457), .A1(n411), .B0(n447), .B1(n469), .C0(n731), .Y(
        n466) );
  OAI221X1 U623 ( .A0(n411), .A1(n446), .B0(n447), .B1(n474), .C0(n479), .Y(
        n472) );
  OAI221X1 U624 ( .A0(n445), .A1(n446), .B0(n447), .B1(n439), .C0(n832), .Y(
        n436) );
  OAI221X1 U625 ( .A0(n457), .A1(n480), .B0(n447), .B1(n484), .C0(n731), .Y(
        n482) );
  OR2X2 U626 ( .A(n330), .B(n375), .Y(n721) );
  OAI21X2 U627 ( .A0(W[1]), .A1(n367), .B0(n368), .Y(n366) );
  INVX4 U628 ( .A(N223), .Y(n882) );
  OAI211X1 U629 ( .A0(n539), .A1(n868), .B0(n540), .C0(n541), .Y(n529) );
  INVX4 U630 ( .A(N222), .Y(n873) );
  OA21XL U631 ( .A0(n822), .A1(n935), .B0(n297), .Y(n296) );
  NAND3X1 U632 ( .A(n930), .B(n398), .C(n928), .Y(n377) );
  NAND2X4 U633 ( .A(n398), .B(n174), .Y(n399) );
  INVXL U634 ( .A(n716), .Y(n717) );
  OAI22X1 U635 ( .A0(n881), .A1(n739), .B0(N224), .B1(n738), .Y(N449) );
  OAI22X1 U636 ( .A0(n888), .A1(n773), .B0(n727), .B1(n772), .Y(N626) );
  INVX12 U637 ( .A(n168), .Y(J[1]) );
  OAI22X1 U638 ( .A0(n751), .A1(n881), .B0(N224), .B1(n750), .Y(N447) );
  OAI22X1 U639 ( .A0(n888), .A1(n777), .B0(n727), .B1(n776), .Y(N625) );
  BUFX12 U640 ( .A(n934), .Y(MatchCount[3]) );
  INVX12 U641 ( .A(n926), .Y(MatchCount[1]) );
  BUFX12 U642 ( .A(n942), .Y(MinCost[5]) );
  NOR2XL U643 ( .A(n816), .B(n942), .Y(n796) );
  INVX12 U644 ( .A(n171), .Y(W[2]) );
  INVX12 U645 ( .A(n170), .Y(J[0]) );
  OAI221XL U646 ( .A0(n895), .A1(n390), .B0(n170), .B1(n391), .C0(n406), .Y(
        n661) );
  BUFX16 U647 ( .A(n939), .Y(MinCost[8]) );
  NOR2XL U648 ( .A(n817), .B(MinCost[8]), .Y(n789) );
  AOI32XL U649 ( .A0(n800), .A1(n715), .A2(n799), .B0(MinCost[8]), .B1(n817), 
        .Y(n801) );
  OAI22X1 U650 ( .A0(n785), .A1(n888), .B0(n727), .B1(n784), .Y(N624) );
  BUFX12 U651 ( .A(n948), .Y(Valid) );
  OAI22X1 U652 ( .A0(n902), .A1(n755), .B0(N227), .B1(n754), .Y(N452) );
  INVX12 U653 ( .A(n927), .Y(MatchCount[2]) );
  INVX12 U654 ( .A(n812), .Y(MinCost[7]) );
  INVX12 U655 ( .A(n811), .Y(MinCost[6]) );
  INVX12 U656 ( .A(n809), .Y(MinCost[2]) );
  INVX12 U657 ( .A(n813), .Y(MinCost[9]) );
  OAI22X1 U658 ( .A0(n881), .A1(n743), .B0(N224), .B1(n742), .Y(N448) );
  BUFX16 U659 ( .A(n947), .Y(MinCost[0]) );
  NOR2BXL U660 ( .AN(MinCost[0]), .B(total_cost[0]), .Y(n791) );
  INVX12 U661 ( .A(n808), .Y(MinCost[1]) );
  AO21XL U662 ( .A0(n814), .A1(n791), .B0(n946), .Y(n790) );
  INVX12 U663 ( .A(n925), .Y(MatchCount[0]) );
  INVX12 U664 ( .A(n810), .Y(MinCost[3]) );
  NOR2BXL U665 ( .AN(total_cost[3]), .B(n944), .Y(n805) );
  BUFX12 U666 ( .A(n943), .Y(MinCost[4]) );
  INVX12 U667 ( .A(n167), .Y(J[2]) );
  INVX12 U668 ( .A(n174), .Y(W[0]) );
  OAI22X1 U669 ( .A0(total_cost[9]), .A1(n813), .B0(n818), .B1(n801), .Y(N482)
         );
  OR2X1 U670 ( .A(n306), .B(n825), .Y(n719) );
  OR2XL U671 ( .A(n817), .B(MinCost[8]), .Y(n715) );
  INVX3 U672 ( .A(n399), .Y(n844) );
  OAI211XL U673 ( .A0(n718), .A1(n493), .B0(n562), .C0(n563), .Y(N347) );
  NAND2X2 U674 ( .A(n928), .B(n844), .Y(n374) );
  NAND2X2 U675 ( .A(n365), .B(n850), .Y(n320) );
  INVX1 U676 ( .A(n380), .Y(n851) );
  INVXL U677 ( .A(n718), .Y(n537) );
  OAI221XL U678 ( .A0(n246), .A1(n331), .B0(n916), .B1(n374), .C0(n405), .Y(
        n402) );
  OAI221XL U679 ( .A0(n244), .A1(n331), .B0(n909), .B1(n374), .C0(n434), .Y(
        n431) );
  INVXL U680 ( .A(n330), .Y(n858) );
  OR2X1 U681 ( .A(W[1]), .B(n374), .Y(n720) );
  OA21XL U682 ( .A0(n299), .A1(n822), .B0(n298), .Y(n297) );
  INVX3 U683 ( .A(n317), .Y(n824) );
  CLKINVX1 U684 ( .A(n376), .Y(n848) );
  CLKINVX1 U685 ( .A(n379), .Y(n847) );
  INVX1 U686 ( .A(n371), .Y(n845) );
  CLKBUFX3 U687 ( .A(n319), .Y(n723) );
  NAND2X1 U688 ( .A(n385), .B(n730), .Y(n380) );
  NAND2X1 U689 ( .A(total_cost[2]), .B(n809), .Y(n802) );
  CLKINVX1 U690 ( .A(total_cost[8]), .Y(n817) );
  CLKINVX1 U691 ( .A(RST), .Y(n732) );
  NAND4XL U692 ( .A(n301), .B(n299), .C(n298), .D(n927), .Y(n300) );
  NAND3BXL U693 ( .AN(N482), .B(n803), .C(n802), .Y(n806) );
  INVXL U694 ( .A(total_cost[7]), .Y(n826) );
  NOR2X2 U695 ( .A(n546), .B(N224), .Y(n718) );
  NAND3XL U696 ( .A(n298), .B(n221), .C(n299), .Y(n295) );
  INVX3 U697 ( .A(N224), .Y(n881) );
  NAND2XL U698 ( .A(adder1[6]), .B(n723), .Y(n321) );
  NAND2XL U699 ( .A(adder1[5]), .B(n723), .Y(n322) );
  NAND2XL U700 ( .A(adder1[4]), .B(n723), .Y(n323) );
  NAND2XL U701 ( .A(adder1[3]), .B(n723), .Y(n324) );
  NAND2XL U702 ( .A(adder1[2]), .B(n723), .Y(n325) );
  NAND2XL U703 ( .A(adder1[1]), .B(n723), .Y(n326) );
  NAND2XL U704 ( .A(adder1[0]), .B(n723), .Y(n327) );
  OAI211XL U705 ( .A0(n320), .A1(n116), .B0(n359), .C0(n360), .Y(n604) );
  NAND2XL U706 ( .A(adder2[0]), .B(n723), .Y(n360) );
  OAI211XL U707 ( .A0(n320), .A1(n110), .B0(n332), .C0(n333), .Y(n598) );
  NAND2XL U708 ( .A(adder2[6]), .B(n723), .Y(n333) );
  OAI211XL U709 ( .A0(n320), .A1(n111), .B0(n339), .C0(n340), .Y(n599) );
  NAND2XL U710 ( .A(adder2[5]), .B(n723), .Y(n340) );
  OAI211XL U711 ( .A0(n320), .A1(n112), .B0(n343), .C0(n344), .Y(n600) );
  NAND2XL U712 ( .A(adder2[4]), .B(n723), .Y(n344) );
  OAI211XL U713 ( .A0(n320), .A1(n113), .B0(n347), .C0(n348), .Y(n601) );
  NAND2XL U714 ( .A(adder2[3]), .B(n723), .Y(n348) );
  OAI211XL U715 ( .A0(n320), .A1(n114), .B0(n351), .C0(n352), .Y(n602) );
  NAND2XL U716 ( .A(adder2[2]), .B(n723), .Y(n352) );
  OAI211XL U717 ( .A0(n320), .A1(n115), .B0(n355), .C0(n356), .Y(n603) );
  NAND2XL U718 ( .A(adder2[1]), .B(n723), .Y(n356) );
  OAI32XL U719 ( .A0(n385), .A1(finish_nextorder), .A2(n729), .B0(n386), .B1(
        n380), .Y(n384) );
  OAI32XL U720 ( .A0(n380), .A1(step[1]), .A2(n892), .B0(n852), .B1(n894), .Y(
        n655) );
  NOR2BXL U721 ( .AN(total_cost[0]), .B(MinCost[0]), .Y(n786) );
  NAND2X1 U722 ( .A(n886), .B(n888), .Y(n445) );
  OA22XL U723 ( .A0(n367), .A1(n910), .B0(n694), .B1(n911), .Y(n434) );
  OA22XL U724 ( .A0(n367), .A1(n917), .B0(n694), .B1(n919), .Y(n405) );
  INVX1 U725 ( .A(n724), .Y(n768) );
  CLKINVX1 U726 ( .A(N228), .Y(n734) );
  AOI211XL U727 ( .A0(n526), .A1(n527), .B0(n429), .C0(n528), .Y(n525) );
  AOI211XL U728 ( .A0(n533), .A1(n526), .B0(n429), .C0(n534), .Y(n532) );
  NOR3XL U729 ( .A(n881), .B(n872), .C(n504), .Y(n534) );
  NAND2XL U730 ( .A(n509), .B(n895), .Y(n505) );
  AO22XL U731 ( .A0(n478), .A1(n880), .B0(n877), .B1(N626), .Y(n444) );
  INVX1 U732 ( .A(n724), .Y(n908) );
  NAND2X1 U733 ( .A(n907), .B(n902), .Y(n460) );
  AND3X8 U734 ( .A(n849), .B(n435), .C(start_getdata), .Y(n398) );
  OA22XL U735 ( .A0(n367), .A1(n923), .B0(n694), .B1(n262), .Y(n409) );
  INVX1 U736 ( .A(state[0]), .Y(n879) );
  NAND3BX1 U737 ( .AN(start_getdata), .B(n435), .C(n849), .Y(n391) );
  OAI21XL U738 ( .A0(N369), .A1(n380), .B0(n853), .Y(n382) );
  OAI32XL U739 ( .A0(n536), .A1(N222), .A2(n729), .B0(n873), .B1(n859), .Y(
        n693) );
  AO21XL U740 ( .A0(n419), .A1(n901), .B0(n429), .Y(n502) );
  OAI222X1 U741 ( .A0(n496), .A1(n243), .B0(n518), .B1(n414), .C0(n519), .C1(
        n888), .Y(n478) );
  AOI31XL U742 ( .A0(state[0]), .A1(n386), .A2(n564), .B0(n420), .Y(n562) );
  NOR3XL U743 ( .A(n729), .B(state[2]), .C(n716), .Y(n564) );
  OAI211XL U744 ( .A0(n908), .A1(n423), .B0(n424), .C0(n849), .Y(n421) );
  AOI211XL U745 ( .A0(n716), .A1(n553), .B0(n879), .C0(state[2]), .Y(n552) );
  NAND3X1 U746 ( .A(n879), .B(n717), .C(state[2]), .Y(n410) );
  OAI222X1 U747 ( .A0(n496), .A1(n241), .B0(n521), .B1(n414), .C0(n522), .C1(
        n888), .Y(n490) );
  NAND2XL U748 ( .A(n561), .B(n889), .Y(n560) );
  NAND2XL U749 ( .A(N223), .B(N222), .Y(n535) );
  NAND3X1 U750 ( .A(n879), .B(n889), .C(n716), .Y(n504) );
  NAND2X1 U751 ( .A(finish_nextorder), .B(n878), .Y(n306) );
  CLKINVX1 U752 ( .A(N369), .Y(n892) );
  INVX1 U753 ( .A(N225), .Y(n906) );
  NAND2XL U754 ( .A(N225), .B(n724), .Y(n465) );
  NOR2X1 U755 ( .A(n724), .B(N225), .Y(n425) );
  NAND3X1 U756 ( .A(N227), .B(n908), .C(N225), .Y(n474) );
  NAND3X1 U757 ( .A(N227), .B(n906), .C(n724), .Y(n484) );
  BUFX16 U758 ( .A(n929), .Y(W[1]) );
  OAI22XL U759 ( .A0(n841), .A1(n867), .B0(n137), .B1(n373), .Y(n632) );
  OAI22XL U760 ( .A0(n841), .A1(n861), .B0(n131), .B1(n373), .Y(n631) );
  OAI22XL U761 ( .A0(n841), .A1(n862), .B0(n132), .B1(n373), .Y(n630) );
  OAI22XL U762 ( .A0(n841), .A1(n863), .B0(n133), .B1(n373), .Y(n629) );
  OAI22XL U763 ( .A0(n841), .A1(n864), .B0(n134), .B1(n373), .Y(n628) );
  OAI22XL U764 ( .A0(n841), .A1(n865), .B0(n135), .B1(n373), .Y(n627) );
  OAI22XL U765 ( .A0(n841), .A1(n866), .B0(n136), .B1(n373), .Y(n626) );
  OAI32XL U766 ( .A0(n386), .A1(n716), .A2(n879), .B0(n718), .B1(n717), .Y(
        n561) );
  NAND2X8 U767 ( .A(n880), .B(n718), .Y(n449) );
  NAND2X1 U768 ( .A(n369), .B(n170), .Y(n330) );
  NAND2XL U769 ( .A(n931), .B(n168), .Y(n375) );
  CLKINVX1 U770 ( .A(n429), .Y(n849) );
  CLKINVX1 U771 ( .A(n369), .Y(n857) );
  CLKINVX1 U772 ( .A(n449), .Y(n871) );
  CLKINVX1 U773 ( .A(n301), .Y(n822) );
  NOR2X1 U774 ( .A(n445), .B(n733), .Y(n392) );
  CLKINVX1 U775 ( .A(n495), .Y(n855) );
  CLKINVX1 U776 ( .A(n458), .Y(n834) );
  CLKINVX1 U777 ( .A(n493), .Y(n856) );
  NAND2X1 U778 ( .A(n901), .B(n293), .Y(n292) );
  NAND2X1 U779 ( .A(n495), .B(n493), .Y(n461) );
  CLKINVX1 U780 ( .A(n450), .Y(n833) );
  OAI22XL U781 ( .A0(n392), .A1(n495), .B0(n729), .B1(n449), .Y(N349) );
  NAND2X1 U782 ( .A(n733), .B(n885), .Y(n496) );
  CLKINVX1 U783 ( .A(n445), .Y(n885) );
  CLKINVX1 U784 ( .A(n418), .Y(n884) );
  CLKINVX1 U785 ( .A(n546), .Y(n872) );
  NOR2X2 U786 ( .A(n435), .B(n729), .Y(n369) );
  NAND2X1 U787 ( .A(n871), .B(n730), .Y(n390) );
  NOR2X1 U788 ( .A(n304), .B(n729), .Y(n301) );
  CLKINVX1 U789 ( .A(n524), .Y(n859) );
  NAND2X1 U790 ( .A(n718), .B(n529), .Y(n289) );
  INVX3 U791 ( .A(n723), .Y(n850) );
  NAND2X2 U792 ( .A(n850), .B(n328), .Y(n318) );
  NAND2X1 U793 ( .A(n877), .B(n730), .Y(n495) );
  NAND2X1 U794 ( .A(n419), .B(n417), .Y(n415) );
  OR2X1 U795 ( .A(n420), .B(n855), .Y(n417) );
  INVX3 U796 ( .A(n731), .Y(n729) );
  NAND2X1 U797 ( .A(n878), .B(n417), .Y(n416) );
  CLKINVX1 U798 ( .A(n436), .Y(n831) );
  OAI221X1 U799 ( .A0(n414), .A1(n446), .B0(n447), .B1(n460), .C0(n835), .Y(
        n458) );
  CLKINVX1 U800 ( .A(n464), .Y(n835) );
  OAI31XL U801 ( .A0(n888), .A1(n449), .A2(n397), .B0(n731), .Y(n464) );
  AOI22X1 U802 ( .A0(n503), .A1(n880), .B0(n877), .B1(n392), .Y(n423) );
  CLKINVX1 U803 ( .A(n472), .Y(n860) );
  NAND2X1 U804 ( .A(n880), .B(n730), .Y(n493) );
  NAND2X1 U805 ( .A(n734), .B(n886), .Y(n397) );
  INVX3 U806 ( .A(n734), .Y(n733) );
  NAND3X1 U807 ( .A(n293), .B(n494), .C(n461), .Y(n290) );
  NOR2BX1 U808 ( .AN(n461), .B(n897), .Y(n438) );
  NOR2BX1 U809 ( .AN(n461), .B(n895), .Y(n456) );
  NOR2BX1 U810 ( .AN(n461), .B(n896), .Y(n442) );
  CLKINVX1 U811 ( .A(n466), .Y(n836) );
  OAI221X1 U812 ( .A0(n457), .A1(n414), .B0(n447), .B1(n452), .C0(n731), .Y(
        n450) );
  CLKINVX1 U813 ( .A(n482), .Y(n837) );
  CLKINVX1 U814 ( .A(n488), .Y(n838) );
  CLKINVX1 U815 ( .A(n480), .Y(n887) );
  CLKINVX1 U816 ( .A(n422), .Y(n839) );
  NOR3X1 U817 ( .A(n529), .B(n729), .C(n876), .Y(N822) );
  NAND2X1 U818 ( .A(n733), .B(n886), .Y(n418) );
  NOR2X1 U819 ( .A(n886), .B(n733), .Y(n516) );
  AND2X2 U820 ( .A(n445), .B(n480), .Y(n722) );
  CLKINVX1 U821 ( .A(n460), .Y(n900) );
  INVX3 U822 ( .A(n383), .Y(n891) );
  CLKINVX1 U823 ( .A(n494), .Y(n901) );
  NAND2X1 U824 ( .A(n882), .B(n873), .Y(n546) );
  INVX1 U825 ( .A(N452), .Y(n895) );
  INVX3 U826 ( .A(n485), .Y(n880) );
  NAND3X1 U827 ( .A(n717), .B(n889), .C(n879), .Y(n435) );
  OAI222XL U828 ( .A0(n913), .A1(n374), .B0(n912), .B1(n331), .C0(n914), .C1(
        n367), .Y(n433) );
  OAI222XL U829 ( .A0(n920), .A1(n374), .B0(n918), .B1(n331), .C0(n915), .C1(
        n367), .Y(n404) );
  CLKINVX1 U830 ( .A(N451), .Y(n896) );
  OAI21X2 U831 ( .A0(n304), .A1(n306), .B0(n824), .Y(n298) );
  INVXL U832 ( .A(N482), .Y(n825) );
  OAI21XL U833 ( .A0(n925), .A1(n298), .B0(n305), .Y(n572) );
  OAI211XL U834 ( .A0(N482), .A1(n925), .B0(n298), .C0(n731), .Y(n305) );
  OAI21XL U835 ( .A0(n297), .A1(n927), .B0(n300), .Y(n570) );
  NAND2X1 U836 ( .A(N483), .B(n825), .Y(n304) );
  NOR2X1 U837 ( .A(n398), .B(n369), .Y(n387) );
  AOI211X1 U838 ( .A0(n289), .A1(n538), .B0(n880), .C0(n729), .Y(n524) );
  NAND3XL U839 ( .A(n869), .B(n543), .C(N448), .Y(n540) );
  OAI221XL U840 ( .A0(N449), .A1(n542), .B0(N448), .B1(n869), .C0(n543), .Y(
        n541) );
  CLKINVX1 U841 ( .A(n547), .Y(n869) );
  CLKINVX1 U842 ( .A(total_cost[4]), .Y(n815) );
  INVX3 U843 ( .A(n728), .Y(n886) );
  OAI22XL U844 ( .A0(n881), .A1(n859), .B0(n524), .B1(n532), .Y(n692) );
  XOR2X1 U845 ( .A(n881), .B(n535), .Y(n533) );
  OAI22XL U846 ( .A0(n882), .A1(n859), .B0(n524), .B1(n525), .Y(n691) );
  NOR3BXL U847 ( .AN(n529), .B(n527), .C(n504), .Y(n528) );
  NAND2X1 U848 ( .A(n530), .B(n531), .Y(n527) );
  OAI21XL U849 ( .A0(n365), .A1(n328), .B0(n851), .Y(n319) );
  CLKBUFX3 U850 ( .A(n732), .Y(n730) );
  OAI221XL U851 ( .A0(n410), .A1(n411), .B0(n412), .B1(n888), .C0(n854), .Y(
        n662) );
  CLKINVX1 U852 ( .A(n413), .Y(n854) );
  OAI32X1 U853 ( .A0(n414), .A1(n734), .A2(n415), .B0(n416), .B1(n881), .Y(
        n413) );
  CLKINVX1 U854 ( .A(total_cost[5]), .Y(n816) );
  OAI22XL U855 ( .A0(n921), .A1(n436), .B0(n831), .B1(n443), .Y(n670) );
  AOI221XL U856 ( .A0(n898), .A1(n444), .B0(N452), .B1(n439), .C0(n729), .Y(
        n443) );
  CLKINVX1 U857 ( .A(n439), .Y(n898) );
  CLKINVX1 U858 ( .A(n448), .Y(n832) );
  OAI31XL U859 ( .A0(n449), .A1(n733), .A2(n414), .B0(n731), .Y(n448) );
  INVX3 U860 ( .A(n727), .Y(n888) );
  OAI22XL U861 ( .A0(n918), .A1(n458), .B0(n834), .B1(n462), .Y(n675) );
  OAI22XL U862 ( .A0(n912), .A1(n458), .B0(n834), .B1(n459), .Y(n674) );
  AOI2BB2X1 U863 ( .B0(n438), .B1(n460), .A0N(n440), .A1N(n460), .Y(n459) );
  CLKINVX1 U864 ( .A(total_cost[1]), .Y(n814) );
  OAI211X1 U865 ( .A0(n505), .A1(n506), .B0(n507), .C0(n508), .Y(n503) );
  OAI21XL U866 ( .A0(N448), .A1(n896), .B0(N449), .Y(n506) );
  AOI32XL U867 ( .A0(n509), .A1(n896), .A2(N448), .B0(N447), .B1(n897), .Y(
        n508) );
  OAI21XL U868 ( .A0(n868), .A1(n490), .B0(n510), .Y(n507) );
  OAI21XL U869 ( .A0(N447), .A1(n883), .B0(n511), .Y(n510) );
  OAI21XL U870 ( .A0(n512), .A1(n476), .B0(n513), .Y(n511) );
  OAI2BB1XL U871 ( .A0N(n476), .A1N(n512), .B0(N448), .Y(n513) );
  NOR2X1 U872 ( .A(n306), .B(n729), .Y(n420) );
  AOI22X1 U873 ( .A0(n855), .A1(N624), .B0(n490), .B1(n856), .Y(n440) );
  AOI22X1 U874 ( .A0(n855), .A1(N625), .B0(n476), .B1(n856), .Y(n291) );
  AOI22X1 U875 ( .A0(n855), .A1(N626), .B0(n478), .B1(n856), .Y(n294) );
  INVX1 U876 ( .A(N447), .Y(n868) );
  NAND2X1 U877 ( .A(n539), .B(n868), .Y(n543) );
  OAI21X1 U878 ( .A0(n485), .A1(n503), .B0(n504), .Y(n426) );
  OAI22XL U879 ( .A0(n924), .A1(n466), .B0(n836), .B1(n471), .Y(n679) );
  AOI2BB2X1 U880 ( .B0(n456), .B1(n469), .A0N(n294), .A1N(n469), .Y(n471) );
  OAI22XL U881 ( .A0(n915), .A1(n466), .B0(n836), .B1(n470), .Y(n678) );
  AOI2BB2X1 U882 ( .B0(n442), .B1(n469), .A0N(n291), .A1N(n469), .Y(n470) );
  OAI22XL U883 ( .A0(n910), .A1(n450), .B0(n833), .B1(n451), .Y(n671) );
  AOI2BB2X1 U884 ( .B0(n438), .B1(n452), .A0N(n440), .A1N(n452), .Y(n451) );
  OAI22XL U885 ( .A0(n923), .A1(n450), .B0(n833), .B1(n455), .Y(n673) );
  AOI2BB2X1 U886 ( .B0(n456), .B1(n452), .A0N(n294), .A1N(n452), .Y(n455) );
  OAI22XL U887 ( .A0(n916), .A1(n472), .B0(n860), .B1(n475), .Y(n681) );
  AOI2BB2X1 U888 ( .B0(n442), .B1(n474), .A0N(n291), .A1N(n474), .Y(n475) );
  OA21XL U889 ( .A0(N228), .A1(n410), .B0(n417), .Y(n412) );
  AOI31X1 U890 ( .A0(n871), .A1(n735), .A2(n887), .B0(n729), .Y(n479) );
  OAI22XL U891 ( .A0(n922), .A1(n472), .B0(n860), .B1(n477), .Y(n682) );
  AOI221XL U892 ( .A0(n904), .A1(n444), .B0(N452), .B1(n474), .C0(RST), .Y(
        n477) );
  OAI22XL U893 ( .A0(n909), .A1(n472), .B0(n860), .B1(n473), .Y(n680) );
  OAI22XL U894 ( .A0(n914), .A1(n466), .B0(n836), .B1(n467), .Y(n677) );
  CLKINVX1 U895 ( .A(n469), .Y(n905) );
  OAI22XL U896 ( .A0(n911), .A1(n482), .B0(n837), .B1(n483), .Y(n683) );
  OAI22XL U897 ( .A0(n919), .A1(n482), .B0(n837), .B1(n486), .Y(n684) );
  OAI22XL U898 ( .A0(n917), .A1(n450), .B0(n833), .B1(n453), .Y(n672) );
  CLKINVX1 U899 ( .A(n452), .Y(n899) );
  OAI222XL U900 ( .A0(n882), .A1(n416), .B0(n418), .B1(n415), .C0(n886), .C1(
        n412), .Y(n664) );
  OAI222XL U901 ( .A0(n873), .A1(n416), .B0(n733), .B1(n415), .C0(n735), .C1(
        n417), .Y(n663) );
  OAI21XL U902 ( .A0(n380), .A1(n891), .B0(n381), .Y(n654) );
  OAI21XL U903 ( .A0(n851), .A1(n382), .B0(n725), .Y(n381) );
  OAI31X1 U904 ( .A0(n465), .A1(n447), .A2(n902), .B0(n731), .Y(n488) );
  OAI22XL U905 ( .A0(n920), .A1(n488), .B0(n838), .B1(n491), .Y(n687) );
  AOI221XL U906 ( .A0(n880), .A1(n476), .B0(N625), .B1(n877), .C0(RST), .Y(
        n491) );
  OAI22XL U907 ( .A0(n913), .A1(n488), .B0(n838), .B1(n489), .Y(n686) );
  AOI221XL U908 ( .A0(n880), .A1(n490), .B0(N624), .B1(n877), .C0(n729), .Y(
        n489) );
  NAND2X1 U909 ( .A(n727), .B(n728), .Y(n480) );
  NAND2X1 U910 ( .A(n733), .B(n728), .Y(n396) );
  NAND2X1 U911 ( .A(n485), .B(n529), .Y(n526) );
  NAND4X1 U912 ( .A(n410), .B(n485), .C(n306), .D(n731), .Y(n422) );
  NAND2BXL U913 ( .AN(n478), .B(N449), .Y(n512) );
  CLKBUFX3 U914 ( .A(n732), .Y(n731) );
  AO22XL U915 ( .A0(n476), .A1(n880), .B0(n877), .B1(N625), .Y(n454) );
  OAI2BB2X1 U916 ( .B0(n883), .B1(n485), .A0N(n877), .A1N(N624), .Y(n468) );
  CLKINVX1 U917 ( .A(N228), .Y(n735) );
  CLKINVX1 U918 ( .A(n530), .Y(n870) );
  CLKINVX1 U919 ( .A(n531), .Y(n874) );
  CLKINVX1 U920 ( .A(n535), .Y(n875) );
  CLKINVX1 U921 ( .A(n490), .Y(n883) );
  NAND2X2 U922 ( .A(n728), .B(n888), .Y(n414) );
  NOR2X2 U923 ( .A(n871), .B(n481), .Y(n447) );
  NOR2X1 U924 ( .A(n926), .B(n925), .Y(n299) );
  AOI22X1 U925 ( .A0(n734), .A1(n481), .B0(n733), .B1(n871), .Y(n457) );
  NAND2BX1 U926 ( .AN(n725), .B(n894), .Y(n555) );
  NOR2X1 U927 ( .A(n410), .B(n392), .Y(n419) );
  NAND2X1 U928 ( .A(n481), .B(n733), .Y(n446) );
  CLKINVX1 U929 ( .A(n504), .Y(n878) );
  INVX3 U930 ( .A(n410), .Y(n877) );
  NAND2BX2 U931 ( .AN(n386), .B(n892), .Y(n337) );
  NAND4X1 U932 ( .A(n336), .B(n338), .C(n337), .D(n559), .Y(n328) );
  NOR3X1 U933 ( .A(n383), .B(n363), .C(n364), .Y(n559) );
  NOR3X1 U934 ( .A(n894), .B(n725), .C(n892), .Y(n383) );
  NAND3X2 U935 ( .A(n892), .B(n894), .C(n725), .Y(n338) );
  CLKINVX1 U936 ( .A(n465), .Y(n907) );
  NAND2X1 U937 ( .A(n425), .B(n902), .Y(n494) );
  CLKINVX1 U938 ( .A(n484), .Y(n903) );
  NAND3X2 U939 ( .A(n906), .B(n902), .C(n724), .Y(n452) );
  CLKINVX1 U940 ( .A(total_cost[6]), .Y(n827) );
  CLKINVX1 U941 ( .A(n474), .Y(n904) );
  NAND2X1 U942 ( .A(n727), .B(n886), .Y(n411) );
  CLKINVX1 U943 ( .A(n364), .Y(n893) );
  CLKINVX1 U944 ( .A(n363), .Y(n890) );
  CLKINVX1 U945 ( .A(n538), .Y(n876) );
  CLKINVX1 U946 ( .A(total_cost[3]), .Y(n828) );
  CLKINVX1 U947 ( .A(total_cost[2]), .Y(n829) );
  CLKINVX1 U948 ( .A(total_cost[0]), .Y(n830) );
  OAI32X4 U949 ( .A0(n167), .A1(n330), .A2(n168), .B0(n172), .B1(n374), .Y(
        n378) );
  OAI22XL U950 ( .A0(n840), .A1(n867), .B0(n151), .B1(n378), .Y(n646) );
  OAI22XL U951 ( .A0(n840), .A1(n861), .B0(n145), .B1(n378), .Y(n645) );
  OAI22XL U952 ( .A0(n840), .A1(n862), .B0(n146), .B1(n378), .Y(n644) );
  OAI22XL U953 ( .A0(n840), .A1(n863), .B0(n147), .B1(n378), .Y(n643) );
  OAI22XL U954 ( .A0(n840), .A1(n864), .B0(n148), .B1(n378), .Y(n642) );
  OAI22XL U955 ( .A0(n840), .A1(n865), .B0(n149), .B1(n378), .Y(n641) );
  OAI22XL U956 ( .A0(n840), .A1(n866), .B0(n150), .B1(n378), .Y(n640) );
  AOI221XL U957 ( .A0(n407), .A1(n172), .B0(W[1]), .B1(n408), .C0(n858), .Y(
        n406) );
  INVX1 U958 ( .A(N225), .Y(n769) );
  OAI32X4 U959 ( .A0(n168), .A1(n931), .A2(n330), .B0(n331), .B1(n172), .Y(
        n370) );
  NAND2X2 U960 ( .A(n844), .B(n171), .Y(n331) );
  OAI22XL U961 ( .A0(n842), .A1(n867), .B0(n123), .B1(n370), .Y(n618) );
  OAI22XL U962 ( .A0(n842), .A1(n861), .B0(n117), .B1(n370), .Y(n617) );
  OAI22XL U963 ( .A0(n842), .A1(n862), .B0(n118), .B1(n370), .Y(n616) );
  OAI22XL U964 ( .A0(n842), .A1(n863), .B0(n119), .B1(n370), .Y(n615) );
  OAI22XL U965 ( .A0(n842), .A1(n864), .B0(n120), .B1(n370), .Y(n614) );
  OAI22XL U966 ( .A0(n842), .A1(n865), .B0(n121), .B1(n370), .Y(n613) );
  OAI22XL U967 ( .A0(n842), .A1(n866), .B0(n122), .B1(n370), .Y(n612) );
  OAI32X4 U968 ( .A0(n330), .A1(n931), .A2(n932), .B0(W[1]), .B1(n331), .Y(
        n329) );
  OAI22XL U969 ( .A0(n843), .A1(n867), .B0(n109), .B1(n329), .Y(n597) );
  OAI22XL U970 ( .A0(n843), .A1(n861), .B0(n103), .B1(n329), .Y(n596) );
  OAI22XL U971 ( .A0(n843), .A1(n862), .B0(n104), .B1(n329), .Y(n595) );
  OAI22XL U972 ( .A0(n843), .A1(n863), .B0(n105), .B1(n329), .Y(n594) );
  OAI22XL U973 ( .A0(n843), .A1(n864), .B0(n106), .B1(n329), .Y(n593) );
  OAI22XL U974 ( .A0(n843), .A1(n865), .B0(n107), .B1(n329), .Y(n592) );
  OAI22XL U975 ( .A0(n843), .A1(n866), .B0(n108), .B1(n329), .Y(n591) );
  CLKBUFX3 U976 ( .A(N226), .Y(n724) );
  OAI32X4 U977 ( .A0(n372), .A1(n931), .A2(n857), .B0(n367), .B1(n172), .Y(
        n371) );
  NAND3X2 U978 ( .A(n398), .B(n171), .C(n930), .Y(n367) );
  OAI22XL U979 ( .A0(n845), .A1(n867), .B0(n130), .B1(n371), .Y(n625) );
  OAI22XL U980 ( .A0(n845), .A1(n861), .B0(n124), .B1(n371), .Y(n624) );
  OAI22XL U981 ( .A0(n845), .A1(n862), .B0(n125), .B1(n371), .Y(n623) );
  OAI22XL U982 ( .A0(n845), .A1(n863), .B0(n126), .B1(n371), .Y(n622) );
  OAI22XL U983 ( .A0(n845), .A1(n864), .B0(n127), .B1(n371), .Y(n621) );
  OAI22XL U984 ( .A0(n845), .A1(n865), .B0(n128), .B1(n371), .Y(n620) );
  OAI22XL U985 ( .A0(n845), .A1(n866), .B0(n129), .B1(n371), .Y(n619) );
  OAI32X4 U986 ( .A0(n167), .A1(n857), .A2(n372), .B0(n172), .B1(n694), .Y(
        n379) );
  OAI22XL U987 ( .A0(n847), .A1(n867), .B0(n158), .B1(n379), .Y(n653) );
  OAI22XL U988 ( .A0(n847), .A1(n861), .B0(n152), .B1(n379), .Y(n652) );
  OAI22XL U989 ( .A0(n847), .A1(n862), .B0(n153), .B1(n379), .Y(n651) );
  OAI22XL U990 ( .A0(n847), .A1(n863), .B0(n154), .B1(n379), .Y(n650) );
  OAI22XL U991 ( .A0(n847), .A1(n864), .B0(n155), .B1(n379), .Y(n649) );
  OAI22XL U992 ( .A0(n847), .A1(n865), .B0(n156), .B1(n379), .Y(n648) );
  OAI22XL U993 ( .A0(n847), .A1(n866), .B0(n157), .B1(n379), .Y(n647) );
  OAI32X4 U994 ( .A0(n375), .A1(n857), .A2(n170), .B0(W[1]), .B1(n694), .Y(
        n376) );
  OAI22XL U995 ( .A0(n848), .A1(n867), .B0(n144), .B1(n376), .Y(n639) );
  OAI22XL U996 ( .A0(n848), .A1(n861), .B0(n138), .B1(n376), .Y(n638) );
  OAI22XL U997 ( .A0(n848), .A1(n862), .B0(n139), .B1(n376), .Y(n637) );
  OAI22XL U998 ( .A0(n848), .A1(n863), .B0(n140), .B1(n376), .Y(n636) );
  OAI22XL U999 ( .A0(n848), .A1(n864), .B0(n141), .B1(n376), .Y(n635) );
  OAI22XL U1000 ( .A0(n848), .A1(n865), .B0(n142), .B1(n376), .Y(n634) );
  OAI22XL U1001 ( .A0(n848), .A1(n866), .B0(n143), .B1(n376), .Y(n633) );
  OAI221XL U1002 ( .A0(n390), .A1(n897), .B0(n167), .B1(n391), .C0(n430), .Y(
        n667) );
  AOI222XL U1003 ( .A0(n431), .A1(n172), .B0(n369), .B1(n432), .C0(W[1]), .C1(
        n433), .Y(n430) );
  OAI221XL U1004 ( .A0(n931), .A1(n372), .B0(n933), .B1(n167), .C0(n375), .Y(
        n432) );
  NAND4XL U1005 ( .A(n933), .B(n369), .C(n168), .D(n167), .Y(n368) );
  OAI22XL U1006 ( .A0(n846), .A1(n867), .B0(n116), .B1(n366), .Y(n611) );
  OAI22XL U1007 ( .A0(n846), .A1(n861), .B0(n110), .B1(n366), .Y(n610) );
  OAI22XL U1008 ( .A0(n846), .A1(n862), .B0(n111), .B1(n366), .Y(n609) );
  OAI22XL U1009 ( .A0(n846), .A1(n863), .B0(n112), .B1(n366), .Y(n608) );
  OAI22XL U1010 ( .A0(n846), .A1(n864), .B0(n113), .B1(n366), .Y(n607) );
  OAI22XL U1011 ( .A0(n846), .A1(n865), .B0(n114), .B1(n366), .Y(n606) );
  OAI22XL U1012 ( .A0(n846), .A1(n866), .B0(n115), .B1(n366), .Y(n605) );
  OAI221XL U1013 ( .A0(n896), .A1(n390), .B0(n168), .B1(n391), .C0(n401), .Y(
        n660) );
  AOI222XL U1014 ( .A0(n402), .A1(n172), .B0(n369), .B1(n403), .C0(W[1]), .C1(
        n404), .Y(n401) );
  XOR2XL U1015 ( .A(n932), .B(n933), .Y(n403) );
  OAI222XL U1016 ( .A0(n265), .A1(n374), .B0(n253), .B1(n331), .C0(n924), .C1(
        n367), .Y(n408) );
  CLKINVX1 U1017 ( .A(n803), .Y(n818) );
  OAI32X1 U1018 ( .A0(n295), .A1(n822), .A2(n927), .B0(n296), .B1(n221), .Y(
        n569) );
  OAI211XL U1019 ( .A0(n930), .A1(n857), .B0(n399), .C0(n400), .Y(n659) );
  OA22X1 U1020 ( .A0(n390), .A1(n733), .B0(n174), .B1(n391), .Y(n400) );
  OAI2BB1XL U1021 ( .A0N(n936), .A1N(n302), .B0(n303), .Y(n571) );
  NAND4XL U1022 ( .A(n301), .B(n937), .C(n298), .D(n926), .Y(n303) );
  OAI21XL U1023 ( .A0(n937), .A1(n822), .B0(n298), .Y(n302) );
  OAI221XL U1024 ( .A0(n387), .A1(n394), .B0(n172), .B1(n391), .C0(n395), .Y(
        n658) );
  XOR2X1 U1025 ( .A(n174), .B(W[1]), .Y(n394) );
  AO21X1 U1026 ( .A0(n396), .A1(n397), .B0(n390), .Y(n395) );
  OAI222XL U1027 ( .A0(n387), .A1(n388), .B0(n389), .B1(n390), .C0(n171), .C1(
        n391), .Y(n657) );
  XOR2XL U1028 ( .A(n393), .B(n928), .Y(n388) );
  AOI211X1 U1029 ( .A0(n727), .A1(n733), .B0(n887), .C0(n392), .Y(n389) );
  NAND2XL U1030 ( .A(W[1]), .B(n930), .Y(n393) );
  CLKINVX1 U1031 ( .A(n316), .Y(n823) );
  AOI221XL U1032 ( .A0(total_cost[9]), .A1(n317), .B0(n938), .B1(n824), .C0(
        n729), .Y(n316) );
  OAI211X1 U1033 ( .A0(n824), .A1(n828), .B0(n312), .C0(n731), .Y(n578) );
  NAND2XL U1034 ( .A(MinCost[3]), .B(n824), .Y(n312) );
  OAI211X1 U1035 ( .A0(n824), .A1(n814), .B0(n314), .C0(n731), .Y(n580) );
  NAND2XL U1036 ( .A(MinCost[1]), .B(n824), .Y(n314) );
  OAI211X1 U1037 ( .A0(n824), .A1(n817), .B0(n307), .C0(n731), .Y(n573) );
  NAND2XL U1038 ( .A(MinCost[8]), .B(n824), .Y(n307) );
  OAI211X1 U1039 ( .A0(n824), .A1(n830), .B0(n315), .C0(n731), .Y(n581) );
  NAND2XL U1040 ( .A(MinCost[0]), .B(n824), .Y(n315) );
  OAI211X1 U1041 ( .A0(n824), .A1(n815), .B0(n311), .C0(n731), .Y(n577) );
  NAND2XL U1042 ( .A(MinCost[4]), .B(n824), .Y(n311) );
  OAI211X1 U1043 ( .A0(n824), .A1(n816), .B0(n310), .C0(n731), .Y(n576) );
  NAND2XL U1044 ( .A(MinCost[5]), .B(n824), .Y(n310) );
  OAI211X1 U1045 ( .A0(n824), .A1(n829), .B0(n313), .C0(n731), .Y(n579) );
  NAND2XL U1046 ( .A(n945), .B(n824), .Y(n313) );
  OAI211X1 U1047 ( .A0(n824), .A1(n827), .B0(n309), .C0(n731), .Y(n575) );
  NAND2XL U1048 ( .A(n941), .B(n824), .Y(n309) );
  OAI211X1 U1049 ( .A0(n824), .A1(n826), .B0(n308), .C0(n731), .Y(n574) );
  NAND2XL U1050 ( .A(n940), .B(n824), .Y(n308) );
  OAI21XL U1051 ( .A0(n878), .A1(n537), .B0(n859), .Y(n536) );
  CLKBUFX3 U1052 ( .A(N229), .Y(n728) );
  OAI221XL U1053 ( .A0(n827), .A1(n318), .B0(n320), .B1(n103), .C0(n321), .Y(
        n584) );
  OAI221XL U1054 ( .A0(n816), .A1(n318), .B0(n320), .B1(n104), .C0(n322), .Y(
        n585) );
  OAI221XL U1055 ( .A0(n815), .A1(n318), .B0(n320), .B1(n105), .C0(n323), .Y(
        n586) );
  OAI221XL U1056 ( .A0(n828), .A1(n318), .B0(n320), .B1(n106), .C0(n324), .Y(
        n587) );
  OAI221XL U1057 ( .A0(n829), .A1(n318), .B0(n320), .B1(n107), .C0(n325), .Y(
        n588) );
  OAI221XL U1058 ( .A0(n814), .A1(n318), .B0(n320), .B1(n108), .C0(n326), .Y(
        n589) );
  OAI221XL U1059 ( .A0(n830), .A1(n318), .B0(n320), .B1(n109), .C0(n327), .Y(
        n590) );
  OAI21XL U1060 ( .A0(n361), .A1(n362), .B0(n850), .Y(n359) );
  OAI222XL U1061 ( .A0(n336), .A1(n151), .B0(n337), .B1(n158), .C0(n338), .C1(
        n144), .Y(n361) );
  OAI21XL U1062 ( .A0(n334), .A1(n335), .B0(n850), .Y(n332) );
  OAI222XL U1063 ( .A0(n336), .A1(n145), .B0(n337), .B1(n152), .C0(n338), .C1(
        n138), .Y(n334) );
  OAI21XL U1064 ( .A0(n341), .A1(n342), .B0(n850), .Y(n339) );
  OAI222XL U1065 ( .A0(n336), .A1(n146), .B0(n337), .B1(n153), .C0(n338), .C1(
        n139), .Y(n341) );
  OAI21XL U1066 ( .A0(n345), .A1(n346), .B0(n850), .Y(n343) );
  OAI222XL U1067 ( .A0(n336), .A1(n147), .B0(n337), .B1(n154), .C0(n338), .C1(
        n140), .Y(n345) );
  OAI21XL U1068 ( .A0(n349), .A1(n350), .B0(n850), .Y(n347) );
  OAI222XL U1069 ( .A0(n336), .A1(n148), .B0(n337), .B1(n155), .C0(n338), .C1(
        n141), .Y(n349) );
  OAI21XL U1070 ( .A0(n353), .A1(n354), .B0(n850), .Y(n351) );
  OAI222XL U1071 ( .A0(n336), .A1(n149), .B0(n337), .B1(n156), .C0(n338), .C1(
        n142), .Y(n353) );
  OAI21XL U1072 ( .A0(n357), .A1(n358), .B0(n850), .Y(n355) );
  OAI222XL U1073 ( .A0(n336), .A1(n150), .B0(n337), .B1(n157), .C0(n338), .C1(
        n143), .Y(n357) );
  OAI2BB2XL U1074 ( .B0(n318), .B1(n817), .A0N(adder1[8]), .A1N(n723), .Y(n582) );
  OAI2BB2XL U1075 ( .B0(n318), .B1(n826), .A0N(adder1[7]), .A1N(n723), .Y(n583) );
  CLKBUFX3 U1076 ( .A(N230), .Y(n727) );
  OAI22XL U1077 ( .A0(n839), .A1(n500), .B0(n902), .B1(n422), .Y(n690) );
  AOI221XL U1078 ( .A0(N227), .A1(n501), .B0(N224), .B1(n426), .C0(n502), .Y(
        n500) );
  OAI21XL U1079 ( .A0(n425), .A1(n410), .B0(n423), .Y(n501) );
  OAI22XL U1080 ( .A0(n244), .A1(n436), .B0(n831), .B1(n437), .Y(n668) );
  AOI2BB2X1 U1081 ( .B0(n438), .B1(n439), .A0N(n440), .A1N(n439), .Y(n437) );
  OAI22XL U1082 ( .A0(n246), .A1(n436), .B0(n831), .B1(n441), .Y(n669) );
  AOI2BB2X1 U1083 ( .B0(n442), .B1(n439), .A0N(n291), .A1N(n439), .Y(n441) );
  OAI22XL U1084 ( .A0(n262), .A1(n482), .B0(n837), .B1(n487), .Y(n685) );
  AOI2BB2X1 U1085 ( .B0(n456), .B1(n484), .A0N(n294), .A1N(n484), .Y(n487) );
  NOR4X1 U1086 ( .A(n565), .B(n171), .C(n372), .D(n167), .Y(N331) );
  NAND3XL U1087 ( .A(n930), .B(n369), .C(W[1]), .Y(n565) );
  OAI22XL U1088 ( .A0(n253), .A1(n458), .B0(n834), .B1(n463), .Y(n676) );
  AOI221XL U1089 ( .A0(n900), .A1(n444), .B0(N452), .B1(n460), .C0(n729), .Y(
        n463) );
  AO22X1 U1090 ( .A0(n724), .A1(n839), .B0(n421), .B1(n422), .Y(n665) );
  AOI222XL U1091 ( .A0(n425), .A1(n419), .B0(n877), .B1(n907), .C0(n426), .C1(
        N223), .Y(n424) );
  CLKINVX1 U1092 ( .A(n382), .Y(n852) );
  CLKINVX1 U1093 ( .A(n384), .Y(n853) );
  OAI222XL U1094 ( .A0(n290), .A1(n896), .B0(n291), .B1(n292), .C0(n242), .C1(
        n293), .Y(n567) );
  OAI222XL U1095 ( .A0(n290), .A1(n897), .B0(n440), .B1(n292), .C0(n293), .C1(
        n241), .Y(n689) );
  OAI222XL U1096 ( .A0(n290), .A1(n895), .B0(n294), .B1(n292), .C0(n293), .C1(
        n243), .Y(n568) );
  CLKINVX1 U1097 ( .A(\order[6][2] ), .Y(n911) );
  CLKINVX1 U1098 ( .A(\order[3][2] ), .Y(n912) );
  CLKINVX1 U1099 ( .A(\order[6][1] ), .Y(n919) );
  CLKINVX1 U1100 ( .A(\order[3][1] ), .Y(n918) );
  CLKINVX1 U1101 ( .A(\order[2][2] ), .Y(n910) );
  CLKINVX1 U1102 ( .A(\order[2][1] ), .Y(n917) );
  CLKINVX1 U1103 ( .A(\order[2][0] ), .Y(n923) );
  CLKINVX1 U1104 ( .A(\order[7][2] ), .Y(n913) );
  CLKINVX1 U1105 ( .A(\order[7][1] ), .Y(n920) );
  CLKINVX1 U1106 ( .A(\order[4][2] ), .Y(n914) );
  CLKINVX1 U1107 ( .A(\order[4][1] ), .Y(n915) );
  OAI22XL U1108 ( .A0(n265), .A1(n488), .B0(n838), .B1(n492), .Y(n688) );
  AOI221XL U1109 ( .A0(n880), .A1(n478), .B0(N626), .B1(n877), .C0(n729), .Y(
        n492) );
  OAI21XL U1110 ( .A0(n839), .A1(n427), .B0(n428), .Y(n666) );
  AO21X1 U1111 ( .A0(n422), .A1(n423), .B0(n906), .Y(n428) );
  AOI221XL U1112 ( .A0(N222), .A1(n426), .B0(n419), .B1(n906), .C0(n429), .Y(
        n427) );
  CLKINVX1 U1113 ( .A(\order[4][0] ), .Y(n924) );
  OAI222XL U1114 ( .A0(n893), .A1(n130), .B0(n891), .B1(n137), .C0(n890), .C1(
        n123), .Y(n362) );
  OAI222XL U1115 ( .A0(n893), .A1(n124), .B0(n891), .B1(n131), .C0(n890), .C1(
        n117), .Y(n335) );
  OAI222XL U1116 ( .A0(n893), .A1(n125), .B0(n891), .B1(n132), .C0(n890), .C1(
        n118), .Y(n342) );
  OAI222XL U1117 ( .A0(n893), .A1(n126), .B0(n891), .B1(n133), .C0(n890), .C1(
        n119), .Y(n346) );
  OAI222XL U1118 ( .A0(n893), .A1(n127), .B0(n891), .B1(n134), .C0(n890), .C1(
        n120), .Y(n350) );
  OAI222XL U1119 ( .A0(n893), .A1(n128), .B0(n891), .B1(n135), .C0(n890), .C1(
        n121), .Y(n354) );
  OAI222XL U1120 ( .A0(n893), .A1(n129), .B0(n891), .B1(n136), .C0(n890), .C1(
        n122), .Y(n358) );
  AOI22X1 U1121 ( .A0(n392), .A1(n855), .B0(finish_getdata), .B1(n369), .Y(
        n563) );
  CLKINVX1 U1122 ( .A(\order[5][2] ), .Y(n909) );
  CLKINVX1 U1123 ( .A(\order[5][1] ), .Y(n916) );
  CLKINVX1 U1124 ( .A(\order[5][0] ), .Y(n922) );
  CLKINVX1 U1125 ( .A(\order[1][0] ), .Y(n921) );
  OAI22XL U1126 ( .A0(n853), .A1(n892), .B0(N369), .B1(n380), .Y(n656) );
  OAI2BB2XL U1127 ( .B0(n729), .B1(n288), .A0N(Valid), .A1N(n288), .Y(n566) );
  AOI2BB1X1 U1128 ( .A0N(n289), .A1N(n876), .B0(n729), .Y(n288) );
  AOI21X1 U1129 ( .A0(n504), .A1(n560), .B0(n729), .Y(N348) );
  NAND2X1 U1130 ( .A(n932), .B(n933), .Y(n372) );
  AOI222XL U1131 ( .A0(\order[3][2] ), .A1(n870), .B0(\order[4][2] ), .B1(n875), .C0(\order[2][2] ), .C1(n874), .Y(n551) );
  AOI222XL U1132 ( .A0(\order[5][2] ), .A1(n872), .B0(\order[6][2] ), .B1(n874), .C0(\order[7][2] ), .C1(n870), .Y(n550) );
  NAND2X1 U1133 ( .A(N223), .B(n873), .Y(n530) );
  NAND2X1 U1134 ( .A(N222), .B(n882), .Y(n531) );
  OAI222XL U1135 ( .A0(n548), .A1(n881), .B0(N224), .B1(n549), .C0(n537), .C1(
        n246), .Y(n547) );
  AOI222XL U1136 ( .A0(\order[3][1] ), .A1(n870), .B0(\order[4][1] ), .B1(n875), .C0(\order[2][1] ), .C1(n874), .Y(n549) );
  AOI222XL U1137 ( .A0(\order[5][1] ), .A1(n872), .B0(\order[6][1] ), .B1(n874), .C0(\order[7][1] ), .C1(n870), .Y(n548) );
  AOI2BB2X1 U1138 ( .B0(n733), .B1(\order[2][0] ), .A0N(n733), .A1N(n921), .Y(
        n518) );
  AOI221XL U1139 ( .A0(n516), .A1(\order[5][0] ), .B0(n884), .B1(\order[4][0] ), .C0(n520), .Y(n519) );
  OAI22XL U1140 ( .A0(n253), .A1(n397), .B0(n262), .B1(n396), .Y(n520) );
  AOI222XL U1141 ( .A0(\order[1][0] ), .A1(n718), .B0(n544), .B1(n881), .C0(
        N224), .C1(n545), .Y(n542) );
  OAI222XL U1142 ( .A0(n531), .A1(n923), .B0(n535), .B1(n924), .C0(n530), .C1(
        n253), .Y(n544) );
  OAI222XL U1143 ( .A0(n530), .A1(n265), .B0(n531), .B1(n262), .C0(n546), .C1(
        n922), .Y(n545) );
  OAI222X4 U1144 ( .A0(n496), .A1(n242), .B0(n514), .B1(n414), .C0(n515), .C1(
        n888), .Y(n476) );
  AOI2BB2X1 U1145 ( .B0(n733), .B1(\order[2][1] ), .A0N(N228), .A1N(n246), .Y(
        n514) );
  AOI221XL U1146 ( .A0(n516), .A1(\order[5][1] ), .B0(n884), .B1(\order[4][1] ), .C0(n517), .Y(n515) );
  OAI22XL U1147 ( .A0(n918), .A1(n397), .B0(n919), .B1(n396), .Y(n517) );
  AOI2BB2X1 U1148 ( .B0(n733), .B1(\order[2][2] ), .A0N(n733), .A1N(n244), .Y(
        n521) );
  AOI221XL U1149 ( .A0(n516), .A1(\order[5][2] ), .B0(n884), .B1(\order[4][2] ), .C0(n523), .Y(n522) );
  OAI22XL U1150 ( .A0(n912), .A1(n397), .B0(n911), .B1(n396), .Y(n523) );
  INVX3 U1151 ( .A(step[1]), .Y(n894) );
  OAI22XL U1152 ( .A0(n886), .A1(n894), .B0(N369), .B1(n734), .Y(n558) );
  AO21X1 U1153 ( .A0(N378), .A1(n877), .B0(n552), .Y(n385) );
  NAND2X1 U1154 ( .A(n554), .B(n386), .Y(n553) );
  OAI21XL U1155 ( .A0(n555), .A1(n556), .B0(n557), .Y(n554) );
  AO21X1 U1156 ( .A0(n556), .A1(n555), .B0(n888), .Y(n557) );
  OAI21XL U1157 ( .A0(step[1]), .A1(n728), .B0(n558), .Y(n556) );
  AND3X2 U1158 ( .A(n419), .B(n497), .C(n498), .Y(n481) );
  AOI32X1 U1159 ( .A0(n728), .A1(n908), .A2(n499), .B0(n727), .B1(n902), .Y(
        n498) );
  OAI221XL U1160 ( .A0(n728), .A1(n908), .B0(n733), .B1(n906), .C0(n499), .Y(
        n497) );
  NAND2X1 U1161 ( .A(N227), .B(n888), .Y(n499) );
  CLKBUFX3 U1162 ( .A(step[2]), .Y(n725) );
  INVX3 U1163 ( .A(N227), .Y(n902) );
  NAND2X1 U1164 ( .A(n725), .B(step[1]), .Y(n386) );
  NOR3X1 U1165 ( .A(N369), .B(n725), .C(n894), .Y(n364) );
  NOR3X1 U1166 ( .A(step[1]), .B(n725), .C(n892), .Y(n363) );
  NAND3X2 U1167 ( .A(n725), .B(n894), .C(N369), .Y(n336) );
  NAND2X2 U1168 ( .A(N227), .B(n425), .Y(n469) );
  NOR2X1 U1169 ( .A(finish_nextorder), .B(n504), .Y(n538) );
  NAND3X2 U1170 ( .A(n908), .B(n902), .C(N225), .Y(n439) );
  NOR3X1 U1171 ( .A(step[1]), .B(n725), .C(N369), .Y(n365) );
  INVX3 U1172 ( .A(Cost[0]), .Y(n867) );
  INVX3 U1173 ( .A(Cost[6]), .Y(n861) );
  INVX3 U1174 ( .A(Cost[5]), .Y(n862) );
  INVX3 U1175 ( .A(Cost[4]), .Y(n863) );
  INVX3 U1176 ( .A(Cost[3]), .Y(n864) );
  INVX3 U1177 ( .A(Cost[2]), .Y(n865) );
  INVX3 U1178 ( .A(Cost[1]), .Y(n866) );
  AOI221XL U1179 ( .A0(n899), .A1(n454), .B0(N451), .B1(n452), .C0(n729), .Y(
        n453) );
  AOI221XL U1180 ( .A0(n900), .A1(n454), .B0(N451), .B1(n460), .C0(n729), .Y(
        n462) );
  AOI221XL U1181 ( .A0(n903), .A1(n454), .B0(N451), .B1(n484), .C0(RST), .Y(
        n486) );
  OAI22X1 U1182 ( .A0(n902), .A1(n759), .B0(N227), .B1(n758), .Y(N451) );
  AOI221XL U1183 ( .A0(n905), .A1(n468), .B0(N450), .B1(n469), .C0(RST), .Y(
        n467) );
  AOI221XL U1184 ( .A0(n904), .A1(n468), .B0(N450), .B1(n474), .C0(RST), .Y(
        n473) );
  AOI221XL U1185 ( .A0(n903), .A1(n468), .B0(N450), .B1(n484), .C0(RST), .Y(
        n483) );
  NAND2X1 U1186 ( .A(N450), .B(n868), .Y(n509) );
  CLKINVX1 U1187 ( .A(N450), .Y(n897) );
  OAI22X1 U1188 ( .A0(n767), .A1(n902), .B0(N227), .B1(n766), .Y(N450) );
  NOR2X1 U1189 ( .A(n882), .B(N222), .Y(n749) );
  NOR2X1 U1190 ( .A(n882), .B(n873), .Y(n748) );
  NOR2X1 U1191 ( .A(n873), .B(N223), .Y(n746) );
  NOR2X1 U1192 ( .A(N222), .B(N223), .Y(n745) );
  AO22X1 U1193 ( .A0(\order[5][0] ), .A1(n746), .B0(\order[4][0] ), .B1(n745), 
        .Y(n736) );
  AOI221XL U1194 ( .A0(\order[6][0] ), .A1(n749), .B0(\order[7][0] ), .B1(n748), .C0(n736), .Y(n739) );
  AO22X1 U1195 ( .A0(\order[1][0] ), .A1(n746), .B0(\order[0][0] ), .B1(n745), 
        .Y(n737) );
  AOI221XL U1196 ( .A0(\order[2][0] ), .A1(n749), .B0(\order[3][0] ), .B1(n748), .C0(n737), .Y(n738) );
  AO22X1 U1197 ( .A0(\order[5][1] ), .A1(n746), .B0(\order[4][1] ), .B1(n745), 
        .Y(n740) );
  AOI221XL U1198 ( .A0(\order[6][1] ), .A1(n749), .B0(\order[7][1] ), .B1(n748), .C0(n740), .Y(n743) );
  AO22X1 U1199 ( .A0(\order[1][1] ), .A1(n746), .B0(\order[0][1] ), .B1(n745), 
        .Y(n741) );
  AOI221XL U1200 ( .A0(\order[2][1] ), .A1(n749), .B0(\order[3][1] ), .B1(n748), .C0(n741), .Y(n742) );
  AO22X1 U1201 ( .A0(\order[5][2] ), .A1(n746), .B0(\order[4][2] ), .B1(n745), 
        .Y(n744) );
  AOI221XL U1202 ( .A0(\order[6][2] ), .A1(n749), .B0(\order[7][2] ), .B1(n748), .C0(n744), .Y(n751) );
  AO22X1 U1203 ( .A0(\order[1][2] ), .A1(n746), .B0(\order[0][2] ), .B1(n745), 
        .Y(n747) );
  AOI221XL U1204 ( .A0(\order[2][2] ), .A1(n749), .B0(\order[3][2] ), .B1(n748), .C0(n747), .Y(n750) );
  NOR2X1 U1205 ( .A(n768), .B(N225), .Y(n765) );
  NOR2X1 U1206 ( .A(n768), .B(n769), .Y(n764) );
  NOR2X1 U1207 ( .A(n769), .B(n724), .Y(n762) );
  NOR2X1 U1208 ( .A(N225), .B(n724), .Y(n761) );
  AO22X1 U1209 ( .A0(\order[5][0] ), .A1(n762), .B0(\order[4][0] ), .B1(n761), 
        .Y(n752) );
  AOI221XL U1210 ( .A0(\order[6][0] ), .A1(n765), .B0(\order[7][0] ), .B1(n764), .C0(n752), .Y(n755) );
  AO22X1 U1211 ( .A0(\order[1][0] ), .A1(n762), .B0(\order[0][0] ), .B1(n761), 
        .Y(n753) );
  AOI221XL U1212 ( .A0(\order[2][0] ), .A1(n765), .B0(\order[3][0] ), .B1(n764), .C0(n753), .Y(n754) );
  AO22X1 U1213 ( .A0(\order[5][1] ), .A1(n762), .B0(\order[4][1] ), .B1(n761), 
        .Y(n756) );
  AOI221XL U1214 ( .A0(\order[6][1] ), .A1(n765), .B0(\order[7][1] ), .B1(n764), .C0(n756), .Y(n759) );
  AO22X1 U1215 ( .A0(\order[1][1] ), .A1(n762), .B0(\order[0][1] ), .B1(n761), 
        .Y(n757) );
  AOI221XL U1216 ( .A0(\order[2][1] ), .A1(n765), .B0(\order[3][1] ), .B1(n764), .C0(n757), .Y(n758) );
  AO22X1 U1217 ( .A0(\order[5][2] ), .A1(n762), .B0(\order[4][2] ), .B1(n761), 
        .Y(n760) );
  AOI221XL U1218 ( .A0(\order[6][2] ), .A1(n765), .B0(\order[7][2] ), .B1(n764), .C0(n760), .Y(n767) );
  AO22X1 U1219 ( .A0(\order[1][2] ), .A1(n762), .B0(\order[0][2] ), .B1(n761), 
        .Y(n763) );
  AOI221XL U1220 ( .A0(\order[2][2] ), .A1(n765), .B0(\order[3][2] ), .B1(n764), .C0(n763), .Y(n766) );
  NOR2X1 U1221 ( .A(n886), .B(N228), .Y(n783) );
  NOR2X1 U1222 ( .A(n886), .B(n735), .Y(n782) );
  NOR2X1 U1223 ( .A(n735), .B(n728), .Y(n780) );
  NOR2X1 U1224 ( .A(N228), .B(n728), .Y(n779) );
  AO22X1 U1225 ( .A0(\order[5][0] ), .A1(n780), .B0(\order[4][0] ), .B1(n779), 
        .Y(n770) );
  AOI221XL U1226 ( .A0(\order[6][0] ), .A1(n783), .B0(\order[7][0] ), .B1(n782), .C0(n770), .Y(n773) );
  AO22X1 U1227 ( .A0(\order[1][0] ), .A1(n780), .B0(\order[0][0] ), .B1(n779), 
        .Y(n771) );
  AOI221XL U1228 ( .A0(\order[2][0] ), .A1(n783), .B0(\order[3][0] ), .B1(n782), .C0(n771), .Y(n772) );
  AO22X1 U1229 ( .A0(\order[5][1] ), .A1(n780), .B0(\order[4][1] ), .B1(n779), 
        .Y(n774) );
  AOI221XL U1230 ( .A0(\order[6][1] ), .A1(n783), .B0(\order[7][1] ), .B1(n782), .C0(n774), .Y(n777) );
  AO22X1 U1231 ( .A0(\order[1][1] ), .A1(n780), .B0(\order[0][1] ), .B1(n779), 
        .Y(n775) );
  AOI221XL U1232 ( .A0(\order[2][1] ), .A1(n783), .B0(\order[3][1] ), .B1(n782), .C0(n775), .Y(n776) );
  AO22X1 U1233 ( .A0(\order[5][2] ), .A1(n780), .B0(\order[4][2] ), .B1(n779), 
        .Y(n778) );
  AOI221XL U1234 ( .A0(\order[6][2] ), .A1(n783), .B0(\order[7][2] ), .B1(n782), .C0(n778), .Y(n785) );
  AO22X1 U1235 ( .A0(\order[1][2] ), .A1(n780), .B0(\order[0][2] ), .B1(n779), 
        .Y(n781) );
  AOI221XL U1236 ( .A0(\order[2][2] ), .A1(n783), .B0(\order[3][2] ), .B1(n782), .C0(n781), .Y(n784) );
  OAI22XL U1237 ( .A0(total_cost[1]), .A1(n786), .B0(n786), .B1(n808), .Y(n788) );
  NAND2X1 U1238 ( .A(total_cost[7]), .B(n812), .Y(n800) );
  NAND2X1 U1239 ( .A(total_cost[6]), .B(n811), .Y(n795) );
  NOR3BXL U1240 ( .AN(n795), .B(n789), .C(n796), .Y(n787) );
  NAND3X1 U1241 ( .A(n788), .B(n800), .C(n787), .Y(n807) );
  NAND2X1 U1242 ( .A(total_cost[9]), .B(n813), .Y(n803) );
  NOR2X1 U1243 ( .A(n805), .B(n804), .Y(n794) );
  OAI211X1 U1244 ( .A0(n791), .A1(n814), .B0(n790), .C0(n802), .Y(n792) );
  OAI221XL U1245 ( .A0(total_cost[2]), .A1(n809), .B0(total_cost[3]), .B1(n810), .C0(n792), .Y(n793) );
  AOI222XL U1246 ( .A0(n942), .A1(n816), .B0(n943), .B1(n815), .C0(n794), .C1(
        n793), .Y(n798) );
  NAND2BX1 U1247 ( .AN(n796), .B(n795), .Y(n797) );
  OAI222XL U1248 ( .A0(n798), .A1(n797), .B0(total_cost[6]), .B1(n811), .C0(
        total_cost[7]), .C1(n812), .Y(n799) );
  AOI21X1 U1249 ( .A0(step[1]), .A1(n728), .B0(N369), .Y(n819) );
  OAI2BB2XL U1250 ( .B0(step[1]), .B1(N229), .A0N(n819), .A1N(n733), .Y(n820)
         );
  OAI2BB1X1 U1251 ( .A0N(n722), .A1N(n725), .B0(n820), .Y(n821) );
  OAI211X1 U1252 ( .A0(n725), .A1(n722), .B0(n445), .C0(n821), .Y(N378) );
endmodule

