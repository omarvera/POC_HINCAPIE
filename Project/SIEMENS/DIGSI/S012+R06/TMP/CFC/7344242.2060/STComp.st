
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



                                                  (* ---------- Function Block : TLONG ----------  *)

FUNCTION_BLOCK TLONG
{
     TICKS           := 2;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 1;
     FF_MEMO_MEM     := 0;
     HELPID          := 10294;
     COMMENT         := 'TLONG';
     NESTED          := NO;
}
VAR_INPUT
        START { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        RESET { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        HOUR { TICKS := 0; VISIBLE := YES;}:UINT := 0;
        MIN { TICKS := 0; VISIBLE := YES;}:UINT := 0;
        MS100 { TICKS := 0; VISIBLE := YES;}:UINT := 10;
END_VAR
VAR_OUTPUT
        Q { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        QT { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR
     INI : BOOL  :=  0;
     TID : DINT  :=  0;
     HLEFT : UINT  :=  0;
     OLD : BOOL  :=  0;
     TRES : BOOL  :=  0;
END_VAR
     GATE TLNG
END_FUNCTION_BLOCK





                                                  (* ---------- Program : CHART_Group_warning ----------  *)

PROGRAM CHART_Group_warning
{COMMENT := "Group warning";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=  *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 56,9; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_2'; POSITION := 56,25; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_3;1  *)
OR10_3          { COMMENT := 'or10_4'; POSITION := 56,38; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_4;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_4;1  *)
OR10_4          { COMMENT := 'or10_3'; POSITION := 84,16; SIZE := 12, 12; } :OR10;         

     (* 0004 - SIP.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_SBWS_BW_Tr.BWsus *)
     EXV_SPS_0004   {COMMENT := "SIP.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_SBWS_BW_Tr.BWsus";DESC := "0##Application#Power system#Meas.point I-3ph 1#Brk.wire det.#Broken wire suspected##1";}:IEXV_SPS_BO;

     (* 0005 - SIP.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_SBWS_BW_Tr.BrokenWire *)
     EXV_SPS_0005   {COMMENT := "SIP.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_SBWS_BW_Tr.BrokenWire";DESC := "0##Application#Power system#Meas.point I-3ph 1#Brk.wire det.#Broken wire confirmed##1";}:IEXV_SPS_BO;

     (* 0006 - SIP.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_CurBalSV.Failure *)
     EXV_SPS_0006   {COMMENT := "SIP.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_CurBalSV.Failure";DESC := "0##Application#Power system#Meas.point I-3ph 1#Supv. balan. I#Failure##1";}:IEXV_SPS_BO;

     (* 0007 - SIP.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_CurPhSeqSV.Failure *)
     EXV_SPS_0007   {COMMENT := "SIP.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_CurPhSeqSV.Failure";DESC := "0##Application#Power system#Meas.point I-3ph 1#Supv. ph.seq.I#Failure##1";}:IEXV_SPS_BO;

     (* 0008 - SIP.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_SlowCurSumSV.Failure *)
     EXV_SPS_0008   {COMMENT := "SIP.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_SlowCurSumSV.Failure";DESC := "0##Application#Power system#Meas.point I-3ph 1#Supv. sum I#Failure##1";}:IEXV_SPS_BO;

     (* 0009 - SIP.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_FastCurSumSV.Failure *)
     EXV_SPS_0009   {COMMENT := "SIP.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_FastCurSumSV.Failure";DESC := "0##Application#Power system#Meas.point I-3ph 1#Supv.ADC sum I#Failure##1";}:IEXV_SPS_BO;

     (* 0010 - SIP.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_VolBalSV.Failure *)
     EXV_SPS_0010   {COMMENT := "SIP.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_VolBalSV.Failure";DESC := "0##Application#Power system#Meas.point V-3ph 1#Supv. balan. V#Failure##1";}:IEXV_SPS_BO;

     (* 0011 - SIP.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_VolPhSeqSV.Failure *)
     EXV_SPS_0011   {COMMENT := "SIP.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_VolPhSeqSV.Failure";DESC := "0##Application#Power system#Meas.point V-3ph 1#Supv. ph.seq.V#Failure##1";}:IEXV_SPS_BO;

     (* 0012 - SIP.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_VolSumSV.Failure *)
     EXV_SPS_0012   {COMMENT := "SIP.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_VolSumSV.Failure";DESC := "0##Application#Power system#Meas.point V-3ph 1#Supv. sum V#Failure##1";}:IEXV_SPS_BO;

     (* 0013 - SIP.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0013   {COMMENT := "SIP.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#Meas.point V-3ph 1#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0014 - SIP.Application.CALH_Application.GrWrnIn *)
     EXV_SPS_0014   {COMMENT := "SIP.Application.CALH_Application.GrWrnIn";DESC := "0##Application#Alarm handling#>Group Warning##1";}:OEXV_BO_SPS;

     (* 0015 - SIP.Application.LLN0_Application.HealthDev.Health_Alarm *)
     EXV_SPS_0015   {COMMENT := "SIP.Application.LLN0_Application.HealthDev.Health_Alarm";DESC := "0##Application#General#Health#alarm##1";}:IEXV_SPS_BO;

     (* 0016 - SIP.Application.LLN0_Application.HealthDev.Health_Warning *)
     EXV_SPS_0016   {COMMENT := "SIP.Application.LLN0_Application.HealthDev.Health_Warning";DESC := "0##Application#General#Health#warning##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0004        (LNK := 4);

     EXV_SPS_0005        (LNK := 5);

     EXV_SPS_0006        (LNK := 6);

     EXV_SPS_0007        (LNK := 7);

     EXV_SPS_0008        (LNK := 8);

     EXV_SPS_0009        (LNK := 9);

     EXV_SPS_0010        (LNK := 10);

     EXV_SPS_0011        (LNK := 11);

     EXV_SPS_0012        (LNK := 12);

     EXV_SPS_0013        (LNK := 13);

     EXV_SPS_0015        (LNK := 15);

     EXV_SPS_0016        (LNK := 16);

     OR10_1              (X1 := EXV_SPS_0004.VAL(* POSITION := -1*-1: SIZE := 47* -1:   *) ,
                          X2 := EXV_SPS_0005.VAL(* POSITION := -1*-1: SIZE := 47* -1:   *) ,
                          X3 := EXV_SPS_0006.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) ,
                          X4 := EXV_SPS_0007.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) ,
                          X5 := EXV_SPS_0008.VAL(* POSITION := -1*-1: SIZE := 39* -1:   *) ,
                          X6 := EXV_SPS_0009.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) ,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := EXV_SPS_0010.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) ,
                          X2 := EXV_SPS_0011.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) ,
                          X3 := EXV_SPS_0012.VAL(* POSITION := -1*-1: SIZE := 39* -1:   *) ,
                          X4 := EXV_SPS_0013.VAL(* POSITION := -1*-1: SIZE := 39* -1:   *) ,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_3              (X1 := EXV_SPS_0015.VAL(* POSITION := -1*-1: SIZE := 23* -1:   *) ,
                          X2 := EXV_SPS_0016.VAL(* POSITION := -1*-1: SIZE := 24* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_4              (X1 := OR10_1.Y,
                          X2 := OR10_2.Y,
                          X3 := OR10_3.Y,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0014        (LNK := 14,
                          VAL := OR10_4.Y(* POSITION := -1*-1: SIZE := 28* -1:   *) );


END_PROGRAM

                                                  (* ---------- Program : CHART_Interlocking ----------  *)

PROGRAM CHART_Interlocking
{COMMENT := "Interlocking";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=  *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X2:X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 45,13; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_1'; POSITION := 45,20; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_3;1  *)
AND10_3         { COMMENT := 'and10_2'; POSITION := 45,30; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_4;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_4;1  *)
OR10_4          { COMMENT := 'or10_2'; POSITION := 49,49; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_5;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_5;1  *)
OR10_5          { COMMENT := 'or10_3'; POSITION := 46,60; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_6;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_6;1  *)
OR10_6          { COMMENT := 'or10_4'; POSITION := 46,72; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_7;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_7;1  *)
AND10_7         { COMMENT := 'and10_3'; POSITION := 68,59; SIZE := 12, 12; } :AND10;        

     (* 0017 - SIP.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0017   {COMMENT := "SIP.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#Circuit breaker 1#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0018 - SIP.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOff *)
     EXV_SPS_0018   {COMMENT := "SIP.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOff";DESC := "0##Application#Disconnector 1#Disconnector#Position#open##1";}:IEXV_SPS_BO;

     (* 0019 - SIP.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOff *)
     EXV_SPS_0019   {COMMENT := "SIP.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOff";DESC := "0##Application#Disconnector 2#Disconnector#Position#open##1";}:IEXV_SPS_BO;

     (* 0020 - SIP.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0020   {COMMENT := "SIP.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#Disconnector 1#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0021 - SIP.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0021   {COMMENT := "SIP.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#Disconnector 2#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0022 - SIP.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOff *)
     EXV_SPS_0022   {COMMENT := "SIP.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOff";DESC := "0##Application#Disconnector 3#Disconnector#Position#open##1";}:IEXV_SPS_BO;

     (* 0023 - SIP.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0023   {COMMENT := "SIP.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#Disconnector 3#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0024 - SIP.Application.FG3_Switch.FB1_CILO.EnaOpn *)
     EXV_SPS_0024   {COMMENT := "SIP.Application.FG3_Switch.FB1_CILO.EnaOpn";DESC := "0##Application#Disconnector 3#Interlocking#>Enable opening##1";}:OEXV_BO_SPS;

     (* 0025 - SIP.Application.FG3_Switch.FB1_CILO.EnaCls *)
     EXV_SPS_0025   {COMMENT := "SIP.Application.FG3_Switch.FB1_CILO.EnaCls";DESC := "0##Application#Disconnector 3#Interlocking#>Enable closing##1";}:OEXV_BO_SPS;

     (* 0026 - SIP.Application.FG2_Switch.FB1_CILO.EnaOpn *)
     EXV_SPS_0026   {COMMENT := "SIP.Application.FG2_Switch.FB1_CILO.EnaOpn";DESC := "0##Application#Disconnector 2#Interlocking#>Enable opening##1";}:OEXV_BO_SPS;

     (* 0027 - SIP.Application.FG2_Switch.FB1_CILO.EnaCls *)
     EXV_SPS_0027   {COMMENT := "SIP.Application.FG2_Switch.FB1_CILO.EnaCls";DESC := "0##Application#Disconnector 2#Interlocking#>Enable closing##1";}:OEXV_BO_SPS;

     (* 0028 - SIP.Application.FG1_Switch.FB1_CILO.EnaCls *)
     EXV_SPS_0028   {COMMENT := "SIP.Application.FG1_Switch.FB1_CILO.EnaCls";DESC := "0##Application#Disconnector 1#Interlocking#>Enable closing##1";}:OEXV_BO_SPS;

     (* 0029 - SIP.Application.FG1_Switch.FB1_CILO.EnaOpn *)
     EXV_SPS_0029   {COMMENT := "SIP.Application.FG1_Switch.FB1_CILO.EnaOpn";DESC := "0##Application#Disconnector 1#Interlocking#>Enable opening##1";}:OEXV_BO_SPS;

     (* 0030 - SIP.Application.FG1_Breaker_3pol.FB1_CILO.EnaCls *)
     EXV_SPS_0030   {COMMENT := "SIP.Application.FG1_Breaker_3pol.FB1_CILO.EnaCls";DESC := "0##Application#Circuit breaker 1#Interlocking#>Enable closing##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0017        (LNK := 17);

     EXV_SPS_0018        (LNK := 18);

     EXV_SPS_0019        (LNK := 19);

     EXV_SPS_0020        (LNK := 20);

     EXV_SPS_0021        (LNK := 21);

     EXV_SPS_0022        (LNK := 22);

     EXV_SPS_0023        (LNK := 23);

     OR10_1              (X1 := EXV_SPS_0017.VAL(* POSITION := -1*-1: SIZE := 36* -1:   *) ,
                          X2 := 0,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     AND10_2             (X1 := EXV_SPS_0018.VAL(* POSITION := -1*-1: SIZE := 34* -1:   *) ,
                          X2 := EXV_SPS_0017.VAL(* POSITION := -1*-1: SIZE := 36* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_3             (X1 := EXV_SPS_0019.VAL(* POSITION := -1*-1: SIZE := 34* -1:   *) ,
                          X2 := EXV_SPS_0017.VAL(* POSITION := -1*-1: SIZE := 36* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     OR10_4              (X1 := EXV_SPS_0018.VAL(* POSITION := -1*-1: SIZE := 34* -1:   *) ,
                          X2 := EXV_SPS_0020.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_5              (X1 := EXV_SPS_0019.VAL(* POSITION := -1*-1: SIZE := 34* -1:   *) ,
                          X2 := EXV_SPS_0021.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_6              (X1 := EXV_SPS_0022.VAL(* POSITION := -1*-1: SIZE := 34* -1:   *) ,
                          X2 := EXV_SPS_0023.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_7             (X1 := OR10_4.Y,
                          X2 := OR10_5.Y,
                          X3 := OR10_6.Y,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     EXV_SPS_0024        (LNK := 24,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );
     EXV_SPS_0025        (LNK := 25,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );
     EXV_SPS_0026        (LNK := 26,
                          VAL := AND10_2.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );
     EXV_SPS_0027        (LNK := 27,
                          VAL := AND10_2.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );
     EXV_SPS_0028        (LNK := 28,
                          VAL := AND10_3.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );
     EXV_SPS_0029        (LNK := 29,
                          VAL := AND10_3.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );
     EXV_SPS_0030        (LNK := 30,
                          VAL := AND10_7.Y(* POSITION := -1*-1: SIZE := 36* -1:   *) );


END_PROGRAM

                                                  (* ---------- Program : CHART_Process_mode_inactive ----------  *)

PROGRAM CHART_Process_mode_inactive
{COMMENT := "Process mode inactive";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=  *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 34,8; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_1'; POSITION := 65,19; SIZE := 12, 12; } :AND10;        

               

     (* IO_IOUNIT;TLONG_3;
	MS100 := '100ms' *)
     (* PartitionInfo;PartitionID TLONG_3;1  *)
TLONG_3         { COMMENT := 'tlong_1'; POSITION := 97,19; SIZE := 12, 12; } :TLONG;        

     (* 0031 - SIP.Application.LPHD_Application.SimuMode *)
     EXV_SPS_0031   {COMMENT := "SIP.Application.LPHD_Application.SimuMode";DESC := "0##Application#Device#Simulation mode active##1";}:IEXV_SPS_BO;

     (* 0032 - SIP.Application.LPHD_Application.CommMode *)
     EXV_SPS_0032   {COMMENT := "SIP.Application.LPHD_Application.CommMode";DESC := "0##Application#Device#Commiss. mode active##1";}:IEXV_SPS_BO;

     (* 0033 - SIP.Application.LPHD_Application.DigsiAct *)
     EXV_SPS_0033   {COMMENT := "SIP.Application.LPHD_Application.DigsiAct";DESC := "0##Application#Device#DIGSI active##1";}:IEXV_SPS_BO;

     (* 0034 - SIP.Application.LPHD_Application.PrcModIna *)
     EXV_SPS_0034   {COMMENT := "SIP.Application.LPHD_Application.PrcModIna";DESC := "0##Application#Device#Process mode inactive##1";}:OEXV_BO_SPS;

     (* 0035 - SIP.Application.CALH_Application.GrAlmIn *)
     EXV_SPS_0035   {COMMENT := "SIP.Application.CALH_Application.GrAlmIn";DESC := "0##Application#Alarm handling#>Group Alarm##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0031        (LNK := 31);

     EXV_SPS_0032        (LNK := 32);

     EXV_SPS_0033        (LNK := 33);

     OR10_1              (X1 := EXV_SPS_0031.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) ,
                          X2 := EXV_SPS_0032.VAL(* POSITION := -1*-1: SIZE := 27* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     AND10_2             (X1 := OR10_1.Y,
                          X2 := NOT EXV_SPS_0033.VAL(* POSITION := -1*-1: SIZE := 23* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     TLONG_3             (START := AND10_2.Y,
                          RESET := NOT AND10_2.Y,
                          HOUR := 4,
                          MIN := 0,
                          MS100 := 10);

     EXV_SPS_0034        (LNK := 34,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 27* -1:   *) );
     EXV_SPS_0035        (LNK := 35,
                          VAL := TLONG_3.Q(* POSITION := -1*-1: SIZE := 27* -1:   *) );


END_PROGRAM

CONFIGURATION  PLC_CONTROL 
   RESOURCE PLANS { COMMENT := "Txt100_100";} ON CPU32
     TASK EVENT_SLOW     { TICKS := 1300;}(PRIORITY := INTERNAL);
     TASK EVENT_FAST     { TICKS := 255;}(PRIORITY := INTERNAL);
     TASK MEASUREMENT    { TICKS := 2536;}(PRIORITY := INTERNAL);
     TASK INTERLOCKING   { TICKS := 2173;}(PRIORITY := INTERNAL);

     PROGRAM FBI001 WITH EVENT_SLOW:  CHART_Group_warning;
     PROGRAM FBI002 WITH EVENT_SLOW:  CHART_Interlocking;
     PROGRAM FBI003 WITH EVENT_SLOW:  CHART_Process_mode_inactive;

   END_RESOURCE

 END_CONFIGURATION