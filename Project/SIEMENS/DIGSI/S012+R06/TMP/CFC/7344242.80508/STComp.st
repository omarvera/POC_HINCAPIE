
                                                  (* ---------- Structure : SSPS ----------  *)
TYPE SSPS:
STRUCT
        SP   :  BOOL;
         Q   :  WORD;
END_STRUCT;
END_TYPE


                                                  (* ---------- EV Function Block : IEXV_SPS_BO ----------  *)

FUNCTION_BLOCK IEXV_SPS_BO
VAR_INPUT
        LNK :UINT := 0;
END_VAR
VAR_OUTPUT
        VAL :BOOL;
END_VAR
VAR
        INI :BOOL := 0;
        LNKPTR :DINT := 0;
END_VAR
        GATE SPbo
END_FUNCTION_BLOCK



                                                  (* ---------- EV Function Block : OEXV_BO_SPS ----------  *)

FUNCTION_BLOCK OEXV_BO_SPS
VAR_INPUT
        LNK :UINT := 0;
        VAL :BOOL := 0;
END_VAR
VAR
        INI :BOOL := 0;
        LNKPTR :DINT := 0;
END_VAR
        GATE boSP
END_FUNCTION_BLOCK



                                                  (* ---------- Function Block : AND10 ----------  *)

FUNCTION_BLOCK AND10
{
     TICKS           := 2;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10264;
     COMMENT         := 'AND';
     NESTED          := NO;
}
VAR_INPUT
        X1 { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        X2 { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        X3 { TICKS := 0; VISIBLE := NO;}:BOOL := 1;
        X4 { TICKS := 0; VISIBLE := NO;}:BOOL := 1;
        X5 { TICKS := 0; VISIBLE := NO;}:BOOL := 1;
        X6 { TICKS := 0; VISIBLE := NO;}:BOOL := 1;
        X7 { TICKS := 0; VISIBLE := NO;}:BOOL := 1;
        X8 { TICKS := 0; VISIBLE := NO;}:BOOL := 1;
        X9 { TICKS := 0; VISIBLE := NO;}:BOOL := 1;
        X10 { TICKS := 0; VISIBLE := NO;}:BOOL := 1;
END_VAR
VAR_OUTPUT
        Y { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
Y:= X1 AND X2 AND X3 AND X4 AND X5 AND X6 AND X7 AND X8 AND X9 AND X10;
END_FUNCTION_BLOCK



                                                  (* ---------- Function Block : NOR10 ----------  *)

FUNCTION_BLOCK NOR10
{
     TICKS           := 3;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10267;
     COMMENT         := 'NOR';
     NESTED          := NO;
}
VAR_INPUT
        X1 { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        X2 { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        X3 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X4 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X5 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X6 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X7 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X8 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X9 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X10 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
END_VAR
VAR_OUTPUT
        Y { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
Y:= NOT (X1 OR X2 OR X3 OR X4 OR X5 OR X6 OR X7 OR X8 OR X9 OR X10);
END_FUNCTION_BLOCK



                                                  (* ---------- Function Block : OR10 ----------  *)

FUNCTION_BLOCK OR10
{
     TICKS           := 2;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10268;
     COMMENT         := 'OR';
     NESTED          := NO;
}
VAR_INPUT
        X1 { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        X2 { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        X3 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X4 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X5 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X6 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X7 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X8 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X9 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
        X10 { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
END_VAR
VAR_OUTPUT
        Y { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
Y:= X1 OR X2 OR X3 OR X4 OR X5 OR X6 OR X7 OR X8 OR X9 OR X10;
END_FUNCTION_BLOCK



                                                  (* ---------- Function Block : NEG ----------  *)

FUNCTION_BLOCK NEG
{
     TICKS           := 1;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10266;
     COMMENT         := 'NEG';
     NESTED          := NO;
}
VAR_INPUT
        IN { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR_OUTPUT
        OUT { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
OUT := NOT (IN);
END_FUNCTION_BLOCK





                                                  (* ---------- Program : CHART_cfea06b9_b262_4b14_83e6_2c9d464e9b04 ----------  *)

PROGRAM CHART_cfea06b9_b262_4b14_83e6_2c9d464e9b04
{COMMENT := "Lógico Interlocking";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=    *)
VAR



     (* IO_IOVISIBILITY;AND10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_1;1  *)
AND10_1         { COMMENT := 'and10_2'; POSITION := 47,24; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_2;X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_1'; POSITION := 47,6; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;NOR10_3;X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID NOR10_3;1  *)
NOR10_3         { COMMENT := 'nor10_1'; POSITION := 70,24; SIZE := 12, 12; } :NOR10;        


     (* IO_IOVISIBILITY;AND10_4;X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_4;1  *)
AND10_4         { COMMENT := 'and10_3'; POSITION := 92,6; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_5;X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_5;1  *)
AND10_5         { COMMENT := 'and10_10'; POSITION := 70,50; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;NOR10_6;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID NOR10_6;1  *)
NOR10_6         { COMMENT := 'nor10_2'; POSITION := 68,109; SIZE := 12, 12; } :NOR10;        


     (* IO_IOVISIBILITY;OR10_7;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_7;1  *)
OR10_7          { COMMENT := 'or10_4'; POSITION := 93,24; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_8;X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_8;1  *)
AND10_8         { COMMENT := 'and10_4'; POSITION := 70,74; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_9;X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_9;1  *)
AND10_9         { COMMENT := 'and10_8'; POSITION := 69,91; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID NEG_10;1  *)
NEG_10          { COMMENT := 'neg_1'; POSITION := 93,33; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID NEG_11;1  *)
NEG_11          { COMMENT := 'neg_2'; POSITION := 92,19; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID NEG_12;1  *)
NEG_12          { COMMENT := 'neg_3'; POSITION := 68,119; SIZE := 12, 12; } :NEG;          

     (* 0003 - F06_BCU.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0003   {COMMENT := "F06_BCU.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T6-Q1#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0004 - F06_BCU.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0004   {COMMENT := "F06_BCU.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T6-Q9#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0005 - F06_BCU.Application.FG1_UserDef.FB31_Universal.ColAlm1 *)
     EXV_SPS_0005   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB31_Universal.ColAlm1";DESC := "0##Application#Usuario#GOOSE#Falla SCD1##1";}:IEXV_SPS_BO;

     (* 0006 - F06_BCU.Application.FG1_UserDef.FB31_Universal.ColAlm2 *)
     EXV_SPS_0006   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB31_Universal.ColAlm2";DESC := "0##Application#Usuario#GOOSE#Falla SCD2##1";}:IEXV_SPS_BO;

     (* 0007 - F06_BCU.Application.FG1_UserDef.FB1_Universal.OpEx86 *)
     EXV_SPS_0007   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB1_Universal.OpEx86";DESC := "0##Application#Usuario#GGIO1#Opero 86T##1";}:IEXV_SPS_BO;

     (* 0008 - F06_BCU.Application.FG1_UserDef.FB14_Universal.InsBlk *)
     EXV_SPS_0008   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB14_Universal.InsBlk";DESC := "0##Application#Usuario#SIMG1#Bloqueo SF6 Q0##1";}:IEXV_SPS_BO;

     (* 0009 - F06_BCU.Application.FG1_UserDef.FB12_Universal.SprDisch *)
     EXV_SPS_0009   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB12_Universal.SprDisch";DESC := "0##Application#Usuario#SCBR1#Resorte Descargado Q0##1";}:IEXV_SPS_BO;

     (* 0010 - F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0010   {COMMENT := "F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#TP B 13.8kV V-1ph#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0011 - F06_BCU.Application.FG1_Breaker_3pol.FB1_CILO.EnaCls *)
     EXV_SPS_0011   {COMMENT := "F06_BCU.Application.FG1_Breaker_3pol.FB1_CILO.EnaCls";DESC := "0##Application#6T6-Q0#Interlocking#>Enable closing##1";}:OEXV_BO_SPS;

     (* 0012 - F06_BCU.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0012   {COMMENT := "F06_BCU.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#6T6-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0013 - F06_BCU.Application.FG1_UserDef.FB18_Universal.LosVCD *)
     EXV_SPS_0013   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB18_Universal.LosVCD";DESC := "0##Application#Usuario#SSWI1#FVCD Q1##1";}:IEXV_SPS_BO;

     (* 0014 - F06_BCU.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn *)
     EXV_SPS_0014   {COMMENT := "F06_BCU.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn";DESC := "0##Application#6T6-Q0#Circuit break.#Position#closed##1";}:IEXV_SPS_BO;

     (* 0015 - F06_BCU.Application.FG3_Switch.FB1_CILO.EnaOpn *)
     EXV_SPS_0015   {COMMENT := "F06_BCU.Application.FG3_Switch.FB1_CILO.EnaOpn";DESC := "0##Application#6T6-Q9#Interlocking#>Enable opening##1";}:OEXV_BO_SPS;

     (* 0016 - F06_BCU.Application.FG3_Switch.FB1_CILO.EnaCls *)
     EXV_SPS_0016   {COMMENT := "F06_BCU.Application.FG3_Switch.FB1_CILO.EnaCls";DESC := "0##Application#6T6-Q9#Interlocking#>Enable closing##1";}:OEXV_BO_SPS;

     (* 0017 - F06_BCU.Application.FG1_UserDef.FB20_Universal.LosVCD *)
     EXV_SPS_0017   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB20_Universal.LosVCD";DESC := "0##Application#Usuario#SSWI9#FVCD Q9##1";}:IEXV_SPS_BO;

     (* 0018 - F06_BCU.Application.FG1_UserDef.FB1_Universal.OpEx86FI *)
     EXV_SPS_0018   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB1_Universal.OpEx86FI";DESC := "0##Application#Usuario#GGIO1#Opero 86BF##1";}:IEXV_SPS_BO;

     (* 0019 - F06_BCU.Application.FG1_UserDef.FB31_Universal.OpEx86 *)
     EXV_SPS_0019   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB31_Universal.OpEx86";DESC := "0##Application#Usuario#GOOSE#Opero 86BF 13.8kV##1";}:IEXV_SPS_BO;

     (* 0020 - F06_BCU.Application.FG2_Breaker_3pol.FB1_CILO.EnaCls *)
     EXV_SPS_0020   {COMMENT := "F06_BCU.Application.FG2_Breaker_3pol.FB1_CILO.EnaCls";DESC := "0##Application#9T7-Q0#Interlocking#>Enable closing##1";}:OEXV_BO_SPS;

     (* 0021 - F06_BCU.Application.FG1_UserDef.FB1_Universal.Op86B1 *)
     EXV_SPS_0021   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB1_Universal.Op86B1";DESC := "0##Application#Usuario#GGIO1#Opero 86B1##1";}:IEXV_SPS_BO;

     (* 0022 - F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB1 *)
     EXV_SPS_0022   {COMMENT := "F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB1";DESC := "0##Application#Power system#TP B1 69kV V-3ph#VT miniatureCB#Falla MCB PT Barra 1 69 Dev1##1";}:IEXV_SPS_BO;

     (* 0023 - F06_BCU.Application.FG1_Breaker_3pol.FB1_XCBR.LocKey.DPS_StatusOn *)
     EXV_SPS_0023   {COMMENT := "F06_BCU.Application.FG1_Breaker_3pol.FB1_XCBR.LocKey.DPS_StatusOn";DESC := "0##Application#6T6-Q0#Circuit break.#Selector Local/Remoto#closed##1";}:IEXV_SPS_BO;

     (* 0024 - F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB *)
     EXV_SPS_0024   {COMMENT := "F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB";DESC := "0##Application#Power system#TP B1 69kV V-3ph#VT miniatureCB#Falla MCB PT Barra1 PCyM##1";}:IEXV_SPS_BO;

     (* 0025 - F06_BCU.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0025   {COMMENT := "F06_BCU.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9T7-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0026 - F06_BCU.Application.FG1_UserDef.FB6_Universal.MCBCI2 *)
     EXV_SPS_0026   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB6_Universal.MCBCI2";DESC := "0##Application#Usuario#GGIO30#Falla VCD Cto Cierre PCyM##1";}:IEXV_SPS_BO;

     (* 0027 - F06_BCU.Application.FG1_Breaker_3pol.FB1_CILO.EnaOpn *)
     EXV_SPS_0027   {COMMENT := "F06_BCU.Application.FG1_Breaker_3pol.FB1_CILO.EnaOpn";DESC := "0##Application#6T6-Q0#Interlocking#>Enable opening##1";}:OEXV_BO_SPS;

     (* 0028 - F06_BCU.Application.FG1_Breaker_3pol.FB1_CILO.PermOp *)
     EXV_SPS_0028   {COMMENT := "F06_BCU.Application.FG1_Breaker_3pol.FB1_CILO.PermOp";DESC := "0##Application#6T6-Q0#Interlocking#Permisivo de operacion##1";}:OEXV_BO_SPS;

     (* 0029 - F06_BCU.Application.FG1_UserDef.FB21_Universal.LosVDC *)
     EXV_SPS_0029   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB21_Universal.LosVDC";DESC := "0##Application#Usuario#SSWI10#FVCD Cto Control Seccionadores##1";}:IEXV_SPS_BO;

     (* 0030 - F06_BCU.Application.FG1_UserDef.FB18_Universal.LocKey.DPS_StatusOn *)
     EXV_SPS_0030   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB18_Universal.LocKey.DPS_StatusOn";DESC := "0##Application#Usuario#SSWI1#Selector Local/Remoto Q1#closed##1";}:IEXV_SPS_BO;

     (* 0031 - F06_BCU.Application.FG1_UserDef.FB20_Universal.LocKey.DPS_StatusOn *)
     EXV_SPS_0031   {COMMENT := "F06_BCU.Application.FG1_UserDef.FB20_Universal.LocKey.DPS_StatusOn";DESC := "0##Application#Usuario#SSWI9#Selector Local/Remoto Q9#closed##1";}:IEXV_SPS_BO;

     (* 0032 - F06_BCU.Application.FG1_Breaker_3pol.FB1_CILO.SPS *)
     EXV_SPS_0032   {COMMENT := "F06_BCU.Application.FG1_Breaker_3pol.FB1_CILO.SPS";DESC := "0##Application#6T6-Q0#Interlocking#Permisivo apertura##1";}:OEXV_BO_SPS;

     (* 0033 - F06_BCU.Application.FG1_Breaker_3pol.FB1_CILO.SPS1 *)
     EXV_SPS_0033   {COMMENT := "F06_BCU.Application.FG1_Breaker_3pol.FB1_CILO.SPS1";DESC := "0##Application#6T6-Q0#Interlocking#Permisivo cierre##1";}:OEXV_BO_SPS;

     (* 0034 - F06_BCU.Application.FG2_Breaker_3pol.FB1_CILO.SPS *)
     EXV_SPS_0034   {COMMENT := "F06_BCU.Application.FG2_Breaker_3pol.FB1_CILO.SPS";DESC := "0##Application#9T7-Q0#Interlocking#Permisivo Cierre 9T5-Q0##1";}:OEXV_BO_SPS;

     (* 0035 - F06_BCU.Application.FG1_Switch.FB1_CILO.EnaOpn *)
     EXV_SPS_0035   {COMMENT := "F06_BCU.Application.FG1_Switch.FB1_CILO.EnaOpn";DESC := "0##Application#6T6-Q1#Interlocking#>Enable opening##1";}:OEXV_BO_SPS;

     (* 0036 - F06_BCU.Application.FG1_Switch.FB1_CILO.EnaCls *)
     EXV_SPS_0036   {COMMENT := "F06_BCU.Application.FG1_Switch.FB1_CILO.EnaCls";DESC := "0##Application#6T6-Q1#Interlocking#>Enable closing##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0003        (LNK := 3);

     EXV_SPS_0004        (LNK := 4);

     EXV_SPS_0005        (LNK := 5);

     EXV_SPS_0006        (LNK := 6);

     EXV_SPS_0007        (LNK := 7);

     EXV_SPS_0008        (LNK := 8);

     EXV_SPS_0009        (LNK := 9);

     EXV_SPS_0010        (LNK := 10);

     EXV_SPS_0012        (LNK := 12);

     EXV_SPS_0013        (LNK := 13);

     EXV_SPS_0014        (LNK := 14);

     EXV_SPS_0017        (LNK := 17);

     EXV_SPS_0018        (LNK := 18);

     EXV_SPS_0019        (LNK := 19);

     EXV_SPS_0021        (LNK := 21);

     EXV_SPS_0022        (LNK := 22);

     EXV_SPS_0023        (LNK := 23);

     EXV_SPS_0024        (LNK := 24);

     EXV_SPS_0025        (LNK := 25);

     EXV_SPS_0026        (LNK := 26);

     EXV_SPS_0029        (LNK := 29);

     EXV_SPS_0030        (LNK := 30);

     EXV_SPS_0031        (LNK := 31);

     AND10_1             (X1 := NOT EXV_SPS_0005.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X2 := NOT EXV_SPS_0006.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_2             (X1 := EXV_SPS_0003.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X2 := NOT EXV_SPS_0018.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X3 := NOT EXV_SPS_0021.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X4 := NOT EXV_SPS_0022.VAL(* POSITION := -1*-1: SIZE := 50* -1:   *) ,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     NOR10_3             (X1 := AND10_1.Y,
                          X2 := EXV_SPS_0007.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X3 := EXV_SPS_0008.VAL(* POSITION := -1*-1: SIZE := 27* -1:   *) ,
                          X4 := EXV_SPS_0009.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X5 := EXV_SPS_0024.VAL(* POSITION := -1*-1: SIZE := 48* -1:   *) ,
                          X6 := EXV_SPS_0010.VAL(* POSITION := -1*-1: SIZE := 39* -1:   *) ,
                          X7 := EXV_SPS_0026.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_4             (X1 := AND10_2.Y,
                          X2 := EXV_SPS_0004.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X3 := EXV_SPS_0023.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X4 := EXV_SPS_0012.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X5 := EXV_SPS_0025.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X6 := NOR10_3.Y,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     AND10_5             (X1 := EXV_SPS_0014.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
                          X2 := EXV_SPS_0023.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X3 := NOT EXV_SPS_0008.VAL(* POSITION := -1*-1: SIZE := 27* -1:   *) ,
                          X4 := NOT EXV_SPS_0005.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     NOR10_6             (X1 := EXV_SPS_0007.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X2 := EXV_SPS_0018.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X3 := EXV_SPS_0019.VAL(* POSITION := -1*-1: SIZE := 29* -1:   *) ,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     OR10_7              (X1 := AND10_4.Y,
                          X2 := AND10_5.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     AND10_8             (X1 := EXV_SPS_0012.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0030.VAL(* POSITION := -1*-1: SIZE := 36* -1:   *) ,
                          X3 := NOT EXV_SPS_0013.VAL(* POSITION := -1*-1: SIZE := 24* -1:   *) ,
                          X4 := NOT EXV_SPS_0029.VAL(* POSITION := -1*-1: SIZE := 36* -1:   *) ,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_9             (X1 := EXV_SPS_0012.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0031.VAL(* POSITION := -1*-1: SIZE := 36* -1:   *) ,
                          X3 := NOT EXV_SPS_0017.VAL(* POSITION := -1*-1: SIZE := 24* -1:   *) ,
                          X4 := NOT EXV_SPS_0029.VAL(* POSITION := -1*-1: SIZE := 36* -1:   *) ,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     NEG_10              (IN := OR10_7.Y);

     NEG_11              (IN := AND10_4.Y);

     NEG_12              (IN := NOR10_6.Y);

     EXV_SPS_0011        (LNK := 11,
                          VAL := AND10_4.Y(* POSITION := -1*-1: SIZE := 31* -1:   *) );
     EXV_SPS_0015        (LNK := 15,
                          VAL := AND10_9.Y(* POSITION := -1*-1: SIZE := 31* -1:   *) );
     EXV_SPS_0016        (LNK := 16,
                          VAL := AND10_9.Y(* POSITION := -1*-1: SIZE := 31* -1:   *) );
     EXV_SPS_0020        (LNK := 20,
                          VAL := NOR10_6.Y(* POSITION := -1*-1: SIZE := 31* -1:   *) );
     EXV_SPS_0027        (LNK := 27,
                          VAL := AND10_5.Y(* POSITION := -1*-1: SIZE := 31* -1:   *) );
     EXV_SPS_0028        (LNK := 28,
                          VAL := OR10_7.Y(* POSITION := -1*-1: SIZE := 34* -1:   *) );
     EXV_SPS_0032        (LNK := 32,
                          VAL := NEG_10.OUT(* POSITION := -1*-1: SIZE := 32* -1:   *) );
     EXV_SPS_0033        (LNK := 33,
                          VAL := NEG_11.OUT(* POSITION := -1*-1: SIZE := 31* -1:   *) );
     EXV_SPS_0034        (LNK := 34,
                          VAL := NEG_12.OUT(* POSITION := -1*-1: SIZE := 35* -1:   *) );
     EXV_SPS_0035        (LNK := 35,
                          VAL := AND10_8.Y(* POSITION := -1*-1: SIZE := 31* -1:   *) );
     EXV_SPS_0036        (LNK := 36,
                          VAL := AND10_8.Y(* POSITION := -1*-1: SIZE := 31* -1:   *) );

(* COMMENT_TEXT;{X=58,Y=1};{Width=35, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;PERMISIVO CIERRE 6T6-Q0 *)
(* COMMENT_TEXT;{X=57,Y=46};{Width=37, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;PERMISIVO APERTURA 6T6-Q0 *)
(* COMMENT_TEXT;{X=56,Y=71};{Width=40, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;PERMISIVO OPERACIÓN 6T6-Q1 *)
(* COMMENT_TEXT;{X=57,Y=85};{Width=40, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;PERMISIVO OPERACIÓN 6T6-Q9 *)
(* COMMENT_TEXT;{X=56,Y=106};{Width=40, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;PERMISIVO CIERRE 9T7-Q0 *)

END_PROGRAM

                                                  (* ---------- Program : CHART_6826c8e3_486e_41a3_a8d8_4b02407e63c8 ----------  *)

PROGRAM CHART_6826c8e3_486e_41a3_a8d8_4b02407e63c8
{COMMENT := "Lógico Falla PTs";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=    *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 70,4; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_2'; POSITION := 71,15; SIZE := 12, 12; } :OR10;         

     (* 0037 - F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB1 *)
     EXV_SPS_0037   {COMMENT := "F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB1";DESC := "0##Application#Power system#TP B1 69kV V-3ph#VT miniatureCB#Falla MCB PT Barra 1 69 Dev1##1";}:IEXV_SPS_BO;

     (* 0038 - F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB *)
     EXV_SPS_0038   {COMMENT := "F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB";DESC := "0##Application#Power system#TP B1 69kV V-3ph#VT miniatureCB#Falla MCB PT Barra1 PCyM##1";}:IEXV_SPS_BO;

     (* 0039 - F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0039   {COMMENT := "F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#TP B1 69kV V-3ph#VT miniatureCB#>Open##1";}:OEXV_BO_SPS;

     (* 0040 - F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.MCB3 *)
     EXV_SPS_0040   {COMMENT := "F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.MCB3";DESC := "0##Application#Power system#TP B 13.8kV V-1ph#VT miniatureCB#Falla MCB PT  13.8kV PCyM##1";}:IEXV_SPS_BO;

     (* 0041 - F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.MCB4 *)
     EXV_SPS_0041   {COMMENT := "F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.MCB4";DESC := "0##Application#Power system#TP B 13.8kV V-1ph#VT miniatureCB#Falla MCB PT  13.8kV Campo##1";}:IEXV_SPS_BO;

     (* 0042 - F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0042   {COMMENT := "F06_BCU.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#TP B 13.8kV V-1ph#VT miniatureCB#>Open##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0037        (LNK := 37);

     EXV_SPS_0038        (LNK := 38);

     EXV_SPS_0040        (LNK := 40);

     EXV_SPS_0041        (LNK := 41);

     OR10_1              (X1 := EXV_SPS_0037.VAL(* POSITION := -1*-1: SIZE := 50* -1:   *) ,
                          X2 := EXV_SPS_0038.VAL(* POSITION := -1*-1: SIZE := 48* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := EXV_SPS_0040.VAL(* POSITION := -1*-1: SIZE := 49* -1:   *) ,
                          X2 := EXV_SPS_0041.VAL(* POSITION := -1*-1: SIZE := 49* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0039        (LNK := 39,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 38* -1:   *) );
     EXV_SPS_0042        (LNK := 42,
                          VAL := OR10_2.Y(* POSITION := -1*-1: SIZE := 39* -1:   *) );

(* COMMENT_TEXT;{X=61,Y=1};{Width=30, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;FALLA PT's 69 kV *)
(* COMMENT_TEXT;{X=61,Y=11};{Width=30, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;FALLA PT's 13.8 kV *)

END_PROGRAM

CONFIGURATION  PLC_CONTROL 
   RESOURCE PLANS { COMMENT := "Txt100_100";} ON CPU32
     TASK EVENT_SLOW     { TICKS := 1300;}(PRIORITY := INTERNAL);
     TASK EVENT_FAST     { TICKS := 255;}(PRIORITY := INTERNAL);
     TASK MEASUREMENT    { TICKS := 2536;}(PRIORITY := INTERNAL);
     TASK INTERLOCKING   { TICKS := 2173;}(PRIORITY := INTERNAL);

     PROGRAM FBI001 WITH EVENT_SLOW:  CHART_cfea06b9_b262_4b14_83e6_2c9d464e9b04;
     PROGRAM FBI002 WITH EVENT_SLOW:  CHART_6826c8e3_486e_41a3_a8d8_4b02407e63c8;

   END_RESOURCE

 END_CONFIGURATION