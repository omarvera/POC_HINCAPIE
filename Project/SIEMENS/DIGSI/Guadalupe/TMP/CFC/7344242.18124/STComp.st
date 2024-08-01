
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



                                                  (* ---------- EV Function Block : OEXV_SS_SPS ----------  *)

FUNCTION_BLOCK OEXV_SS_SPS
VAR_INPUT
        LNK :UINT := 0;
        VAL :SSPS;
END_VAR
VAR
        INI :BOOL := 0;
        LNKPTR :DINT := 0;
END_VAR
        GATE ssSP
END_FUNCTION_BLOCK



                                                  (* ---------- EV Function Block : IEXV_SPS_SS ----------  *)

FUNCTION_BLOCK IEXV_SPS_SS
VAR_INPUT
        LNK :UINT := 0;
END_VAR
VAR_OUTPUT
        VAL :SSPS;
END_VAR
VAR
        INI :BOOL := 0;
        LNKPTR :DINT := 0;
END_VAR
        GATE SPss
END_FUNCTION_BLOCK



                                                  (* ---------- EV Function Block : IEXV_MVL_DI ----------  *)

FUNCTION_BLOCK IEXV_MVL_DI
VAR_INPUT
        LNK :UINT := 0;
END_VAR
VAR_OUTPUT
        VAL :DINT;
END_VAR
VAR
        INI :BOOL := 0;
        LNKPTR :DINT := 0;
END_VAR
        GATE MVdi
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



                                                  (* ---------- Function Block : CONNECT ----------  *)

FUNCTION_BLOCK CONNECT
{
     TICKS           := 0;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10307;
     COMMENT         := 'CONNECT';
     NESTED          := NO;
}
VAR_INPUT
        IN { TICKS := 0; VISIBLE := YES;}:SSPS;
END_VAR
VAR_OUTPUT
        OUT { TICKS := 0; VISIBLE := YES;}:SSPS;
END_VAR
OUT.SP:= IN.SP; OUT.Q:= IN.Q;
END_FUNCTION_BLOCK



                                                  (* ---------- Function Block : TON ----------  *)

FUNCTION_BLOCK TON
{
     TICKS           := 1;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 1;
     FF_MEMO_MEM     := 0;
     HELPID          := 10296;
     COMMENT         := 'TON';
     NESTED          := NO;
}
VAR_INPUT
        IN { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        PT { TICKS := 0; VISIBLE := YES;}:DINT := 100;
END_VAR
VAR_OUTPUT
        Q { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        ET { TICKS := 0; VISIBLE := YES;}:DINT := 0;
END_VAR
VAR
     INI : BOOL  :=  0;
     TID : DINT  :=  0;
     RUN : BOOL  :=  0;
END_VAR
     GATE TDON
END_FUNCTION_BLOCK



                                                  (* ---------- Function Block : GT_D ----------  *)

FUNCTION_BLOCK GT_D
{
     TICKS           := 0;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10233;
     COMMENT         := 'GT_D';
     NESTED          := NO;
}
VAR_INPUT
        IN1 { TICKS := 0; VISIBLE := YES;}:DINT := 0;
        IN2 { TICKS := 0; VISIBLE := YES;}:DINT := 0;
END_VAR
VAR_OUTPUT
        OUT { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR
     INI : BOOL  :=  0;
END_VAR
     GATE GTHD
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



                                                  (* ---------- Function Block : LT_D ----------  *)

FUNCTION_BLOCK LT_D
{
     TICKS           := 0;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10239;
     COMMENT         := 'LT_D';
     NESTED          := NO;
}
VAR_INPUT
        IN1 { TICKS := 0; VISIBLE := YES;}:DINT := 0;
        IN2 { TICKS := 0; VISIBLE := YES;}:DINT := 0;
END_VAR
VAR_OUTPUT
        OUT { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR
     INI : BOOL  :=  0;
END_VAR
     GATE LTHD
END_FUNCTION_BLOCK





                                                  (* ---------- Program : CHART_Enclavamiento_Q0_69_kV ----------  *)

PROGRAM CHART_Enclavamiento_Q0_69_kV
{COMMENT := "Enclavamiento Q0 69 kV";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR



     (* IO_IOVISIBILITY;AND10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_1;1  *)
AND10_1         { COMMENT := 'and10_4'; POSITION := 42,50; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_5'; POSITION := 42,56; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_3;1  *)
OR10_3          { COMMENT := 'or10_4'; POSITION := 61,50; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_4;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_4;1  *)
AND10_4         { COMMENT := 'and10_2'; POSITION := 58,23; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_5;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_5;1  *)
OR10_5          { COMMENT := 'or10_1'; POSITION := 58,29; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_6;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_6;1  *)
AND10_6         { COMMENT := 'and10_7'; POSITION := 47,5; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_7;X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_7;1  *)
AND10_7         { COMMENT := 'and10_9'; POSITION := 80,40; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_8;X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_8;1  *)
AND10_8         { COMMENT := 'and10_10'; POSITION := 79,13; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_9;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_9;1  *)
OR10_9          { COMMENT := 'or10_3'; POSITION := 101,20; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_10;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_10;1  *)
AND10_10        { COMMENT := 'and10_3'; POSITION := 102,27; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_11;X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_11;1  *)
AND10_11        { COMMENT := 'and10_6'; POSITION := 79,62; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_12;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_12;1  *)
OR10_12         { COMMENT := 'or10_2'; POSITION := 101,35; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_13;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_13;1  *)
AND10_13        { COMMENT := 'and10_1'; POSITION := 101,5; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_14;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_14;1  *)
AND10_14        { COMMENT := 'and10_11'; POSITION := 101,13; SIZE := 12, 12; } :AND10;        

     (* 0009 - GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0009   {COMMENT := "GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#Meas.point V-3ph 1#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0010 - GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0010   {COMMENT := "GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#Meas.point V-1ph 1#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0011 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBCEOper *)
     EXV_SPS_0011   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBCEOper";DESC := "0##Application#Usuario#Logicas#Enclav Int Oper##1";}:OEXV_BO_SPS;

     (* 0012 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBOper *)
     EXV_SPS_0012   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBOper";DESC := "0##Application#Usuario#Logicas#PerCB Oper Display##1";}:OEXV_BO_SPS;

     (* 0013 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.OROMCB *)
     EXV_SPS_0013   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.OROMCB";DESC := "0##Application#Usuario#Logicas#OR Oper Mtto##1";}:OEXV_BO_SPS;

     (* 0014 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBCE *)
     EXV_SPS_0014   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBCE";DESC := "0##Application#Usuario#Logicas#Permisivo Cierre Q0##1";}:OEXV_BO_SPS;

     (* 0015 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBAB *)
     EXV_SPS_0015   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBAB";DESC := "0##Application#Usuario#Logicas#Enclav Int Open##1";}:OEXV_BO_SPS;

     (* 0016 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS14 *)
     EXV_SPS_0016   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS14";DESC := "0##Application#Usuario#Logicas#Candado Display Int##1";}:OEXV_BO_SPS;

     (* 0017 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.CondSync25 *)
     EXV_SPS_0017   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.CondSync25";DESC := "0##Application#Usuario#Logicas#Condicion de Sincronismo##1";}:IEXV_SPS_BO;

     (* 0018 - GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_VolPhSeqSV.Failure *)
     EXV_SPS_0018   {COMMENT := "GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_VolPhSeqSV.Failure";DESC := "0##Application#Power system#Meas.point V-3ph 1#Supv. ph.seq.V#Failure##1";}:IEXV_SPS_BO;

     (* 0019 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBCEMto *)
     EXV_SPS_0019   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBCEMto";DESC := "0##Application#Usuario#Logicas#Enclav Int Mtto##1";}:OEXV_BO_SPS;

     (* 0020 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBMto *)
     EXV_SPS_0020   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBMto";DESC := "0##Application#Usuario#Logicas#PerCB Mtto Display##1";}:OEXV_BO_SPS;

     (* 0021 - GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOff *)
     EXV_SPS_0021   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOff";DESC := "0##Application#6T4-Q1#Disconnector#Position#open##1";}:IEXV_SPS_BO;

     (* 0022 - GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOff *)
     EXV_SPS_0022   {COMMENT := "GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOff";DESC := "0##Application#6T4-Q9#Disconnector#Position#open##1";}:IEXV_SPS_BO;

     (* 0023 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS33 *)
     EXV_SPS_0023   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS33";DESC := "0##Application#Usuario#Entradas#Selector Remoto Q0##1";}:IEXV_SPS_BO;

     (* 0024 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.BlqSF6E2 *)
     EXV_SPS_0024   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.BlqSF6E2";DESC := "0##Application#Usuario#Entradas#Bloqueo SF6 Q0##1";}:IEXV_SPS_BO;

     (* 0025 - GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0025   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#6T4-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0026 - GDL69TRF2BCU_.Application.FG1_UserDef.FB4_Universal.RxFallaSBD1 *)
     EXV_SPS_0026   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB4_Universal.RxFallaSBD1";DESC := "0##Application#Usuario#Rx Goose#Falla SBD1##1";}:IEXV_SPS_BO;

     (* 0027 - GDL69TRF2BCU_.Application.FG1_UserDef.FB4_Universal.RxFallaSBD2 *)
     EXV_SPS_0027   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB4_Universal.RxFallaSBD2";DESC := "0##Application#Usuario#Rx Goose#Falla SBD2##1";}:IEXV_SPS_BO;

     (* 0028 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.Trip86TOp *)
     EXV_SPS_0028   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.Trip86TOp";DESC := "0##Application#Usuario#Entradas#Opero 86T##1";}:IEXV_SPS_BO;

     (* 0029 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.Trip86BFB2Op *)
     EXV_SPS_0029   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.Trip86BFB2Op";DESC := "0##Application#Usuario#Entradas#Opero 86BF B2##1";}:IEXV_SPS_BO;

     (* 0030 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.Trip86BFB1Op *)
     EXV_SPS_0030   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.Trip86BFB1Op";DESC := "0##Application#Usuario#Entradas#Opero 86BF B1##1";}:IEXV_SPS_BO;

     (* 0031 - GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0031   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9T6-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0032 - GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn *)
     EXV_SPS_0032   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q0#Circuit break.#Position#closed##1";}:IEXV_SPS_BO;

     (* 0033 - GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_CILO.EnaClsFix *)
     EXV_SPS_0033   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_CILO.EnaClsFix";DESC := "0##Application#6T4-Q0#Interlocking#>Enable closing (fixed)##1";}:OEXV_BO_SPS;

     (* 0034 - GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_CILO.EnaOpnFix *)
     EXV_SPS_0034   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_CILO.EnaOpnFix";DESC := "0##Application#6T4-Q0#Interlocking#>Enable opening(fixed)##1";}:OEXV_BO_SPS;

     (* 0035 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCB *)
     EXV_SPS_0035   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCB";DESC := "0##Application#Usuario#Logicas#Permisivo de Operacion Q0 69 kV##1";}:OEXV_BO_SPS;

     (* 0036 - GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0036   {COMMENT := "GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q9#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0037 - GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOff *)
     EXV_SPS_0037   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOff";DESC := "0##Application#6T4-Q2#Disconnector#Position#open##1";}:IEXV_SPS_BO;

     (* 0038 - GDL69TRF2BCU_.Application.FG1_UserDef.FB4_Universal.Rx86BF13 *)
     EXV_SPS_0038   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB4_Universal.Rx86BF13";DESC := "0##Application#Usuario#Rx Goose#Opero 86BF 13.8kV##1";}:IEXV_SPS_BO;

     (* 0039 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.ResoDescQ0 *)
     EXV_SPS_0039   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.ResoDescQ0";DESC := "0##Application#Usuario#Logicas#Resorte Descargado Q0##1";}:IEXV_SPS_BO;

     (* 0040 - GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0040   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q1#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0041 - GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0041   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q2#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0042 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaVcdCls *)
     EXV_SPS_0042   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaVcdCls";DESC := "0##Application#Usuario#Entradas#FVCD Cto Cierre Q0##1";}:IEXV_SPS_BO;

     (* 0043 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaMcbClsCmp *)
     EXV_SPS_0043   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaMcbClsCmp";DESC := "0##Application#Usuario#Entradas#Falla Cto Cierre Q0##1";}:IEXV_SPS_BO;

     (* 0044 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaMcbVcdCls *)
     EXV_SPS_0044   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaMcbVcdCls";DESC := "0##Application#Usuario#Logicas#Falla VCD Cto de Cierre General##1";}:OEXV_BO_SPS;

     (* 0045 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaSCDBPyBR *)
     EXV_SPS_0045   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaSCDBPyBR";DESC := "0##Application#Usuario#Logicas#Falla SCD B1 y B2##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0009        (LNK := 9);

     EXV_SPS_0010        (LNK := 10);

     EXV_SPS_0017        (LNK := 17);

     EXV_SPS_0018        (LNK := 18);

     EXV_SPS_0021        (LNK := 21);

     EXV_SPS_0022        (LNK := 22);

     EXV_SPS_0023        (LNK := 23);

     EXV_SPS_0024        (LNK := 24);

     EXV_SPS_0025        (LNK := 25);

     EXV_SPS_0026        (LNK := 26);

     EXV_SPS_0027        (LNK := 27);

     EXV_SPS_0028        (LNK := 28);

     EXV_SPS_0029        (LNK := 29);

     EXV_SPS_0030        (LNK := 30);

     EXV_SPS_0031        (LNK := 31);

     EXV_SPS_0032        (LNK := 32);

     EXV_SPS_0036        (LNK := 36);

     EXV_SPS_0037        (LNK := 37);

     EXV_SPS_0038        (LNK := 38);

     EXV_SPS_0039        (LNK := 39);

     EXV_SPS_0040        (LNK := 40);

     EXV_SPS_0041        (LNK := 41);

     EXV_SPS_0042        (LNK := 42);

     EXV_SPS_0043        (LNK := 43);

     AND10_1             (X1 := EXV_SPS_0040.VAL(* POSITION := 3*53: SIZE := 31* -1:   *) ,
                          X2 := NOT EXV_SPS_0030.VAL(* POSITION := 6*54: SIZE := 28* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_2             (X1 := EXV_SPS_0041.VAL(* POSITION := 4*59: SIZE := 31* -1:   *) ,
                          X2 := NOT EXV_SPS_0029.VAL(* POSITION := 7*60: SIZE := 28* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     OR10_3              (X1 := AND10_1.Y,
                          X2 := AND10_2.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_4             (X1 := EXV_SPS_0026.VAL(* POSITION := 26*26: SIZE := 27* -1:   *) ,
                          X2 := EXV_SPS_0027.VAL(* POSITION := 26*27: SIZE := 27* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     OR10_5              (X1 := EXV_SPS_0043.VAL(* POSITION := 21*32: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0042.VAL(* POSITION := 23*33: SIZE := 31* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     AND10_6             (X1 := EXV_SPS_0021.VAL(* POSITION := 11*8: SIZE := 30* -1:   *) ,
                          X2 := EXV_SPS_0037.VAL(* POSITION := 11*9: SIZE := 30* -1:   *) ,
                          X3 := EXV_SPS_0022.VAL(* POSITION := 11*10: SIZE := 30* -1:   *) ,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     AND10_7             (X1 := EXV_SPS_0036.VAL(* POSITION := 42*43: SIZE := 31* -1:   *) ,
                          X2 := NOT EXV_SPS_0018.VAL(* POSITION := 33*44: SIZE := 40* -1:   *) ,
                          X3 := NOT EXV_SPS_0009.VAL(* POSITION := 34*45: SIZE := 39* -1:   *) ,
                          X4 := NOT EXV_SPS_0010.VAL(* POSITION := 34*46: SIZE := 39* -1:   *) ,
                          X5 := EXV_SPS_0017.VAL(* POSITION := 40*47: SIZE := 33* -1:   *) ,
                          X6 := EXV_SPS_0031.VAL(* POSITION := 42*48: SIZE := 31* -1:   *) ,
                          X7 := OR10_3.Y,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     AND10_8             (X1 := EXV_SPS_0023.VAL(* POSITION := 42*16: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0025.VAL(* POSITION := 42*17: SIZE := 31* -1:   *) ,
                          X3 := NOT EXV_SPS_0024.VAL(* POSITION := 44*18: SIZE := 29* -1:   *) ,
                          X4 := NOT EXV_SPS_0039.VAL(* POSITION := 41*19: SIZE := 32* -1:   *) ,
                          X5 := NOT EXV_SPS_0028.VAL(* POSITION := 47*20: SIZE := 26* -1:   *) ,
                          X6 := NOT EXV_SPS_0038.VAL(* POSITION := 43*21: SIZE := 30* -1:   *) ,
                          X7 := NOT AND10_4.Y,
                          X8 := NOT OR10_5.Y,
                          X9 := 1,
                          X10 := 1);



     OR10_9              (X1 := AND10_6.Y,
                          X2 := AND10_7.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     AND10_10            (X1 := OR10_9.Y,
                          X2 := AND10_8.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     AND10_11            (X1 := NOT EXV_SPS_0026.VAL(* POSITION := 46*65: SIZE := 27* -1:   *) ,
                          X2 := NOT EXV_SPS_0024.VAL(* POSITION := 44*66: SIZE := 29* -1:   *) ,
                          X3 := EXV_SPS_0032.VAL(* POSITION := 41*67: SIZE := 32* -1:   *) ,
                          X4 := EXV_SPS_0023.VAL(* POSITION := 42*68: SIZE := 31* -1:   *) ,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     OR10_12             (X1 := AND10_10.Y,
                          X2 := AND10_11.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     AND10_13            (X1 := AND10_6.Y,
                          X2 := AND10_8.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_14            (X1 := AND10_8.Y,
                          X2 := AND10_7.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     EXV_SPS_0011        (LNK := 11,
                          VAL := AND10_7.Y(* POSITION := 100*43: SIZE := 29* -1:   *) );
     EXV_SPS_0012        (LNK := 12,
                          VAL := AND10_14.Y(* POSITION := 117*16: SIZE := 30* -1:   *) );
     EXV_SPS_0013        (LNK := 13,
                          VAL := OR10_9.Y(* POSITION := 120*23: SIZE := 27* -1:   *) );
     EXV_SPS_0014        (LNK := 14,
                          VAL := AND10_10.Y(* POSITION := 119*30: SIZE := 31* -1:   *) );
     EXV_SPS_0015        (LNK := 15,
                          VAL := AND10_11.Y(* POSITION := 97*65: SIZE := 29* -1:   *) );
     EXV_SPS_0016        (LNK := 16,
                          VAL := OR10_12.Y(* POSITION := 120*39: SIZE := 31* -1:   *) );
     EXV_SPS_0019        (LNK := 19,
                          VAL := AND10_6.Y(* POSITION := 65*6: SIZE := 29* -1:   *) );
     EXV_SPS_0020        (LNK := 20,
                          VAL := AND10_13.Y(* POSITION := 116*8: SIZE := 30* -1:   *) );
     EXV_SPS_0033        (LNK := 33,
                          VAL := AND10_10.Y(* POSITION := 119*31: SIZE := 35* -1:   *) );
     EXV_SPS_0034        (LNK := 34,
                          VAL := AND10_11.Y(* POSITION := 97*66: SIZE := 34* -1:   *) );
     EXV_SPS_0035        (LNK := 35,
                          VAL := OR10_12.Y(* POSITION := 120*38: SIZE := 37* -1:   *) );
     EXV_SPS_0044        (LNK := 44,
                          VAL := OR10_5.Y(* POSITION := 49*37: SIZE := 37* -1:   *) );
     EXV_SPS_0045        (LNK := 45,
                          VAL := AND10_4.Y(* POSITION := 50*38: SIZE := 30* -1:   *) );

(* COMMENT_TEXT;{X=65,Y=1};{Width=33, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Enclavamientos Cierre Interruptor de 69 kV *)
(* COMMENT_TEXT;{X=2,Y=62};{Width=34, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Enclavamientos Apertura Interruptor de 69 kV *)
(* COMMENT_TEXT;{X=7,Y=27};{Width=16, Height=1};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE SCDB2 de F003 *)
(* COMMENT_TEXT;{X=7,Y=26};{Width=16, Height=1};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE SCDB1 de F002 *)
(* COMMENT_TEXT;{X=5,Y=38};{Width=24, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := -16777216,WallpaperGamma := 100,PartitionID := 1,;INTERRUPTOR OPERACION *)
(* COMMENT_TEXT;{X=6,Y=4};{Width=23, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := -16777216,WallpaperGamma := 100,PartitionID := 1,;INTERRUPTOR MANTENIMIENTO  *)
(* COMMENT_TEXT;{X=5,Y=13};{Width=23, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := -16777216,WallpaperGamma := 100,PartitionID := 1,;ENCLAVAMIENTOS COMUNES *)
(* COMMENT_TEXT;{X=14,Y=65};{Width=16, Height=1};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE SCDB1 de F002 *)
(* COMMENT_TEXT;{X=7,Y=21};{Width=22, Height=1};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE 86BF 13.8kV No Op  F004 *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Falla_PTs ----------  *)

PROGRAM CHART_Falla_PTs
{COMMENT := "Falla PTs";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_3'; POSITION := 44,10; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_5'; POSITION := 44,24; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_3;1  *)
AND10_3         { COMMENT := 'and10_1'; POSITION := 66,9; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_4;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_4;1  *)
AND10_4         { COMMENT := 'and10_2'; POSITION := 66,17; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_5;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_5;1  *)
OR10_5          { COMMENT := 'or10_2'; POSITION := 51,40; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_6;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_6;1  *)
OR10_6          { COMMENT := 'or10_4'; POSITION := 89,12; SIZE := 12, 12; } :OR10;         

     (* 0046 - GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0046   {COMMENT := "GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#Meas.point V-3ph 1#VT miniatureCB#>Open##1";}:OEXV_BO_SPS;

     (* 0047 - GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0047   {COMMENT := "GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#Meas.point V-1ph 1#VT miniatureCB#>Open##1";}:OEXV_BO_SPS;

     (* 0048 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaPTN1B1 *)
     EXV_SPS_0048   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaPTN1B1";DESC := "0##Application#Usuario#Entradas#Falla MCB PT Barra 1 69kV N1##1";}:IEXV_SPS_BO;

     (* 0049 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaPTN1B2 *)
     EXV_SPS_0049   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaPTN1B2";DESC := "0##Application#Usuario#Entradas#Falla MCB PT Barra 2 69kV N1##1";}:IEXV_SPS_BO;

     (* 0050 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaPTN1BPCyM *)
     EXV_SPS_0050   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaPTN1BPCyM";DESC := "0##Application#Usuario#Entradas#Falla MCB PT Barra1_2 PCyM N1##1";}:IEXV_SPS_BO;

     (* 0051 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaPT138PCyM *)
     EXV_SPS_0051   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaPT138PCyM";DESC := "0##Application#Usuario#Entradas#Falla MCB PT 13.8kV PCyM N1##1";}:IEXV_SPS_BO;

     (* 0052 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaPT138N1 *)
     EXV_SPS_0052   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaPT138N1";DESC := "0##Application#Usuario#Entradas#Falla MCB PT 13.8kV TUJ N1##1";}:IEXV_SPS_BO;

     (* 0053 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaPT69 *)
     EXV_SPS_0053   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaPT69";DESC := "0##Application#Usuario#Logicas#Falla PT Alta##1";}:OEXV_BO_SPS;

     (* 0054 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaPT138 *)
     EXV_SPS_0054   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaPT138";DESC := "0##Application#Usuario#Logicas#Falla PT Baja##1";}:OEXV_BO_SPS;

     (* 0055 - GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0055   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q1#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0056 - GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0056   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q2#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0057 - GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOff *)
     EXV_SPS_0057   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOff";DESC := "0##Application#6T4-Q1#Disconnector#Position#open##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0048        (LNK := 48);

     EXV_SPS_0049        (LNK := 49);

     EXV_SPS_0050        (LNK := 50);

     EXV_SPS_0051        (LNK := 51);

     EXV_SPS_0052        (LNK := 52);

     EXV_SPS_0055        (LNK := 55);

     EXV_SPS_0056        (LNK := 56);

     EXV_SPS_0057        (LNK := 57);

     OR10_1              (X1 := EXV_SPS_0050.VAL(* POSITION := 2*13: SIZE := 36* -1:   *) ,
                          X2 := EXV_SPS_0048.VAL(* POSITION := 2*14: SIZE := 36* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := EXV_SPS_0050.VAL(* POSITION := 2*27: SIZE := 36* -1:   *) ,
                          X2 := EXV_SPS_0049.VAL(* POSITION := 2*28: SIZE := 36* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_3             (X1 := EXV_SPS_0055.VAL(* POSITION := 28*8: SIZE := 31* -1:   *) ,
                          X2 := OR10_1.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_4             (X1 := EXV_SPS_0056.VAL(* POSITION := 29*20: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0057.VAL(* POSITION := 30*21: SIZE := 30* -1:   *) ,
                          X3 := OR10_2.Y,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     OR10_5              (X1 := EXV_SPS_0051.VAL(* POSITION := 10*43: SIZE := 35* -1:   *) ,
                          X2 := EXV_SPS_0052.VAL(* POSITION := 10*44: SIZE := 35* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     OR10_6              (X1 := AND10_3.Y,
                          X2 := AND10_4.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     EXV_SPS_0046        (LNK := 46,
                          VAL := OR10_6.Y(* POSITION := 108*16: SIZE := 39* -1:   *) );
     EXV_SPS_0047        (LNK := 47,
                          VAL := OR10_5.Y(* POSITION := 70*44: SIZE := 39* -1:   *) );
     EXV_SPS_0053        (LNK := 53,
                          VAL := OR10_6.Y(* POSITION := 108*15: SIZE := 28* -1:   *) );
     EXV_SPS_0054        (LNK := 54,
                          VAL := OR10_5.Y(* POSITION := 70*43: SIZE := 28* -1:   *) );

(* COMMENT_TEXT;{X=35,Y=36};{Width=17, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Falla Mcb PT Lado 13,8 kV *)
(* COMMENT_TEXT;{X=34,Y=2};{Width=17, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Falla Mcb PT Lado 69 kV *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Alarmas ----------  *)

PROGRAM CHART_Alarmas
{COMMENT := "Alarmas";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 63,30; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_2'; POSITION := 63,44; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_3;1  *)
OR10_3          { COMMENT := 'or10_3'; POSITION := 63,51; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_4;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_4;1  *)
OR10_4          { COMMENT := 'or10_4'; POSITION := 63,58; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_5;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_5;1  *)
OR10_5          { COMMENT := 'or10_5'; POSITION := 63,37; SIZE := 12, 12; } :OR10;         

               
     (* PartitionInfo;PartitionID CONNECT_6;1  *)
CONNECT_6       { COMMENT := 'connect_6'; POSITION := 63,3; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_7;1  *)
CONNECT_7       { COMMENT := 'connect_7'; POSITION := 63,8; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_8;1  *)
CONNECT_8       { COMMENT := 'connect_8'; POSITION := 63,13; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_9;1  *)
CONNECT_9       { COMMENT := 'connect_9'; POSITION := 63,18; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_10;1  *)
CONNECT_10      { COMMENT := 'connect_1'; POSITION := 63,24; SIZE := 12, 12; } :CONNECT;      

               

     (* IO_IOUNIT;TON_11;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TON_11;1  *)
TON_11          { COMMENT := 'ton_1'; POSITION := 88,30; SIZE := 12, 12; } :TON;          

               

     (* IO_IOUNIT;TON_12;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TON_12;1  *)
TON_12          { COMMENT := 'ton_2'; POSITION := 88,44; SIZE := 12, 12; } :TON;          

               

     (* IO_IOUNIT;TON_13;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TON_13;1  *)
TON_13          { COMMENT := 'ton_3'; POSITION := 88,51; SIZE := 12, 12; } :TON;          

               

     (* IO_IOUNIT;TON_14;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TON_14;1  *)
TON_14          { COMMENT := 'ton_4'; POSITION := 88,58; SIZE := 12, 12; } :TON;          

               
     (* PartitionInfo;PartitionID GT_D_15;1  *)
GT_D_15         { COMMENT := 'gt_d_3'; POSITION := 64,73; SIZE := 12, 12; } :GT_D;         

               

     (* IO_IOUNIT;TON_16;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TON_16;1  *)
TON_16          { COMMENT := 'ton_5'; POSITION := 88,37; SIZE := 12, 12; } :TON;          

               
     (* PartitionInfo;PartitionID NEG_17;1  *)
NEG_17          { COMMENT := 'neg_1'; POSITION := 64,79; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID NEG_18;1  *)
NEG_18          { COMMENT := 'neg_2'; POSITION := 64,84; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID CONNECT_19;1  *)
CONNECT_19      { COMMENT := 'connect_2'; POSITION := 64,89; SIZE := 12, 12; } :CONNECT;      

               

     (* IO_IOUNIT;TON_20;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TON_20;1  *)
TON_20          { COMMENT := 'ton_6'; POSITION := 64,95; SIZE := 12, 12; } :TON;          

               
     (* PartitionInfo;PartitionID NEG_21;1  *)
NEG_21          { COMMENT := 'neg_3'; POSITION := 64,102; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID NEG_22;1  *)
NEG_22          { COMMENT := 'neg_4'; POSITION := 64,107; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID NEG_23;1  *)
NEG_23          { COMMENT := 'neg_5'; POSITION := 64,112; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID CONNECT_24;1  *)
CONNECT_24      { COMMENT := 'connect_3'; POSITION := 64,118; SIZE := 12, 12; } :CONNECT;      

               

     (* IO_IOUNIT;TON_25;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TON_25;1  *)
TON_25          { COMMENT := 'ton_7'; POSITION := 88,73; SIZE := 12, 12; } :TON;          

     (* 0058 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.ResetLeds *)
     EXV_SPS_0058   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.ResetLeds";DESC := "0##Application#Usuario#Logicas#Reset Leds##1";}:OEXV_SS_SPS;

     (* 0059 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.ReleSimulat *)
     EXV_SPS_0059   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.ReleSimulat";DESC := "0##Application#Usuario#Logicas#Modo Simulacion##1";}:OEXV_SS_SPS;

     (* 0060 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.RelePrueba *)
     EXV_SPS_0060   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.RelePrueba";DESC := "0##Application#Usuario#Logicas#Modo Prueba##1";}:OEXV_SS_SPS;

     (* 0061 - GDL69TRF2BCU_.Application.LLN0_Application.LedTstOut *)
     EXV_SPS_0061   {COMMENT := "GDL69TRF2BCU_.Application.LLN0_Application.LedTstOut";DESC := "0##Application#General#LED have been reset##1";}:IEXV_SPS_SS;

     (* 0062 - GDL69TRF2BCU_.Application.LPHD_Application.SimuMode *)
     EXV_SPS_0062   {COMMENT := "GDL69TRF2BCU_.Application.LPHD_Application.SimuMode";DESC := "0##Application#Device#Simulation mode active##1";}:IEXV_SPS_SS;

     (* 0063 - GDL69TRF2BCU_.Application.LPHD_Application.CommMode *)
     EXV_SPS_0063   {COMMENT := "GDL69TRF2BCU_.Application.LPHD_Application.CommMode";DESC := "0##Application#Device#Commiss. mode active##1";}:IEXV_SPS_SS;

     (* 0064 - GDL69TRF2BCU_.Application.LLN0_Application.TstModOn *)
     EXV_SPS_0064   {COMMENT := "GDL69TRF2BCU_.Application.LLN0_Application.TstModOn";DESC := "0##Application#General#>Test mode on##1";}:IEXV_SPS_SS;

     (* 0065 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.ReleCommis *)
     EXV_SPS_0065   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.ReleCommis";DESC := "0##Application#Usuario#Logicas#Modo Commissioning##1";}:OEXV_SS_SPS;

     (* 0066 - GDL69TRF2BCU_.Application.LLN0_Application.SwAuthKS.SwitchingAuthorityKeySetting_Local *)
     EXV_SPS_0066   {COMMENT := "GDL69TRF2BCU_.Application.LLN0_Application.SwAuthKS.SwitchingAuthorityKeySetting_Local";DESC := "0##Application#General#Sw.authority key/set#local##1";}:IEXV_SPS_SS;

     (* 0067 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.IEDLocal *)
     EXV_SPS_0067   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.IEDLocal";DESC := "0##Application#Usuario#Logicas#IED Local##1";}:OEXV_SS_SPS;

     (* 0068 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PosIndetQ9 *)
     EXV_SPS_0068   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PosIndetQ9";DESC := "0##Application#Usuario#Logicas#Anomalia Secc Trafo Q9##1";}:OEXV_BO_SPS;

     (* 0069 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PosIndetQ069 *)
     EXV_SPS_0069   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PosIndetQ069";DESC := "0##Application#Usuario#Logicas#Anomalia Int 69kV Q0##1";}:OEXV_BO_SPS;

     (* 0070 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PosIndetQ013 *)
     EXV_SPS_0070   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PosIndetQ013";DESC := "0##Application#Usuario#Logicas#Anomalia Int 13.8kV Q0##1";}:OEXV_BO_SPS;

     (* 0071 - GDL69TRF2BCU_.Application.FG1_StandardUI.FN1_OMV_OpVal_3ph.FB1_OpMeas_Power_3ph_Pres.TotVA *)
     EXV_MV_0071    {COMMENT := "GDL69TRF2BCU_.Application.FG1_StandardUI.FN1_OMV_OpVal_3ph.FB1_OpMeas_Power_3ph_Pres.TotVA";DESC := "0##Application#VI 3ph 1#Operational values#Power#S tot##1";}:IEXV_MVL_DI;

     (* 0072 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.AlmSobreCarg *)
     EXV_SPS_0072   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.AlmSobreCarg";DESC := "0##Application#Usuario#Logicas#Alarma Sobrecarga##1";}:OEXV_BO_SPS;

     (* 0073 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PosIndetQ2 *)
     EXV_SPS_0073   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PosIndetQ2";DESC := "0##Application#Usuario#Logicas#Anomalia Secc Barra 2 Q2##1";}:OEXV_BO_SPS;

     (* 0074 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PosIndetQ1 *)
     EXV_SPS_0074   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PosIndetQ1";DESC := "0##Application#Usuario#Logicas#Anomalia Secc Barra 1 Q1##1";}:OEXV_BO_SPS;

     (* 0075 - GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusIntermediate *)
     EXV_SPS_0075   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusIntermediate";DESC := "0##Application#6T4-Q1#Disconnector#Position#intermediate position##1";}:IEXV_SPS_BO;

     (* 0076 - GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusBad *)
     EXV_SPS_0076   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusBad";DESC := "0##Application#6T4-Q1#Disconnector#Position#disturbed position##1";}:IEXV_SPS_BO;

     (* 0077 - GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusIntermediate *)
     EXV_SPS_0077   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusIntermediate";DESC := "0##Application#6T4-Q2#Disconnector#Position#intermediate position##1";}:IEXV_SPS_BO;

     (* 0078 - GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusBad *)
     EXV_SPS_0078   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusBad";DESC := "0##Application#6T4-Q2#Disconnector#Position#disturbed position##1";}:IEXV_SPS_BO;

     (* 0079 - GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusIntermediate *)
     EXV_SPS_0079   {COMMENT := "GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusIntermediate";DESC := "0##Application#6T4-Q9#Disconnector#Position#intermediate position##1";}:IEXV_SPS_BO;

     (* 0080 - GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusBad *)
     EXV_SPS_0080   {COMMENT := "GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusBad";DESC := "0##Application#6T4-Q9#Disconnector#Position#disturbed position##1";}:IEXV_SPS_BO;

     (* 0081 - GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusIntermediate *)
     EXV_SPS_0081   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusIntermediate";DESC := "0##Application#6T4-Q0#Circuit break.#Position#intermediate position##1";}:IEXV_SPS_BO;

     (* 0082 - GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusBad *)
     EXV_SPS_0082   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusBad";DESC := "0##Application#6T4-Q0#Circuit break.#Position#disturbed position##1";}:IEXV_SPS_BO;

     (* 0083 - GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusIntermediate *)
     EXV_SPS_0083   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusIntermediate";DESC := "0##Application#9T6-Q0#Circuit break.#Position#intermediate position##1";}:IEXV_SPS_BO;

     (* 0084 - GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusBad *)
     EXV_SPS_0084   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusBad";DESC := "0##Application#9T6-Q0#Circuit break.#Position#disturbed position##1";}:IEXV_SPS_BO;

     (* 0085 - GDL69TRF2BCU_.Application.FG2_ComModule.FN1_ComChannel.FBComProtRSTP1.ChLiv *)
     EXV_SPS_0085   {COMMENT := "GDL69TRF2BCU_.Application.FG2_ComModule.FN1_ComChannel.FBComProtRSTP1.ChLiv";DESC := "0##Application#F:ETH-BB-2FO#Channel 1#RSTP#Channel Live##1";}:IEXV_SPS_BO;

     (* 0086 - GDL69TRF2BCU_.Application.FG2_ComModule.FN1_ComChannel.FBComProtRSTP1.RedChLiv *)
     EXV_SPS_0086   {COMMENT := "GDL69TRF2BCU_.Application.FG2_ComModule.FN1_ComChannel.FBComProtRSTP1.RedChLiv";DESC := "0##Application#F:ETH-BB-2FO#Channel 1#RSTP#Redund. Channel Live##1";}:IEXV_SPS_BO;

     (* 0087 - GDL69TRF2BCU_.Application.LTMS_Application.TmSynErr *)
     EXV_SPS_0087   {COMMENT := "GDL69TRF2BCU_.Application.LTMS_Application.TmSynErr";DESC := "0##Application#Time sync.#Time sync. error##1";}:IEXV_SPS_SS;

     (* 0088 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaCanal1 *)
     EXV_SPS_0088   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaCanal1";DESC := "0##Application#Usuario#Logicas#Falla Canal 1##1";}:OEXV_BO_SPS;

     (* 0089 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaCanal2 *)
     EXV_SPS_0089   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaCanal2";DESC := "0##Application#Usuario#Logicas#Falla Canal 2##1";}:OEXV_BO_SPS;

     (* 0090 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaSyncTime *)
     EXV_SPS_0090   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaSyncTime";DESC := "0##Application#Usuario#Logicas#Falla Sincronismo de Tiempo##1";}:OEXV_SS_SPS;

     (* 0091 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.ResoCargQ0 *)
     EXV_SPS_0091   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.ResoCargQ0";DESC := "0##Application#Usuario#Entradas#Resorte Cargado Q0##1";}:IEXV_SPS_BO;

     (* 0092 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.ResoDescQ0 *)
     EXV_SPS_0092   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.ResoDescQ0";DESC := "0##Application#Usuario#Logicas#Resorte Descargado Q0##1";}:OEXV_BO_SPS;

     (* 0093 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS43 *)
     EXV_SPS_0093   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS43";DESC := "0##Application#Usuario#Entradas#Selector Remoto Q1##1";}:IEXV_SPS_BO;

     (* 0094 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS49 *)
     EXV_SPS_0094   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS49";DESC := "0##Application#Usuario#Entradas#Selector Remoto Q2##1";}:IEXV_SPS_BO;

     (* 0095 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS55 *)
     EXV_SPS_0095   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS55";DESC := "0##Application#Usuario#Entradas#Selector Remoto Q9##1";}:IEXV_SPS_BO;

     (* 0096 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.Q1Local *)
     EXV_SPS_0096   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.Q1Local";DESC := "0##Application#Usuario#Logicas#Selector Local Q1##1";}:OEXV_BO_SPS;

     (* 0097 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.Q2Local *)
     EXV_SPS_0097   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.Q2Local";DESC := "0##Application#Usuario#Logicas#Selector Local Q2##1";}:OEXV_BO_SPS;

     (* 0098 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.Q9Local *)
     EXV_SPS_0098   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.Q9Local";DESC := "0##Application#Usuario#Logicas#Selector Local Q9##1";}:OEXV_BO_SPS;

     (* 0099 - GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_VolPhSeqSV.Failure *)
     EXV_SPS_0099   {COMMENT := "GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_VolPhSeqSV.Failure";DESC := "0##Application#Power system#Meas.point V-3ph 1#Supv. ph.seq.V#Failure##1";}:IEXV_SPS_SS;

     (* 0100 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.InvFases *)
     EXV_SPS_0100   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.InvFases";DESC := "0##Application#Usuario#Logicas#Secuencia de Fases Invertida##1";}:OEXV_SS_SPS;
END_VAR

     EXV_SPS_0061        (LNK := 61);

     EXV_SPS_0062        (LNK := 62);

     EXV_SPS_0063        (LNK := 63);

     EXV_SPS_0064        (LNK := 64);

     EXV_SPS_0066        (LNK := 66);

     EXV_MV_0071         (LNK := 71);

     EXV_SPS_0075        (LNK := 75);

     EXV_SPS_0076        (LNK := 76);

     EXV_SPS_0077        (LNK := 77);

     EXV_SPS_0078        (LNK := 78);

     EXV_SPS_0079        (LNK := 79);

     EXV_SPS_0080        (LNK := 80);

     EXV_SPS_0081        (LNK := 81);

     EXV_SPS_0082        (LNK := 82);

     EXV_SPS_0083        (LNK := 83);

     EXV_SPS_0084        (LNK := 84);

     EXV_SPS_0085        (LNK := 85);

     EXV_SPS_0086        (LNK := 86);

     EXV_SPS_0087        (LNK := 87);

     EXV_SPS_0091        (LNK := 91);

     EXV_SPS_0093        (LNK := 93);

     EXV_SPS_0094        (LNK := 94);

     EXV_SPS_0095        (LNK := 95);

     EXV_SPS_0099        (LNK := 99);

     OR10_1              (X1 := EXV_SPS_0075.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X2 := EXV_SPS_0076.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := EXV_SPS_0079.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X2 := EXV_SPS_0080.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_3              (X1 := EXV_SPS_0081.VAL(* POSITION := -1*-1: SIZE := 39* -1:   *) ,
                          X2 := EXV_SPS_0082.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_4              (X1 := EXV_SPS_0083.VAL(* POSITION := -1*-1: SIZE := 39* -1:   *) ,
                          X2 := EXV_SPS_0084.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_5              (X1 := EXV_SPS_0077.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X2 := EXV_SPS_0078.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     CONNECT_6           (IN := EXV_SPS_0061.VAL(* POSITION := 32*6: SIZE := 26* -1:   *) );

     CONNECT_7           (IN := EXV_SPS_0063.VAL(* POSITION := 31*11: SIZE := 26* -1:   *) );

     CONNECT_8           (IN := EXV_SPS_0062.VAL(* POSITION := 30*16: SIZE := 27* -1:   *) );

     CONNECT_9           (IN := EXV_SPS_0064.VAL(* POSITION := 34*21: SIZE := 23* -1:   *) );

     CONNECT_10          (IN := EXV_SPS_0066.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) );

     TON_11              (IN := OR10_1.Y,
                          PT := 10000);

     TON_12              (IN := OR10_2.Y,
                          PT := 10000);

     TON_13              (IN := OR10_3.Y,
                          PT := 100);

     TON_14              (IN := OR10_4.Y,
                          PT := 100);

     GT_D_15             (IN1 := EXV_MV_0071.VAL(* POSITION := 25*76: SIZE := 33* -1:   *) ,
                          IN2 := 39);

     TON_16              (IN := OR10_5.Y,
                          PT := 10000);

     NEG_17              (IN := EXV_SPS_0085.VAL(* POSITION := 25*82: SIZE := 33* -1:   *) );

     NEG_18              (IN := EXV_SPS_0086.VAL(* POSITION := 21*87: SIZE := 37* -1:   *) );

     CONNECT_19          (IN := EXV_SPS_0087.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) );

     TON_20              (IN := EXV_SPS_0091.VAL(* POSITION := 27*98: SIZE := 31* -1:   *) ,
                          PT := 5000);

     NEG_21              (IN := EXV_SPS_0093.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) );

     NEG_22              (IN := EXV_SPS_0094.VAL(* POSITION := 27*110: SIZE := 31* -1:   *) );

     NEG_23              (IN := EXV_SPS_0095.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) );

     CONNECT_24          (IN := EXV_SPS_0099.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) );

     TON_25              (IN := GT_D_15.OUT,
                          PT := 5000);

     EXV_SPS_0058        (LNK := 58,
                          VAL := CONNECT_6.OUT(* POSITION := 82*6: SIZE := 26* -1:   *) );
     EXV_SPS_0059        (LNK := 59,
                          VAL := CONNECT_8.OUT(* POSITION := 82*16: SIZE := 28* -1:   *) );
     EXV_SPS_0060        (LNK := 60,
                          VAL := CONNECT_9.OUT(* POSITION := 82*21: SIZE := 26* -1:   *) );
     EXV_SPS_0065        (LNK := 65,
                          VAL := CONNECT_7.OUT(* POSITION := -1*-1: SIZE := 30* -1:   *) );
     EXV_SPS_0067        (LNK := 67,
                          VAL := CONNECT_10.OUT(* POSITION := -1*-1: SIZE := 25* -1:   *) );
     EXV_SPS_0068        (LNK := 68,
                          VAL := TON_12.Q(* POSITION := 107*47: SIZE := 32* -1:   *) );
     EXV_SPS_0069        (LNK := 69,
                          VAL := TON_13.Q(* POSITION := 107*54: SIZE := 31* -1:   *) );
     EXV_SPS_0070        (LNK := 70,
                          VAL := TON_14.Q(* POSITION := 107*61: SIZE := 32* -1:   *) );
     EXV_SPS_0072        (LNK := 72,
                          VAL := TON_25.Q(* POSITION := 107*76: SIZE := 30* -1:   *) );
     EXV_SPS_0073        (LNK := 73,
                          VAL := TON_16.Q(* POSITION := -1*-1: SIZE := 33* -1:   *) );
     EXV_SPS_0074        (LNK := 74,
                          VAL := TON_11.Q(* POSITION := -1*-1: SIZE := 33* -1:   *) );
     EXV_SPS_0088        (LNK := 88,
                          VAL := NEG_17.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0089        (LNK := 89,
                          VAL := NEG_18.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0090        (LNK := 90,
                          VAL := CONNECT_19.OUT(* POSITION := -1*-1: SIZE := 34* -1:   *) );
     EXV_SPS_0092        (LNK := 92,
                          VAL := TON_20.Q(* POSITION := -1*-1: SIZE := 32* -1:   *) );
     EXV_SPS_0096        (LNK := 96,
                          VAL := NEG_21.OUT(* POSITION := -1*-1: SIZE := 30* -1:   *) );
     EXV_SPS_0097        (LNK := 97,
                          VAL := NEG_22.OUT(* POSITION := -1*-1: SIZE := 30* -1:   *) );
     EXV_SPS_0098        (LNK := 98,
                          VAL := NEG_23.OUT(* POSITION := -1*-1: SIZE := 30* -1:   *) );
     EXV_SPS_0100        (LNK := 100,
                          VAL := CONNECT_24.OUT(* POSITION := -1*-1: SIZE := 35* -1:   *) );


END_PROGRAM

                                                  (* ---------- Program : CHART_Falla_Goose ----------  *)

PROGRAM CHART_Falla_Goose
{COMMENT := "Falla Goose";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=    *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 64,10; SIZE := 12, 12; } :OR10;         

               
     (* PartitionInfo;PartitionID NEG_2;1  *)
NEG_2           { COMMENT := 'neg_1'; POSITION := 65,20; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID NEG_3;1  *)
NEG_3           { COMMENT := 'neg_2'; POSITION := 65,25; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID NEG_4;1  *)
NEG_4           { COMMENT := 'neg_3'; POSITION := 65,30; SIZE := 12, 12; } :NEG;          

     (* 0101 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaGooseF003 *)
     EXV_SPS_0101   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaGooseF003";DESC := "0##Application#Usuario#Logicas#Falla Goose F003##1";}:OEXV_BO_SPS;

     (* 0102 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaGooseGral *)
     EXV_SPS_0102   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaGooseGral";DESC := "0##Application#Usuario#Logicas#Falla Goose General##1";}:OEXV_BO_SPS;

     (* 0103 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaGooseF004 *)
     EXV_SPS_0103   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaGooseF004";DESC := "0##Application#Usuario#Logicas#Falla Goose F004##1";}:OEXV_BO_SPS;

     (* 0104 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaGooseF002 *)
     EXV_SPS_0104   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.FaGooseF002";DESC := "0##Application#Usuario#Logicas#Falla Goose F002##1";}:OEXV_BO_SPS;

     (* 0105 - GDL69TRF2BCU_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB1_LGOS.DiagErr.DiagErr_OK *)
     EXV_SPS_0105   {COMMENT := "GDL69TRF2BCU_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB1_LGOS.DiagErr.DiagErr_OK";DESC := "0##Application#Com. supervision#GOOSE supervis.#F04_F002#Diagnosis error#no error##1";}:IEXV_SPS_BO;

     (* 0106 - GDL69TRF2BCU_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB2_LGOS.DiagErr.DiagErr_OK *)
     EXV_SPS_0106   {COMMENT := "GDL69TRF2BCU_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB2_LGOS.DiagErr.DiagErr_OK";DESC := "0##Application#Com. supervision#GOOSE supervis.#F04_F003#Diagnosis error#no error##1";}:IEXV_SPS_BO;

     (* 0107 - GDL69TRF2BCU_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB3_LGOS.DiagErr.DiagErr_OK *)
     EXV_SPS_0107   {COMMENT := "GDL69TRF2BCU_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB3_LGOS.DiagErr.DiagErr_OK";DESC := "0##Application#Com. supervision#GOOSE supervis.#F04_F004#Diagnosis error#no error##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0105        (LNK := 105);

     EXV_SPS_0106        (LNK := 106);

     EXV_SPS_0107        (LNK := 107);

     OR10_1              (X1 := NOT EXV_SPS_0105.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X2 := NOT EXV_SPS_0106.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X3 := NOT EXV_SPS_0107.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     NEG_2               (IN := EXV_SPS_0105.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) );

     NEG_3               (IN := EXV_SPS_0106.VAL(* POSITION := 13*28: SIZE := 46* -1:   *) );

     NEG_4               (IN := EXV_SPS_0107.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) );

     EXV_SPS_0101        (LNK := 101,
                          VAL := NEG_3.OUT(* POSITION := -1*-1: SIZE := 29* -1:   *) );
     EXV_SPS_0102        (LNK := 102,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 31* -1:   *) );
     EXV_SPS_0103        (LNK := 103,
                          VAL := NEG_4.OUT(* POSITION := -1*-1: SIZE := 29* -1:   *) );
     EXV_SPS_0104        (LNK := 104,
                          VAL := NEG_2.OUT(* POSITION := -1*-1: SIZE := 29* -1:   *) );

(* COMMENT_TEXT;{X=57,Y=2};{Width=23, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := -16777216,WallpaperGamma := 100,PartitionID := 1,;FALLA GOOSE *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Sincronismo ----------  *)

PROGRAM CHART_Sincronismo
{COMMENT := "Sincronismo";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR


               
     (* PartitionInfo;PartitionID LT_D_1;1  *)
LT_D_1          { COMMENT := 'lt_d_2'; POSITION := 53,7; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID LT_D_2;1  *)
LT_D_2          { COMMENT := 'lt_d_3'; POSITION := 53,13; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID LT_D_3;1  *)
LT_D_3          { COMMENT := 'lt_d_4'; POSITION := 53,19; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID GT_D_4;1  *)
GT_D_4          { COMMENT := 'gt_d_1'; POSITION := 53,33; SIZE := 12, 12; } :GT_D;         

               
     (* PartitionInfo;PartitionID GT_D_5;1  *)
GT_D_5          { COMMENT := 'gt_d_2'; POSITION := 53,39; SIZE := 12, 12; } :GT_D;         

               
     (* PartitionInfo;PartitionID GT_D_6;1  *)
GT_D_6          { COMMENT := 'gt_d_3'; POSITION := 53,45; SIZE := 12, 12; } :GT_D;         

               
     (* PartitionInfo;PartitionID LT_D_7;1  *)
LT_D_7          { COMMENT := 'lt_d_1'; POSITION := 53,51; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID LT_D_8;1  *)
LT_D_8          { COMMENT := 'lt_d_5'; POSITION := 53,57; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID LT_D_9;1  *)
LT_D_9          { COMMENT := 'lt_d_6'; POSITION := 53,63; SIZE := 12, 12; } :LT_D;         


     (* IO_IOVISIBILITY;AND10_10;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_10;1  *)
AND10_10        { COMMENT := 'and10_1'; POSITION := 87,11; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_11;X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_11;1  *)
AND10_11        { COMMENT := 'and10_2'; POSITION := 89,46; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID LT_D_12;1  *)
LT_D_12         { COMMENT := 'lt_d_7'; POSITION := 195,32; SIZE := 12, 12; } :LT_D;         


     (* IO_IOVISIBILITY;AND10_13;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_13;1  *)
AND10_13        { COMMENT := 'and10_3'; POSITION := 213,3; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_14;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_14;1  *)
AND10_14        { COMMENT := 'and10_4'; POSITION := 213,11; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_15;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_15;1  *)
OR10_15         { COMMENT := 'or10_1'; POSITION := 243,19; SIZE := 12, 12; } :OR10;         

     (* 0108 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.CondSync25 *)
     EXV_SPS_0108   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.CondSync25";DESC := "0##Application#Usuario#Logicas#Condicion de Sincronismo##1";}:OEXV_BO_SPS;

     (* 0109 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS16 *)
     EXV_SPS_0109   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS16";DESC := "0##Application#Usuario#Logicas#Barra Muerta - Linea muerta##1";}:OEXV_BO_SPS;

     (* 0110 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS17 *)
     EXV_SPS_0110   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS17";DESC := "0##Application#Usuario#Logicas#Barra Viva - Linea muerta##1";}:OEXV_BO_SPS;

     (* 0111 - GDL69TRF2BCU_.Application.FG1_StandardUI.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSA_Mag *)
     EXV_MV_0111    {COMMENT := "GDL69TRF2BCU_.Application.FG1_StandardUI.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSA_Mag";DESC := "0##Application#VI 3ph 1#Fund./sym.comp.#Fundam#Vph#phs A magn.##1";}:IEXV_MVL_DI;

     (* 0112 - GDL69TRF2BCU_.Application.FG1_StandardUI.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSB_Mag *)
     EXV_MV_0112    {COMMENT := "GDL69TRF2BCU_.Application.FG1_StandardUI.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSB_Mag";DESC := "0##Application#VI 3ph 1#Fund./sym.comp.#Fundam#Vph#phs B magn.##1";}:IEXV_MVL_DI;

     (* 0113 - GDL69TRF2BCU_.Application.FG1_StandardUI.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSC_Mag *)
     EXV_MV_0113    {COMMENT := "GDL69TRF2BCU_.Application.FG1_StandardUI.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSC_Mag";DESC := "0##Application#VI 3ph 1#Fund./sym.comp.#Fundam#Vph#phs C magn.##1";}:IEXV_MVL_DI;

     (* 0114 - GDL69TRF2BCU_.Application.FG1_StandardUI_1ph.FN1_OMV_Fund_1ph.FB1_OpMeas_Fund_1ph_Pres.VxC.CMV_Mag *)
     EXV_MV_0114    {COMMENT := "GDL69TRF2BCU_.Application.FG1_StandardUI_1ph.FN1_OMV_Fund_1ph.FB1_OpMeas_Fund_1ph_Pres.VxC.CMV_Mag";DESC := "0##Application#VI 1ph 1#Fundamental#Fundam#V#magnitude##1";}:IEXV_MVL_DI;

     (* 0115 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS23 *)
     EXV_SPS_0115   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS23";DESC := "0##Application#Usuario#Logicas#Barra Muerta##1";}:OEXV_BO_SPS;

     (* 0116 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS24 *)
     EXV_SPS_0116   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS24";DESC := "0##Application#Usuario#Logicas#Barra Viva##1";}:OEXV_BO_SPS;

     (* 0117 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS25 *)
     EXV_SPS_0117   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS25";DESC := "0##Application#Usuario#Logicas#13.8 kV Muerto##1";}:OEXV_BO_SPS;
END_VAR

     EXV_MV_0111         (LNK := 111);

     EXV_MV_0112         (LNK := 112);

     EXV_MV_0113         (LNK := 113);

     EXV_MV_0114         (LNK := 114);

     LT_D_1              (IN1 := EXV_MV_0111.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          IN2 := 40);

     LT_D_2              (IN1 := EXV_MV_0112.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          IN2 := 40);

     LT_D_3              (IN1 := EXV_MV_0113.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          IN2 := 40);

     GT_D_4              (IN1 := EXV_MV_0111.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          IN2 := 80);

     GT_D_5              (IN1 := EXV_MV_0112.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          IN2 := 80);

     GT_D_6              (IN1 := EXV_MV_0113.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          IN2 := 80);

     LT_D_7              (IN1 := EXV_MV_0111.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          IN2 := 110);

     LT_D_8              (IN1 := EXV_MV_0112.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          IN2 := 110);

     LT_D_9              (IN1 := EXV_MV_0113.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          IN2 := 110);

     AND10_10            (X1 := LT_D_1.OUT,
                          X2 := LT_D_2.OUT,
                          X3 := LT_D_3.OUT,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_11            (X1 := GT_D_4.OUT,
                          X2 := GT_D_5.OUT,
                          X3 := GT_D_6.OUT,
                          X4 := LT_D_7.OUT,
                          X5 := LT_D_8.OUT,
                          X6 := LT_D_9.OUT,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     LT_D_12             (IN1 := EXV_MV_0114.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          IN2 := 23);



     AND10_13            (X1 := AND10_10.Y,
                          X2 := LT_D_12.OUT,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_14            (X1 := AND10_11.Y,
                          X2 := LT_D_12.OUT,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     OR10_15             (X1 := AND10_13.Y,
                          X2 := AND10_14.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0108        (LNK := 108,
                          VAL := OR10_15.Y(* POSITION := -1*-1: SIZE := 33* -1:   *) );
     EXV_SPS_0109        (LNK := 109,
                          VAL := AND10_13.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );
     EXV_SPS_0110        (LNK := 110,
                          VAL := AND10_14.Y(* POSITION := -1*-1: SIZE := 34* -1:   *) );
     EXV_SPS_0115        (LNK := 115,
                          VAL := AND10_10.Y(* POSITION := -1*-1: SIZE := 27* -1:   *) );
     EXV_SPS_0116        (LNK := 116,
                          VAL := AND10_11.Y(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0117        (LNK := 117,
                          VAL := LT_D_12.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );

(* COMMENT_TEXT;{X=65,Y=2};{Width=23, Height=3};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Condición de barra muerta *)
(* COMMENT_TEXT;{X=59,Y=28};{Width=22, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;condición de barra viva *)
(* COMMENT_TEXT;{X=182,Y=26};{Width=22, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Lado 13,8 KV Muerto *)

END_PROGRAM

                                                  (* ---------- Program : CHART_2b45b93f_4554_488e_9a6f_110f79ec8d45 ----------  *)

PROGRAM CHART_2b45b93f_4554_488e_9a6f_110f79ec8d45
{COMMENT := "Enclavamiento Q0 13.8 kV";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_8'; POSITION := 78,84; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_14'; POSITION := 49,9; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_3;X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_3;1  *)
AND10_3         { COMMENT := 'and10_16'; POSITION := 64,46; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_4;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_4;1  *)
AND10_4         { COMMENT := 'and10_19'; POSITION := 44,30; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_5;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_5;1  *)
AND10_5         { COMMENT := 'and10_20'; POSITION := 44,36; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID AND10_6;1  *)
AND10_6         { COMMENT := 'and10_5'; POSITION := 64,17; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_7;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_7;1  *)
OR10_7          { COMMENT := 'or10_6'; POSITION := 98,23; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_8;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_8;1  *)
AND10_8         { COMMENT := 'and10_13'; POSITION := 74,63; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_9;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_9;1  *)
AND10_9         { COMMENT := 'and10_17'; POSITION := 98,33; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_10;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_10;1  *)
AND10_10        { COMMENT := 'and10_15'; POSITION := 97,9; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_11;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_11;1  *)
AND10_11        { COMMENT := 'and10_12'; POSITION := 97,16; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_12;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_12;1  *)
OR10_12         { COMMENT := 'or10_7'; POSITION := 110,47; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_13;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_13;1  *)
AND10_13        { COMMENT := 'and10_18'; POSITION := 77,76; SIZE := 12, 12; } :AND10;        

     (* 0118 - GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0118   {COMMENT := "GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#Meas.point V-3ph 1#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0119 - GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0119   {COMMENT := "GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#Meas.point V-1ph 1#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0120 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.CondSync25 *)
     EXV_SPS_0120   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.CondSync25";DESC := "0##Application#Usuario#Logicas#Condicion de Sincronismo##1";}:IEXV_SPS_BO;

     (* 0121 - GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_VolPhSeqSV.Failure *)
     EXV_SPS_0121   {COMMENT := "GDL69TRF2BCU_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_VolPhSeqSV.Failure";DESC := "0##Application#Power system#Meas.point V-3ph 1#Supv. ph.seq.V#Failure##1";}:IEXV_SPS_BO;

     (* 0122 - GDL69TRF2BCU_.Application.FG3_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0122   {COMMENT := "GDL69TRF2BCU_.Application.FG3_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9L5-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0123 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBCEOpe13 *)
     EXV_SPS_0123   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBCEOpe13";DESC := "0##Application#Usuario#Logicas#Enclav Int Oper 13.8kV##1";}:OEXV_BO_SPS;

     (* 0124 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBOper13 *)
     EXV_SPS_0124   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBOper13";DESC := "0##Application#Usuario#Logicas#PerCB Oper Display 13.8kV##1";}:OEXV_BO_SPS;

     (* 0125 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBCEMto13 *)
     EXV_SPS_0125   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBCEMto13";DESC := "0##Application#Usuario#Logicas#Enclav Int Mtto 13.8kV##1";}:OEXV_BO_SPS;

     (* 0126 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBMto13 *)
     EXV_SPS_0126   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBMto13";DESC := "0##Application#Usuario#Logicas#PerCB Mtto Display 13.8kV##1";}:OEXV_BO_SPS;

     (* 0127 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.OROMCB13 *)
     EXV_SPS_0127   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.OROMCB13";DESC := "0##Application#Usuario#Logicas#OR Oper Mtto 13.8kV##1";}:OEXV_BO_SPS;

     (* 0128 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBCE13 *)
     EXV_SPS_0128   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBCE13";DESC := "0##Application#Usuario#Logicas#Permisivo Cierre Q0 13.8kV##1";}:OEXV_BO_SPS;

     (* 0129 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS32 *)
     EXV_SPS_0129   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS32";DESC := "0##Application#Usuario#Logicas#Candado Display Int 13.8kV##1";}:OEXV_BO_SPS;

     (* 0130 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBAB13 *)
     EXV_SPS_0130   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCBAB13";DESC := "0##Application#Usuario#Logicas#Enclav Int Open 13.8kV##1";}:OEXV_BO_SPS;

     (* 0131 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.BahATCls *)
     EXV_SPS_0131   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.BahATCls";DESC := "0##Application#Usuario#Logicas#Bahia AT Cerrada##1";}:OEXV_BO_SPS;

     (* 0132 - GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOff *)
     EXV_SPS_0132   {COMMENT := "GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOff";DESC := "0##Application#6T4-Q9#Disconnector#Position#open##1";}:IEXV_SPS_BO;

     (* 0133 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS102 *)
     EXV_SPS_0133   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS102";DESC := "0##Application#Usuario#Entradas#Selector Remoto 9T6-Q0##1";}:IEXV_SPS_BO;

     (* 0134 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaMcbClOp13 *)
     EXV_SPS_0134   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaMcbClOp13";DESC := "0##Application#Usuario#Entradas#FVCD Cto Cierre/Disparo 1 9T6-Q0##1";}:IEXV_SPS_BO;

     (* 0135 - GDL69TRF2BCU_.Application.FG1_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0135   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9L1-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0136 - GDL69TRF2BCU_.Application.FG2_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0136   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9L3-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0137 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.Trip86TOp *)
     EXV_SPS_0137   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.Trip86TOp";DESC := "0##Application#Usuario#Entradas#Opero 86T##1";}:IEXV_SPS_BO;

     (* 0138 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.Trip86BFB2Op *)
     EXV_SPS_0138   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.Trip86BFB2Op";DESC := "0##Application#Usuario#Entradas#Opero 86BF B2##1";}:IEXV_SPS_BO;

     (* 0139 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.Trip86BFB1Op *)
     EXV_SPS_0139   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.Trip86BFB1Op";DESC := "0##Application#Usuario#Entradas#Opero 86BF B1##1";}:IEXV_SPS_BO;

     (* 0140 - GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0140   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9T6-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0141 - GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn *)
     EXV_SPS_0141   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn";DESC := "0##Application#9T6-Q0#Circuit break.#Position#closed##1";}:IEXV_SPS_BO;

     (* 0142 - GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_CILO.EnaOpnFix *)
     EXV_SPS_0142   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_CILO.EnaOpnFix";DESC := "0##Application#9T6-Q0#Interlocking#>Enable opening(fixed)##1";}:OEXV_BO_SPS;

     (* 0143 - GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_CILO.EnaClsFix *)
     EXV_SPS_0143   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Breaker_3pol.FB1_CILO.EnaClsFix";DESC := "0##Application#9T6-Q0#Interlocking#>Enable closing (fixed)##1";}:OEXV_BO_SPS;

     (* 0144 - GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn *)
     EXV_SPS_0144   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q0#Circuit break.#Position#closed##1";}:IEXV_SPS_BO;

     (* 0145 - GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0145   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q1#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0146 - GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0146   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q2#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0147 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS47 *)
     EXV_SPS_0147   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS47";DESC := "0##Application#Usuario#Logicas#Secc Q1 o Q2 Cerrado##1";}:OEXV_BO_SPS;

     (* 0148 - GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0148   {COMMENT := "GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q9#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0149 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCB13 *)
     EXV_SPS_0149   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerCB13";DESC := "0##Application#Usuario#Logicas#Permisivo de Operacion Q0 13.8 kV##1";}:OEXV_BO_SPS;

     (* 0150 - GDL69TRF2BCU_.Application.FG1_UserDef.FB4_Universal.Rx86BF13 *)
     EXV_SPS_0150   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB4_Universal.Rx86BF13";DESC := "0##Application#Usuario#Rx Goose#Opero 86BF 13.8kV##1";}:IEXV_SPS_BO;

     (* 0151 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS *)
     EXV_SPS_0151   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.SPS";DESC := "0##Application#Usuario#Logicas#Reconectadores Abiertos##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0118        (LNK := 118);

     EXV_SPS_0119        (LNK := 119);

     EXV_SPS_0120        (LNK := 120);

     EXV_SPS_0121        (LNK := 121);

     EXV_SPS_0122        (LNK := 122);

     EXV_SPS_0132        (LNK := 132);

     EXV_SPS_0133        (LNK := 133);

     EXV_SPS_0134        (LNK := 134);

     EXV_SPS_0135        (LNK := 135);

     EXV_SPS_0136        (LNK := 136);

     EXV_SPS_0137        (LNK := 137);

     EXV_SPS_0138        (LNK := 138);

     EXV_SPS_0139        (LNK := 139);

     EXV_SPS_0140        (LNK := 140);

     EXV_SPS_0141        (LNK := 141);

     EXV_SPS_0144        (LNK := 144);

     EXV_SPS_0145        (LNK := 145);

     EXV_SPS_0146        (LNK := 146);

     EXV_SPS_0148        (LNK := 148);

     EXV_SPS_0150        (LNK := 150);

     OR10_1              (X1 := EXV_SPS_0145.VAL(* POSITION := 41*87: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0146.VAL(* POSITION := 41*88: SIZE := 31* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);



     AND10_2             (X1 := EXV_SPS_0132.VAL(* POSITION := 11*12: SIZE := 30* -1:   *) ,
                          X2 := 1,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     AND10_3             (X1 := EXV_SPS_0144.VAL(* POSITION := 26*49: SIZE := 32* -1:   *) ,
                          X2 := NOT EXV_SPS_0118.VAL(* POSITION := 19*50: SIZE := 39* -1:   *) ,
                          X3 := NOT EXV_SPS_0119.VAL(* POSITION := 19*51: SIZE := 39* -1:   *) ,
                          X4 := EXV_SPS_0120.VAL(* POSITION := 25*52: SIZE := 33* -1:   *) ,
                          X5 := NOT EXV_SPS_0121.VAL(* POSITION := 18*53: SIZE := 40* -1:   *) ,
                          X6 := OR10_1.Y,
                          X7 := EXV_SPS_0148.VAL(* POSITION := 27*55: SIZE := 31* -1:   *) ,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     AND10_4             (X1 := EXV_SPS_0134.VAL(* POSITION := 1*33: SIZE := 38* -1:   *) ,
                          X2 := 1,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_5             (X1 := EXV_SPS_0135.VAL(* POSITION := 7*39: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0136.VAL(* POSITION := 7*40: SIZE := 31* -1:   *) ,
                          X3 := EXV_SPS_0122.VAL(* POSITION := 7*41: SIZE := 31* -1:   *) ,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_6             (X1 := NOT EXV_SPS_0137.VAL(* POSITION := 30*20: SIZE := 26* -1:   *) ,
                          X2 := NOT EXV_SPS_0150.VAL(* POSITION := 26*21: SIZE := 30* -1:   *) ,
                          X3 := NOT EXV_SPS_0139.VAL(* POSITION := 28*22: SIZE := 28* -1:   *) ,
                          X4 := NOT EXV_SPS_0138.VAL(* POSITION := 28*23: SIZE := 28* -1:   *) ,
                          X5 := EXV_SPS_0140.VAL(* POSITION := 25*24: SIZE := 31* -1:   *) ,
                          X6 := EXV_SPS_0133.VAL(* POSITION := 23*25: SIZE := 33* -1:   *) ,
                          X7 := 1,
                          X8 := 1,
                          X9 := NOT AND10_4.Y,
                          X10 := AND10_5.Y);



     OR10_7              (X1 := AND10_2.Y,
                          X2 := AND10_3.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     AND10_8             (X1 := EXV_SPS_0133.VAL(* POSITION := 35*66: SIZE := 33* -1:   *) ,
                          X2 := EXV_SPS_0141.VAL(* POSITION := 36*67: SIZE := 32* -1:   *) ,
                          X3 := NOT EXV_SPS_0134.VAL(* POSITION := 30*68: SIZE := 38* -1:   *) ,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     AND10_9             (X1 := OR10_7.Y,
                          X2 := AND10_6.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     AND10_10            (X1 := AND10_2.Y,
                          X2 := AND10_6.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_11            (X1 := AND10_6.Y,
                          X2 := AND10_3.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     OR10_12             (X1 := AND10_9.Y,
                          X2 := AND10_8.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     AND10_13            (X1 := EXV_SPS_0144.VAL(* POSITION := 39*79: SIZE := 32* -1:   *) ,
                          X2 := EXV_SPS_0148.VAL(* POSITION := 40*80: SIZE := 31* -1:   *) ,
                          X3 := OR10_1.Y,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     EXV_SPS_0123        (LNK := 123,
                          VAL := AND10_3.Y(* POSITION := 53*59: SIZE := 32* -1:   *) );
     EXV_SPS_0124        (LNK := 124,
                          VAL := AND10_11.Y(* POSITION := 119*19: SIZE := 34* -1:   *) );
     EXV_SPS_0125        (LNK := 125,
                          VAL := AND10_2.Y(* POSITION := 65*7: SIZE := 32* -1:   *) );
     EXV_SPS_0126        (LNK := 126,
                          VAL := AND10_10.Y(* POSITION := 119*12: SIZE := 34* -1:   *) );
     EXV_SPS_0127        (LNK := 127,
                          VAL := OR10_7.Y(* POSITION := 117*26: SIZE := 31* -1:   *) );
     EXV_SPS_0128        (LNK := 128,
                          VAL := AND10_9.Y(* POSITION := 117*37: SIZE := 34* -1:   *) );
     EXV_SPS_0129        (LNK := 129,
                          VAL := OR10_12.Y(* POSITION := 112*56: SIZE := 34* -1:   *) );
     EXV_SPS_0130        (LNK := 130,
                          VAL := AND10_8.Y(* POSITION := 93*67: SIZE := 32* -1:   *) );
     EXV_SPS_0131        (LNK := 131,
                          VAL := AND10_13.Y(* POSITION := 96*79: SIZE := 29* -1:   *) );
     EXV_SPS_0142        (LNK := 142,
                          VAL := AND10_8.Y(* POSITION := 93*66: SIZE := 34* -1:   *) );
     EXV_SPS_0143        (LNK := 143,
                          VAL := AND10_9.Y(* POSITION := 117*36: SIZE := 35* -1:   *) );
     EXV_SPS_0147        (LNK := 147,
                          VAL := OR10_1.Y(* POSITION := 97*87: SIZE := 31* -1:   *) );
     EXV_SPS_0149        (LNK := 149,
                          VAL := OR10_12.Y(* POSITION := 110*55: SIZE := 38* -1:   *) );
     EXV_SPS_0151        (LNK := 151,
                          VAL := AND10_5.Y(* POSITION := -1*-1: SIZE := 33* -1:   *) );

(* COMMENT_TEXT;{X=70,Y=2};{Width=33, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Enclavamiento Cierre Interruptor de 13.8 kV *)
(* COMMENT_TEXT;{X=12,Y=6};{Width=21, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Interruptor Mantenimiento *)
(* COMMENT_TEXT;{X=18,Y=46};{Width=17, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Interruptor Operación *)
(* COMMENT_TEXT;{X=33,Y=61};{Width=37, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Enclavamientos Apertura Interruptor de 13.8 kV *)

END_PROGRAM

                                                  (* ---------- Program : CHART_dc33a26f_dd72_4905_a63e_bf494be4a4b3 ----------  *)

PROGRAM CHART_dc33a26f_dd72_4905_a63e_bf494be4a4b3
{COMMENT := "Enclavamiento Q1 - Q2";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_4'; POSITION := 49,39; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_9'; POSITION := 49,113; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_3;1  *)
AND10_3         { COMMENT := 'and10_1'; POSITION := 48,6; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_4;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_4;1  *)
AND10_4         { COMMENT := 'and10_2'; POSITION := 48,14; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_5;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_5;1  *)
AND10_5         { COMMENT := 'and10_5'; POSITION := 49,81; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_6;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_6;1  *)
AND10_6         { COMMENT := 'and10_6'; POSITION := 49,89; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_7;X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_7;1  *)
AND10_7         { COMMENT := 'and10_4'; POSITION := 49,29; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_8;X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_8;1  *)
AND10_8         { COMMENT := 'and10_22'; POSITION := 49,103; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_9;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_9;1  *)
OR10_9          { COMMENT := 'or10_1'; POSITION := 70,22; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_10;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_10;1  *)
OR10_10         { COMMENT := 'or10_2'; POSITION := 69,95; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_11;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_11;1  *)
AND10_11        { COMMENT := 'and10_3'; POSITION := 89,28; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_12;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_12;1  *)
AND10_12        { COMMENT := 'and10_7'; POSITION := 93,102; SIZE := 12, 12; } :AND10;        

     (* 0152 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ1 *)
     EXV_SPS_0152   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ1";DESC := "0##Application#Usuario#Logicas#Permisivo Q1##1";}:OEXV_BO_SPS;

     (* 0153 - GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOff *)
     EXV_SPS_0153   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOff";DESC := "0##Application#6T4-Q1#Disconnector#Position#open##1";}:IEXV_SPS_BO;

     (* 0154 - GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0154   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#6T4-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0155 - GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0155   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q1#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0156 - GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0156   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q2#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0157 - GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOff *)
     EXV_SPS_0157   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Switch.FB1_XSWI.Pos.DPC_StatusOff";DESC := "0##Application#6T4-Q2#Disconnector#Position#open##1";}:IEXV_SPS_BO;

     (* 0158 - GDL69TRF2BCU_.Application.FG1_Switch.FB1_CILO.EnaOpnFix *)
     EXV_SPS_0158   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Switch.FB1_CILO.EnaOpnFix";DESC := "0##Application#6T4-Q1#Interlocking#>Enable opening(fixed)##1";}:OEXV_BO_SPS;

     (* 0159 - GDL69TRF2BCU_.Application.FG1_Switch.FB1_CILO.EnaClsFix *)
     EXV_SPS_0159   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Switch.FB1_CILO.EnaClsFix";DESC := "0##Application#6T4-Q1#Interlocking#>Enable closing (fixed)##1";}:OEXV_BO_SPS;

     (* 0160 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS43 *)
     EXV_SPS_0160   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS43";DESC := "0##Application#Usuario#Entradas#Selector Remoto Q1##1";}:IEXV_SPS_BO;

     (* 0161 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaVcdQ1 *)
     EXV_SPS_0161   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaVcdQ1";DESC := "0##Application#Usuario#Entradas#FVCD Q1##1";}:IEXV_SPS_BO;

     (* 0162 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaVcdSecc *)
     EXV_SPS_0162   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaVcdSecc";DESC := "0##Application#Usuario#Entradas#FVCD Cto Control Seccionadores##1";}:IEXV_SPS_BO;

     (* 0163 - GDL69TRF2BCU_.Application.FG2_Switch.FB1_CILO.EnaOpnFix *)
     EXV_SPS_0163   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Switch.FB1_CILO.EnaOpnFix";DESC := "0##Application#6T4-Q2#Interlocking#>Enable opening(fixed)##1";}:OEXV_BO_SPS;

     (* 0164 - GDL69TRF2BCU_.Application.FG2_Switch.FB1_CILO.EnaClsFix *)
     EXV_SPS_0164   {COMMENT := "GDL69TRF2BCU_.Application.FG2_Switch.FB1_CILO.EnaClsFix";DESC := "0##Application#6T4-Q2#Interlocking#>Enable closing (fixed)##1";}:OEXV_BO_SPS;

     (* 0165 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaVcdQ2 *)
     EXV_SPS_0165   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaVcdQ2";DESC := "0##Application#Usuario#Entradas#FVCD Q2##1";}:IEXV_SPS_BO;

     (* 0166 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS49 *)
     EXV_SPS_0166   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS49";DESC := "0##Application#Usuario#Entradas#Selector Remoto Q2##1";}:IEXV_SPS_BO;

     (* 0167 - GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn *)
     EXV_SPS_0167   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q0#Circuit break.#Position#closed##1";}:IEXV_SPS_BO;

     (* 0168 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS113 *)
     EXV_SPS_0168   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS113";DESC := "0##Application#Usuario#Entradas#Bahia Acople Cerrada##1";}:IEXV_SPS_BO;

     (* 0169 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ1AcpCrdo *)
     EXV_SPS_0169   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ1AcpCrdo";DESC := "0##Application#Usuario#Logicas#Permisivo Q1 Acople Cerrado##1";}:OEXV_BO_SPS;

     (* 0170 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.OrQ1 *)
     EXV_SPS_0170   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.OrQ1";DESC := "0##Application#Usuario#Logicas#Or Q1##1";}:OEXV_BO_SPS;

     (* 0171 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ1Gral *)
     EXV_SPS_0171   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ1Gral";DESC := "0##Application#Usuario#Logicas#Permisivo General Q1##1";}:OEXV_BO_SPS;

     (* 0172 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.OrQ2 *)
     EXV_SPS_0172   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.OrQ2";DESC := "0##Application#Usuario#Logicas#Or Q2##1";}:OEXV_BO_SPS;

     (* 0173 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ2AcpCrdo *)
     EXV_SPS_0173   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ2AcpCrdo";DESC := "0##Application#Usuario#Logicas#Permisivo Q2 Acople Cerrado##1";}:OEXV_BO_SPS;

     (* 0174 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ2Gral *)
     EXV_SPS_0174   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ2Gral";DESC := "0##Application#Usuario#Logicas#Permisivo General Q2##1";}:OEXV_BO_SPS;

     (* 0175 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ2 *)
     EXV_SPS_0175   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ2";DESC := "0##Application#Usuario#Logicas#Permisivo Q2##1";}:OEXV_BO_SPS;

     (* 0176 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.ManiInsertQ1 *)
     EXV_SPS_0176   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.ManiInsertQ1";DESC := "0##Application#Usuario#Entradas#Manivela Insertada Q1##1";}:IEXV_SPS_BO;

     (* 0177 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.ManiInsertQ2 *)
     EXV_SPS_0177   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.ManiInsertQ2";DESC := "0##Application#Usuario#Entradas#Manivela Insertada Q2##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0153        (LNK := 153);

     EXV_SPS_0154        (LNK := 154);

     EXV_SPS_0155        (LNK := 155);

     EXV_SPS_0156        (LNK := 156);

     EXV_SPS_0157        (LNK := 157);

     EXV_SPS_0160        (LNK := 160);

     EXV_SPS_0161        (LNK := 161);

     EXV_SPS_0162        (LNK := 162);

     EXV_SPS_0165        (LNK := 165);

     EXV_SPS_0166        (LNK := 166);

     EXV_SPS_0167        (LNK := 167);

     EXV_SPS_0168        (LNK := 168);

     EXV_SPS_0176        (LNK := 176);

     EXV_SPS_0177        (LNK := 177);

     OR10_1              (X1 := EXV_SPS_0153.VAL(* POSITION := 13*42: SIZE := 30* -1:   *) ,
                          X2 := EXV_SPS_0155.VAL(* POSITION := 12*43: SIZE := 31* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := EXV_SPS_0157.VAL(* POSITION := 13*116: SIZE := 30* -1:   *) ,
                          X2 := EXV_SPS_0156.VAL(* POSITION := 12*117: SIZE := 31* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_3             (X1 := EXV_SPS_0157.VAL(* POSITION := 12*9: SIZE := 30* -1:   *) ,
                          X2 := EXV_SPS_0154.VAL(* POSITION := 11*10: SIZE := 31* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_4             (X1 := EXV_SPS_0156.VAL(* POSITION := 11*17: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0167.VAL(* POSITION := 10*18: SIZE := 32* -1:   *) ,
                          X3 := EXV_SPS_0168.VAL(* POSITION := 10*19: SIZE := 32* -1:   *) ,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_5             (X1 := EXV_SPS_0153.VAL(* POSITION := 13*84: SIZE := 30* -1:   *) ,
                          X2 := EXV_SPS_0154.VAL(* POSITION := 12*85: SIZE := 31* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_6             (X1 := EXV_SPS_0155.VAL(* POSITION := 10*92: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0167.VAL(* POSITION := 9*93: SIZE := 32* -1:   *) ,
                          X3 := EXV_SPS_0168.VAL(* POSITION := 9*94: SIZE := 32* -1:   *) ,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_7             (X1 := EXV_SPS_0160.VAL(* POSITION := 10*32: SIZE := 31* -1:   *) ,
                          X2 := NOT EXV_SPS_0161.VAL(* POSITION := 16*33: SIZE := 25* -1:   *) ,
                          X3 := NOT EXV_SPS_0162.VAL(* POSITION := 4*34: SIZE := 37* -1:   *) ,
                          X4 := NOT EXV_SPS_0176.VAL(* POSITION := 9*35: SIZE := 32* -1:   *) ,
                          X5 := OR10_1.Y,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_8             (X1 := EXV_SPS_0166.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X2 := NOT EXV_SPS_0165.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X3 := NOT EXV_SPS_0162.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X4 := NOT EXV_SPS_0177.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
                          X5 := OR10_2.Y,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     OR10_9              (X1 := AND10_3.Y,
                          X2 := AND10_4.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     OR10_10             (X1 := AND10_5.Y,
                          X2 := AND10_6.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     AND10_11            (X1 := OR10_9.Y,
                          X2 := AND10_7.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     AND10_12            (X1 := OR10_10.Y,
                          X2 := AND10_8.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     EXV_SPS_0152        (LNK := 152,
                          VAL := AND10_3.Y(* POSITION := 67*9: SIZE := 27* -1:   *) );
     EXV_SPS_0158        (LNK := 158,
                          VAL := AND10_11.Y(* POSITION := 108*33: SIZE := 34* -1:   *) );
     EXV_SPS_0159        (LNK := 159,
                          VAL := AND10_11.Y(* POSITION := 108*32: SIZE := 35* -1:   *) );
     EXV_SPS_0163        (LNK := 163,
                          VAL := AND10_12.Y(* POSITION := 112*106: SIZE := 34* -1:   *) );
     EXV_SPS_0164        (LNK := 164,
                          VAL := AND10_12.Y(* POSITION := 112*105: SIZE := 35* -1:   *) );
     EXV_SPS_0169        (LNK := 169,
                          VAL := AND10_4.Y(* POSITION := 68*17: SIZE := 35* -1:   *) );
     EXV_SPS_0170        (LNK := 170,
                          VAL := OR10_9.Y(* POSITION := 89*25: SIZE := 24* -1:   *) );
     EXV_SPS_0171        (LNK := 171,
                          VAL := AND10_11.Y(* POSITION := 108*31: SIZE := 31* -1:   *) );
     EXV_SPS_0172        (LNK := 172,
                          VAL := OR10_10.Y(* POSITION := 88*98: SIZE := 24* -1:   *) );
     EXV_SPS_0173        (LNK := 173,
                          VAL := AND10_6.Y(* POSITION := 68*92: SIZE := 35* -1:   *) );
     EXV_SPS_0174        (LNK := 174,
                          VAL := AND10_12.Y(* POSITION := 112*107: SIZE := 31* -1:   *) );
     EXV_SPS_0175        (LNK := 175,
                          VAL := AND10_5.Y(* POSITION := 68*84: SIZE := 27* -1:   *) );

(* COMMENT_TEXT;{X=43,Y=1};{Width=23, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Enclavamiento Seccionador Q1 *)
(* COMMENT_TEXT;{X=45,Y=73};{Width=23, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Enclavamiento Seccionador Q2 *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Enclavamiento_Q9 ----------  *)

PROGRAM CHART_Enclavamiento_Q9
{COMMENT := "Enclavamiento Q9";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_5'; POSITION := 69,22; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_2;X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_8'; POSITION := 69,11; SIZE := 12, 12; } :AND10;        

     (* 0178 - GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ9 *)
     EXV_SPS_0178   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB2_Universal.PerQ9";DESC := "0##Application#Usuario#Logicas#Permisivo Q9##1";}:OEXV_BO_SPS;

     (* 0179 - GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOff *)
     EXV_SPS_0179   {COMMENT := "GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOff";DESC := "0##Application#6T4-Q9#Disconnector#Position#open##1";}:IEXV_SPS_BO;

     (* 0180 - GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0180   {COMMENT := "GDL69TRF2BCU_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#6T4-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0181 - GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOn *)
     EXV_SPS_0181   {COMMENT := "GDL69TRF2BCU_.Application.FG3_Switch.FB1_XSWI.Pos.DPC_StatusOn";DESC := "0##Application#6T4-Q9#Disconnector#Position#closed##1";}:IEXV_SPS_BO;

     (* 0182 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaVcdSecc *)
     EXV_SPS_0182   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaVcdSecc";DESC := "0##Application#Usuario#Entradas#FVCD Cto Control Seccionadores##1";}:IEXV_SPS_BO;

     (* 0183 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS55 *)
     EXV_SPS_0183   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.SPS55";DESC := "0##Application#Usuario#Entradas#Selector Remoto Q9##1";}:IEXV_SPS_BO;

     (* 0184 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaVcdQ9 *)
     EXV_SPS_0184   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.FaVcdQ9";DESC := "0##Application#Usuario#Entradas#FVCD Q9##1";}:IEXV_SPS_BO;

     (* 0185 - GDL69TRF2BCU_.Application.FG3_Switch.FB1_CILO.EnaClsFix *)
     EXV_SPS_0185   {COMMENT := "GDL69TRF2BCU_.Application.FG3_Switch.FB1_CILO.EnaClsFix";DESC := "0##Application#6T4-Q9#Interlocking#>Enable closing (fixed)##1";}:OEXV_BO_SPS;

     (* 0186 - GDL69TRF2BCU_.Application.FG3_Switch.FB1_CILO.EnaOpnFix *)
     EXV_SPS_0186   {COMMENT := "GDL69TRF2BCU_.Application.FG3_Switch.FB1_CILO.EnaOpnFix";DESC := "0##Application#6T4-Q9#Interlocking#>Enable opening(fixed)##1";}:OEXV_BO_SPS;

     (* 0187 - GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.ManiInsertQ9 *)
     EXV_SPS_0187   {COMMENT := "GDL69TRF2BCU_.Application.FG1_UserDef.FB1_Universal.ManiInsertQ9";DESC := "0##Application#Usuario#Entradas#Manivela Insertada Q9##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0179        (LNK := 179);

     EXV_SPS_0180        (LNK := 180);

     EXV_SPS_0181        (LNK := 181);

     EXV_SPS_0182        (LNK := 182);

     EXV_SPS_0183        (LNK := 183);

     EXV_SPS_0184        (LNK := 184);

     EXV_SPS_0187        (LNK := 187);

     OR10_1              (X1 := EXV_SPS_0179.VAL(* POSITION := 33*25: SIZE := 30* -1:   *) ,
                          X2 := EXV_SPS_0181.VAL(* POSITION := 32*26: SIZE := 31* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_2             (X1 := EXV_SPS_0180.VAL(* POSITION := 32*14: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0183.VAL(* POSITION := 32*15: SIZE := 31* -1:   *) ,
                          X3 := NOT EXV_SPS_0184.VAL(* POSITION := 38*16: SIZE := 25* -1:   *) ,
                          X4 := NOT EXV_SPS_0182.VAL(* POSITION := 26*17: SIZE := 37* -1:   *) ,
                          X5 := NOT EXV_SPS_0187.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
                          X6 := OR10_1.Y,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     EXV_SPS_0178        (LNK := 178,
                          VAL := AND10_2.Y(* POSITION := 88*16: SIZE := 27* -1:   *) );
     EXV_SPS_0185        (LNK := 185,
                          VAL := AND10_2.Y(* POSITION := 88*15: SIZE := 35* -1:   *) );
     EXV_SPS_0186        (LNK := 186,
                          VAL := AND10_2.Y(* POSITION := 88*14: SIZE := 34* -1:   *) );

(* COMMENT_TEXT;{X=63,Y=8};{Width=23, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Enclavamiento Seccionador Q9 *)

END_PROGRAM

CONFIGURATION  PLC_CONTROL 
   RESOURCE PLANS { COMMENT := "Txt100_100";} ON CPU32
     TASK EVENT_SLOW     { TICKS := 1300;}(PRIORITY := INTERNAL);
     TASK EVENT_FAST     { TICKS := 255;}(PRIORITY := INTERNAL);
     TASK MEASUREMENT    { TICKS := 2536;}(PRIORITY := INTERNAL);
     TASK INTERLOCKING   { TICKS := 2173;}(PRIORITY := INTERNAL);

     PROGRAM FBI001 WITH EVENT_SLOW:  CHART_Enclavamiento_Q0_69_kV;
     PROGRAM FBI002 WITH EVENT_SLOW:  CHART_Falla_PTs;
     PROGRAM FBI003 WITH EVENT_SLOW:  CHART_Alarmas;
     PROGRAM FBI004 WITH EVENT_SLOW:  CHART_Falla_Goose;
     PROGRAM FBI005 WITH EVENT_SLOW:  CHART_Sincronismo;
     PROGRAM FBI006 WITH EVENT_SLOW:  CHART_2b45b93f_4554_488e_9a6f_110f79ec8d45;
     PROGRAM FBI007 WITH EVENT_SLOW:  CHART_dc33a26f_dd72_4905_a63e_bf494be4a4b3;
     PROGRAM FBI008 WITH EVENT_SLOW:  CHART_Enclavamiento_Q9;

   END_RESOURCE

 END_CONFIGURATION