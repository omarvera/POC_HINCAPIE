
                                                  (* ---------- Structure : SSPS ----------  *)
TYPE SSPS:
STRUCT
        SP   :  BOOL;
         Q   :  WORD;
END_STRUCT;
END_TYPE


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



                                                  (* ---------- EV Function Block : IEXV_MVL_RE ----------  *)

FUNCTION_BLOCK IEXV_MVL_RE
VAR_INPUT
        LNK :UINT := 0;
END_VAR
VAR_OUTPUT
        VAL :REAL;
END_VAR
VAR
        INI :BOOL := 0;
        LNKPTR :DINT := 0;
END_VAR
        GATE MVre
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



                                                  (* ---------- Function Block : LE_R ----------  *)

FUNCTION_BLOCK LE_R
{
     TICKS           := 1;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10236;
     COMMENT         := 'LE_R';
     NESTED          := NO;
}
VAR_INPUT
        IN1 { TICKS := 0; VISIBLE := YES;}:REAL := 0.0;
        IN2 { TICKS := 0; VISIBLE := YES;}:REAL := 0.0;
END_VAR
VAR_OUTPUT
        OUT { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR
     INI : BOOL  :=  0;
END_VAR
     GATE LEQR
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





                                                  (* ---------- Program : CHART_fdad11fe_d5c5_47c1_b5f1_670b9c204a82 ----------  *)

PROGRAM CHART_fdad11fe_d5c5_47c1_b5f1_670b9c204a82
{COMMENT := "Lógico 50BF";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=           *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 68,6; SIZE := 12, 12; } :OR10;         

     (* 0005 - F06_F002.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Initiation *)
     EXV_SPS_0005   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Initiation";DESC := "0##Application#Interruptor HV#50BF#>Start##1";}:OEXV_BO_SPS;

     (* 0006 - F06_F002.Application.FG1_UserDef.FB5_Universal.SPS12 *)
     EXV_SPS_0006   {COMMENT := "F06_F002.Application.FG1_UserDef.FB5_Universal.SPS12";DESC := "0##Application#Usuario#Entradas#3.8 Arranque 50BF F003##1";}:IEXV_SPS_BO;

     (* 0007 - F06_F002.Application.FG1_UserDef.FB5_Universal.SPS9 *)
     EXV_SPS_0007   {COMMENT := "F06_F002.Application.FG1_UserDef.FB5_Universal.SPS9";DESC := "0##Application#Usuario#Entradas#3.5 Opero 86T##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0006        (LNK := 6);

     EXV_SPS_0007        (LNK := 7);

     OR10_1              (X1 := EXV_SPS_0006.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          X2 := EXV_SPS_0007.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0005        (LNK := 5,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 26* -1:   *) );

(* COMMENT_TEXT;{X=61,Y=2};{Width=26, Height=3};Font := Arial,FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;ARRANQUES 50BF *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Cierre_Q0 ----------  *)

PROGRAM CHART_Cierre_Q0
{COMMENT := "Cierre Q0";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=       *)
VAR



     (* IO_IOVISIBILITY;AND10_1;X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_1;1  *)
AND10_1         { COMMENT := 'and10_1'; POSITION := 67,17; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_2;X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_2'; POSITION := 69,34; SIZE := 12, 12; } :AND10;        

     (* 0008 - F06_F002.Application.FG1_UserDef.FB5_Universal.SPS5 *)
     EXV_SPS_0008   {COMMENT := "F06_F002.Application.FG1_UserDef.FB5_Universal.SPS5";DESC := "0##Application#Usuario#Entradas#3.1 SCD1 - 1##1";}:IEXV_SPS_BO;

     (* 0009 - F06_F002.Application.FG1_UserDef.FB5_Universal.SPS3 *)
     EXV_SPS_0009   {COMMENT := "F06_F002.Application.FG1_UserDef.FB5_Universal.SPS3";DESC := "0##Application#Usuario#Entradas#2.1 Falla MCB PT 69 PCyM##1";}:IEXV_SPS_BO;

     (* 0010 - F06_F002.Application.FG1_UserDef.FB5_Universal.SPS11 *)
     EXV_SPS_0010   {COMMENT := "F06_F002.Application.FG1_UserDef.FB5_Universal.SPS11";DESC := "0##Application#Usuario#Entradas#3.7 Falla MCB 13.8kV Dev 2##1";}:IEXV_SPS_BO;

     (* 0011 - F06_F002.Application.FG1_UserDef.FB5_Universal.SPS9 *)
     EXV_SPS_0011   {COMMENT := "F06_F002.Application.FG1_UserDef.FB5_Universal.SPS9";DESC := "0##Application#Usuario#Entradas#3.5 Opero 86T##1";}:IEXV_SPS_BO;

     (* 0012 - F06_F002.Application.FG1_UserDef.FB5_Universal.SPS1 *)
     EXV_SPS_0012   {COMMENT := "F06_F002.Application.FG1_UserDef.FB5_Universal.SPS1";DESC := "0##Application#Usuario#Entradas#1.3 Q0 Cerrado##1";}:IEXV_SPS_BO;

     (* 0013 - F06_F002.Application.FG1_UserDef.FB5_Universal.SPS2 *)
     EXV_SPS_0013   {COMMENT := "F06_F002.Application.FG1_UserDef.FB5_Universal.SPS2";DESC := "0##Application#Usuario#Entradas#1.4 Anormalidad F06_BCU##1";}:IEXV_SPS_BO;

     (* 0014 - F06_F002.Application.FG1_UserDef.FB5_Universal.SPS10 *)
     EXV_SPS_0014   {COMMENT := "F06_F002.Application.FG1_UserDef.FB5_Universal.SPS10";DESC := "0##Application#Usuario#Entradas#3.6 Cierre Manual Q0##1";}:IEXV_SPS_BO;

     (* 0015 - F06_F002.Application.FG_BinaryIO.BinaryOutputs.FB12_BinaryOutput.InVal *)
     EXV_SPS_0015   {COMMENT := "F06_F002.Application.FG_BinaryIO.BinaryOutputs.FB12_BinaryOutput.InVal";DESC := "0##Application#Binary IO#Binary outputs#Binary output12#Value##1";}:OEXV_BO_SPS;

     (* 0016 - F06_F002.Application.FG1_Breaker_3pol.FB1_CILO.EnaCls *)
     EXV_SPS_0016   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_CILO.EnaCls";DESC := "0##Application#Interruptor HV#Interlocking#>Enable closing##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0008        (LNK := 8);

     EXV_SPS_0009        (LNK := 9);

     EXV_SPS_0010        (LNK := 10);

     EXV_SPS_0011        (LNK := 11);

     EXV_SPS_0012        (LNK := 12);

     EXV_SPS_0013        (LNK := 13);

     EXV_SPS_0014        (LNK := 14);

     AND10_1             (X1 := EXV_SPS_0008.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) ,
                          X2 := EXV_SPS_0009.VAL(* POSITION := -1*-1: SIZE := 34* -1:   *) ,
                          X3 := EXV_SPS_0010.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          X4 := NOT EXV_SPS_0011.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) ,
                          X5 := NOT EXV_SPS_0012.VAL(* POSITION := -1*-1: SIZE := 29* -1:   *) ,
                          X6 := EXV_SPS_0013.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          X7 := EXV_SPS_0014.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_2             (X1 := EXV_SPS_0008.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) ,
                          X2 := EXV_SPS_0009.VAL(* POSITION := -1*-1: SIZE := 34* -1:   *) ,
                          X3 := EXV_SPS_0010.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          X4 := NOT EXV_SPS_0011.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) ,
                          X5 := EXV_SPS_0012.VAL(* POSITION := -1*-1: SIZE := 29* -1:   *) ,
                          X6 := EXV_SPS_0013.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     EXV_SPS_0015        (LNK := 15,
                          VAL := AND10_1.Y(* POSITION := -1*-1: SIZE := 38* -1:   *) );
     EXV_SPS_0016        (LNK := 16,
                          VAL := AND10_2.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );


END_PROGRAM

                                                  (* ---------- Program : CHART_ANSI_27_LV ----------  *)

PROGRAM CHART_ANSI_27_LV
{COMMENT := "ANSI 27 LV";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=       *)
VAR


               
     (* PartitionInfo;PartitionID LE_R_1;1  *)
LE_R_1          { COMMENT := 'le_r_1'; POSITION := 45,13; SIZE := 12, 12; } :LE_R;         

               

     (* IO_IOUNIT;TON_2;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TON_2;1  *)
TON_2           { COMMENT := 'ton_1'; POSITION := 75,13; SIZE := 12, 12; } :TON;          

     (* 0017 - F06_F002.Application.FG1_StandardUI_1ph.FN1_OMV_Fund_1ph.FB1_OpMeas_Fund_1ph_Pres.VxC.CMV_Mag *)
     EXV_MV_0017    {COMMENT := "F06_F002.Application.FG1_StandardUI_1ph.FN1_OMV_Fund_1ph.FB1_OpMeas_Fund_1ph_Pres.VxC.CMV_Mag";DESC := "0##Application#PT  13.8kV#Fundamental#Fundam#V#magnitude##1";}:IEXV_MVL_RE;

     (* 0018 - F06_F002.Application.FG2_PowerTransformerSide.FBChartSetting_SPG1.SPS *)
     EXV_SPS_0018   {COMMENT := "F06_F002.Application.FG2_PowerTransformerSide.FBChartSetting_SPG1.SPS";DESC := "0##Application#13.8 KV#ANSI 27 LV - Enclava#ANSI 27 LV Alarm##1";}:OEXV_BO_SPS;

     (* 0019 - F06_F002.Application.FG2_PowerTransformerSide.FBChartSetting_SPG1.SPS1 *)
     EXV_SPS_0019   {COMMENT := "F06_F002.Application.FG2_PowerTransformerSide.FBChartSetting_SPG1.SPS1";DESC := "0##Application#13.8 KV#ANSI 27 LV - Enclava#ANSI 27 LV PickUp##1";}:OEXV_BO_SPS;
END_VAR

     EXV_MV_0017         (LNK := 17);

     LE_R_1              (IN1 := EXV_MV_0017.VAL(* POSITION := -1*-1: SIZE := 34* -1:   *) ,
                          IN2 := 6.64);


     TON_2               (IN := LE_R_1.OUT,
                          PT := 60000);

     EXV_SPS_0018        (LNK := 18,
                          VAL := TON_2.Q(* POSITION := -1*-1: SIZE := 36* -1:   *) );
     EXV_SPS_0019        (LNK := 19,
                          VAL := LE_R_1.OUT(* POSITION := -1*-1: SIZE := 36* -1:   *) );


END_PROGRAM

                                                  (* ---------- Program : CHART_ANSI_27_HV ----------  *)

PROGRAM CHART_ANSI_27_HV
{COMMENT := "ANSI 27 HV";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=       *)
VAR


               
     (* PartitionInfo;PartitionID LE_R_1;1  *)
LE_R_1          { COMMENT := 'le_r_1'; POSITION := 45,6; SIZE := 12, 12; } :LE_R;         

               
     (* PartitionInfo;PartitionID LE_R_2;1  *)
LE_R_2          { COMMENT := 'le_r_2'; POSITION := 45,14; SIZE := 12, 12; } :LE_R;         

               
     (* PartitionInfo;PartitionID LE_R_3;1  *)
LE_R_3          { COMMENT := 'le_r_3'; POSITION := 46,21; SIZE := 12, 12; } :LE_R;         


     (* IO_IOVISIBILITY;OR10_4;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_4;1  *)
OR10_4          { COMMENT := 'or10_1'; POSITION := 71,12; SIZE := 12, 12; } :OR10;         

               

     (* IO_IOUNIT;TON_5;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TON_5;1  *)
TON_5           { COMMENT := 'ton_1'; POSITION := 101,12; SIZE := 12, 12; } :TON;          

     (* 0020 - F06_F002.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSA_Mag *)
     EXV_MV_0020    {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSA_Mag";DESC := "0##Application#66 KV#Fund./sym.comp.#Fundam#Vph#phs A magn.##1";}:IEXV_MVL_RE;

     (* 0021 - F06_F002.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSB_Mag *)
     EXV_MV_0021    {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSB_Mag";DESC := "0##Application#66 KV#Fund./sym.comp.#Fundam#Vph#phs B magn.##1";}:IEXV_MVL_RE;

     (* 0022 - F06_F002.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSC_Mag *)
     EXV_MV_0022    {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSC_Mag";DESC := "0##Application#66 KV#Fund./sym.comp.#Fundam#Vph#phs C magn.##1";}:IEXV_MVL_RE;

     (* 0023 - F06_F002.Application.FG1_PowerTransformerSide.FBChartSetting_SPG1.SPS1 *)
     EXV_SPS_0023   {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FBChartSetting_SPG1.SPS1";DESC := "0##Application#66 KV#ANSI 27 HV - Enclava#ANSI 27 HV Alarma##1";}:OEXV_BO_SPS;

     (* 0024 - F06_F002.Application.FG1_PowerTransformerSide.FBChartSetting_SPG1.SPS *)
     EXV_SPS_0024   {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FBChartSetting_SPG1.SPS";DESC := "0##Application#66 KV#ANSI 27 HV - Enclava#ANSI 27 HV PickUp##1";}:OEXV_BO_SPS;
END_VAR

     EXV_MV_0020         (LNK := 20);

     EXV_MV_0021         (LNK := 21);

     EXV_MV_0022         (LNK := 22);

     LE_R_1              (IN1 := EXV_MV_0020.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          IN2 := 6.64);

     LE_R_2              (IN1 := EXV_MV_0021.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          IN2 := 6.64);

     LE_R_3              (IN1 := EXV_MV_0022.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          IN2 := 6.64);

     OR10_4              (X1 := LE_R_1.OUT,
                          X2 := LE_R_2.OUT,
                          X3 := LE_R_3.OUT,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     TON_5               (IN := OR10_4.Y,
                          PT := 60000);

     EXV_SPS_0023        (LNK := 23,
                          VAL := TON_5.Q(* POSITION := -1*-1: SIZE := 35* -1:   *) );
     EXV_SPS_0024        (LNK := 24,
                          VAL := OR10_4.Y(* POSITION := 90*21: SIZE := 35* -1:   *) );


END_PROGRAM

CONFIGURATION  PLC_CONTROL 
   RESOURCE PLANS { COMMENT := "Txt100_100";} ON CPU32
     TASK EVENT_SLOW     { TICKS := 1300;}(PRIORITY := INTERNAL);
     TASK EVENT_FAST     { TICKS := 255;}(PRIORITY := INTERNAL);
     TASK MEASUREMENT    { TICKS := 2536;}(PRIORITY := INTERNAL);
     TASK INTERLOCKING   { TICKS := 2173;}(PRIORITY := INTERNAL);

     PROGRAM FBI001 WITH EVENT_FAST:  CHART_fdad11fe_d5c5_47c1_b5f1_670b9c204a82;
     PROGRAM FBI002 WITH EVENT_SLOW:  CHART_Cierre_Q0;
     PROGRAM FBI003 WITH EVENT_SLOW:  CHART_ANSI_27_LV;
     PROGRAM FBI004 WITH EVENT_SLOW:  CHART_ANSI_27_HV;

   END_RESOURCE

 END_CONFIGURATION