
                                                  (* ---------- Structure : SSPS ----------  *)
TYPE SSPS:
STRUCT
        SP   :  BOOL;
         Q   :  WORD;
END_STRUCT;
END_TYPE

                                                  (* ---------- Structure : ID_DPCC ----------  *)
TYPE ID_DPCC:
STRUCT
       IDX   :  DINT;
END_STRUCT;
END_TYPE

                                                  (* ---------- Structure : ID_DPCC2 ----------  *)
TYPE ID_DPCC2:
STRUCT
       IDX   :  DINT;
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



                                                  (* ---------- EV Function Block : IEXV_DPC_DC ----------  *)

FUNCTION_BLOCK IEXV_DPC_DC
VAR_INPUT
        ID_IN :ID_DPCC;
END_VAR
VAR_OUTPUT
        IDOUT :ID_DPCC;
END_VAR
        IDOUT:= ID_IN;
END_FUNCTION_BLOCK



                                                  (* ---------- Function Block : FF_SR_MEM ----------  *)

FUNCTION_BLOCK FF_SR_MEM
{
     TICKS           := 1;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 2;
     HELPID          := 10279;
     COMMENT         := 'FF_SR_MEM';
     NESTED          := NO;
}
VAR_INPUT
        S { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        R { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR_OUTPUT
        OUT { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR
     INI : BOOL  :=  0;
     pMEM : DINT  :=  0;
     OLD : BOOL  :=  0;
END_VAR
     GATE SRMM
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



                                                  (* ---------- Function Block : TOF ----------  *)

FUNCTION_BLOCK TOF
{
     TICKS           := 0;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 1;
     FF_MEMO_MEM     := 0;
     HELPID          := 10295;
     COMMENT         := 'TOF';
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
     GATE TDOF
END_FUNCTION_BLOCK



                                                  (* ---------- Function Block : DPC_DEF ----------  *)

FUNCTION_BLOCK DPC_DEF
{
     TICKS           := 0;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10313;
     COMMENT         := 'DPC_DEF';
     NESTED          := NO;
}
VAR_INPUT
        ID { TICKS := 0; VISIBLE := YES;}:ID_DPCC;
        EN_I { TICKS := 0; VISIBLE := YES;}:BOOL := 1;
        VAL { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        SELECT { TICKS := 0; VISIBLE := YES;}:UINT := 0;
        OPERATE { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        TRIG { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        EDGE { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        ORIGIN { TICKS := 0; VISIBLE := YES;}:UINT := 5;
END_VAR
VAR_OUTPUT
        ID_OUT { TICKS := 0; VISIBLE := YES;}:ID_DPCC2;
        EN_O { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR
     INI : BOOL  :=  0;
     PLNK : DINT  :=  0;
     ACID : UINT  :=  0;
     TRGOLD : BOOL  :=  0;
END_VAR
     GATE DPDF
END_FUNCTION_BLOCK



                                                  (* ---------- Function Block : DPC_EXE ----------  *)

FUNCTION_BLOCK DPC_EXE
{
     TICKS           := 0;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10314;
     COMMENT         := 'DPC_EXE';
     NESTED          := NO;
}
VAR_INPUT
        ID { TICKS := 0; VISIBLE := YES;}:ID_DPCC2;
        EN_I { TICKS := 0; VISIBLE := YES;}:BOOL := 1;
        CANCEL { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        REL_EQ { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        REL_DBL { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        REL_PROT { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        REL_PLBY { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        REL_ILOC { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        RQ_SYNC { TICKS := 0; VISIBLE := YES;}:BOOL := 1;
        PT { TICKS := 0; VISIBLE := YES;}:UINT := 10;
END_VAR
VAR_OUTPUT
        EN_O { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        ACTIVE { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        SEL_OK { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        OK { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        ERR { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR
     INI : BOOL  :=  0;
     PLNK : DINT  :=  0;
     ACID : UINT  :=  0;
END_VAR
     GATE DPEX
END_FUNCTION_BLOCK





                                                  (* ---------- Program : CHART_50BF ----------  *)

PROGRAM CHART_50BF
{COMMENT := "50BF";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR


               
     (* PartitionInfo;PartitionID FF_SR_MEM_1;1  *)
FF_SR_MEM_1     { COMMENT := 'ff_sr_mem_1'; POSITION := 70,4; SIZE := 12, 12; } :FF_SR_MEM;    


     (* IO_IOVISIBILITY;OR10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_1'; POSITION := 70,12; SIZE := 12, 12; } :OR10;         

               
     (* PartitionInfo;PartitionID CONNECT_3;1  *)
CONNECT_3       { COMMENT := 'connect_1'; POSITION := 70,19; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_4;1  *)
CONNECT_4       { COMMENT := 'connect_2'; POSITION := 70,25; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_5;1  *)
CONNECT_5       { COMMENT := 'connect_3'; POSITION := 70,31; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_6;1  *)
CONNECT_6       { COMMENT := 'connect_4'; POSITION := 70,37; SIZE := 12, 12; } :CONNECT;      

     (* 0009 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpEx.ACTGeneral *)
     EXV_SPS_0009   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpEx.ACTGeneral";DESC := "0##Application#Interruptor LV#50BF#Trip T2#general##1";}:IEXV_SPS_BO;

     (* 0010 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Initiation *)
     EXV_SPS_0010   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Initiation";DESC := "0##Application#Interruptor LV#50BF#>Start##1";}:OEXV_BO_SPS;

     (* 0011 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Estado50BF *)
     EXV_SPS_0011   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Estado50BF";DESC := "0##Application#Usuario#Logicas#Estado 50BF 13.8kV##1";}:OEXV_SS_SPS;

     (* 0012 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Blk *)
     EXV_SPS_0012   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Blk";DESC := "0##Application#Interruptor LV#50BF#>Block function##1";}:IEXV_SPS_SS;

     (* 0013 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS24 *)
     EXV_SPS_0013   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS24";DESC := "0##Application#Usuario#Logicas#Reset 86FI##1";}:IEXV_SPS_BO;

     (* 0014 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Op86FI *)
     EXV_SPS_0014   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Op86FI";DESC := "0##Application#Usuario#Logicas#Opero 86FI##1";}:OEXV_BO_SPS;

     (* 0015 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.Rx86TOp *)
     EXV_SPS_0015   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.Rx86TOp";DESC := "0##Application#Usuario#Rx Goose#86T Operado##1";}:IEXV_SPS_BO;

     (* 0016 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Trip50BFE1 *)
     EXV_SPS_0016   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Trip50BFE1";DESC := "0##Application#Usuario#Logicas#Disparo 50BF E1##1";}:OEXV_SS_SPS;

     (* 0017 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Trip50BFE2 *)
     EXV_SPS_0017   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Trip50BFE2";DESC := "0##Application#Usuario#Logicas#Disparo 50BF E2##1";}:OEXV_SS_SPS;

     (* 0018 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Str50BF *)
     EXV_SPS_0018   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Str50BF";DESC := "0##Application#Usuario#Logicas#Arranque 50BF##1";}:OEXV_SS_SPS;

     (* 0019 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Str.ACDGeneral *)
     EXV_SPS_0019   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Str.ACDGeneral";DESC := "0##Application#Interruptor LV#50BF#Pickup#general##1";}:IEXV_SPS_SS;

     (* 0020 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpIn.ACTGeneral *)
     EXV_SPS_0020   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpIn.ACTGeneral";DESC := "0##Application#Interruptor LV#50BF#Retrip T1#general##1";}:IEXV_SPS_SS;

     (* 0021 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpEx.ACTGeneral *)
     EXV_SPS_0021   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpEx.ACTGeneral";DESC := "0##Application#Interruptor LV#50BF#Trip T2#general##1";}:IEXV_SPS_SS;
END_VAR

     EXV_SPS_0009        (LNK := 9);

     EXV_SPS_0012        (LNK := 12);

     EXV_SPS_0013        (LNK := 13);

     EXV_SPS_0015        (LNK := 15);

     EXV_SPS_0019        (LNK := 19);

     EXV_SPS_0020        (LNK := 20);

     EXV_SPS_0021        (LNK := 21);

     FF_SR_MEM_1         (S := EXV_SPS_0009.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          R := EXV_SPS_0013.VAL(* POSITION := -1*-1: SIZE := 26* -1:   *) );

     OR10_2              (X1 := EXV_SPS_0015.VAL(* POSITION := -1*-1: SIZE := 27* -1:   *) ,
                          X2 := 0,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     CONNECT_3           (IN := EXV_SPS_0012.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) );

     CONNECT_4           (IN := EXV_SPS_0019.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) );

     CONNECT_5           (IN := EXV_SPS_0020.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) );

     CONNECT_6           (IN := EXV_SPS_0021.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) );

     EXV_SPS_0010        (LNK := 10,
                          VAL := OR10_2.Y(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0011        (LNK := 11,
                          VAL := CONNECT_3.OUT(* POSITION := -1*-1: SIZE := 30* -1:   *) );
     EXV_SPS_0014        (LNK := 14,
                          VAL := FF_SR_MEM_1.OUT(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0016        (LNK := 16,
                          VAL := CONNECT_5.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0017        (LNK := 17,
                          VAL := CONNECT_6.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0018        (LNK := 18,
                          VAL := CONNECT_4.OUT(* POSITION := -1*-1: SIZE := 27* -1:   *) );

(* COMMENT_TEXT;{X=6,Y=15};{Width=18, Height=1};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE 86T Operado BCU *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Falla_PTs ----------  *)

PROGRAM CHART_Falla_PTs
{COMMENT := "Falla PTs";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 70,3; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_2'; POSITION := 70,10; SIZE := 12, 12; } :OR10;         

     (* 0022 - GDL13_8TRF2F004_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0022   {COMMENT := "GDL13_8TRF2F004_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#PTs Barra 13.8kV#VT miniatureCB#>Open##1";}:OEXV_BO_SPS;

     (* 0023 - GDL13_8TRF2F004_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0023   {COMMENT := "GDL13_8TRF2F004_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#PTs Barra 69kV#VT miniatureCB#>Open##1";}:OEXV_BO_SPS;

     (* 0024 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB1_Universal.FaPTN2TUJLV *)
     EXV_SPS_0024   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB1_Universal.FaPTN2TUJLV";DESC := "0##Application#Usuario#Entradas#Falla MCB PTB13.8kV N2 TUJ PCyM##1";}:IEXV_SPS_BO;

     (* 0025 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB1_Universal.FaPTN2PCyMHV *)
     EXV_SPS_0025   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB1_Universal.FaPTN2PCyMHV";DESC := "0##Application#Usuario#Entradas#Falla MCB PTB 69kV N2 PCyM##1";}:IEXV_SPS_BO;

     (* 0026 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.RxFaPT69N3B2 *)
     EXV_SPS_0026   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.RxFaPT69N3B2";DESC := "0##Application#Usuario#Rx Goose#Falla MCB PT 69kV N3 B2 Campo##1";}:IEXV_SPS_BO;

     (* 0027 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.RxFaPT69N3B1 *)
     EXV_SPS_0027   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.RxFaPT69N3B1";DESC := "0##Application#Usuario#Rx Goose#Falla MCB PT 69kV N3 B1 Campo##1";}:IEXV_SPS_BO;

     (* 0028 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaPTAlta *)
     EXV_SPS_0028   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaPTAlta";DESC := "0##Application#Usuario#Logicas#Falla PT Alta##1";}:OEXV_BO_SPS;

     (* 0029 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaPTBaja *)
     EXV_SPS_0029   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaPTBaja";DESC := "0##Application#Usuario#Logicas#Falla PT Baja##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0024        (LNK := 24);

     EXV_SPS_0025        (LNK := 25);

     EXV_SPS_0026        (LNK := 26);

     EXV_SPS_0027        (LNK := 27);

     OR10_1              (X1 := EXV_SPS_0024.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X2 := 0,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     OR10_2              (X1 := EXV_SPS_0025.VAL(* POSITION := 29*13: SIZE := 35* -1:   *) ,
                          X2 := EXV_SPS_0027.VAL(* POSITION := 28*14: SIZE := 36* -1:   *) ,
                          X3 := EXV_SPS_0026.VAL(* POSITION := 28*15: SIZE := 36* -1:   *) ,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     EXV_SPS_0022        (LNK := 22,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 38* -1:   *) );
     EXV_SPS_0023        (LNK := 23,
                          VAL := OR10_2.Y(* POSITION := 89*13: SIZE := 37* -1:   *) );
     EXV_SPS_0028        (LNK := 28,
                          VAL := OR10_2.Y(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0029        (LNK := 29,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 28* -1:   *) );

(* COMMENT_TEXT;{X=2,Y=14};{Width=20, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Goose Falla PT TUJ 69kV N3 B1 F003 *)
(* COMMENT_TEXT;{X=2,Y=15};{Width=20, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Goose Falla PT TUJ 69kV N3 B2 F003 *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Alarmas ----------  *)

PROGRAM CHART_Alarmas
{COMMENT := "Alarmas";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR


               
     (* PartitionInfo;PartitionID CONNECT_1;1  *)
CONNECT_1       { COMMENT := 'connect_6'; POSITION := 63,3; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_2;1  *)
CONNECT_2       { COMMENT := 'connect_7'; POSITION := 63,8; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_3;1  *)
CONNECT_3       { COMMENT := 'connect_8'; POSITION := 63,13; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_4;1  *)
CONNECT_4       { COMMENT := 'connect_9'; POSITION := 63,18; SIZE := 12, 12; } :CONNECT;      


     (* IO_IOVISIBILITY;AND10_5;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_5;1  *)
AND10_5         { COMMENT := 'and10_1'; POSITION := 63,48; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID CONNECT_6;1  *)
CONNECT_6       { COMMENT := 'connect_1'; POSITION := 63,24; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_7;1  *)
CONNECT_7       { COMMENT := 'connect_2'; POSITION := 63,30; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID NEG_8;1  *)
NEG_8           { COMMENT := 'neg_1'; POSITION := 63,36; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID NEG_9;1  *)
NEG_9           { COMMENT := 'neg_2'; POSITION := 63,42; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID NEG_10;1  *)
NEG_10          { COMMENT := 'neg_3'; POSITION := 64,56; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID CONNECT_11;1  *)
CONNECT_11      { COMMENT := 'connect_3'; POSITION := 64,73; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_12;1  *)
CONNECT_12      { COMMENT := 'connect_4'; POSITION := 64,79; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_13;1  *)
CONNECT_13      { COMMENT := 'connect_5'; POSITION := 64,85; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_14;1  *)
CONNECT_14      { COMMENT := 'connect_10'; POSITION := 64,91; SIZE := 12, 12; } :CONNECT;      

     (* 0030 - GDL13_8TRF2F004_.Application.LLN0_Application.LedTstOut *)
     EXV_SPS_0030   {COMMENT := "GDL13_8TRF2F004_.Application.LLN0_Application.LedTstOut";DESC := "0##Application#General#LED have been reset##1";}:IEXV_SPS_SS;

     (* 0031 - GDL13_8TRF2F004_.Application.LPHD_Application.SimuMode *)
     EXV_SPS_0031   {COMMENT := "GDL13_8TRF2F004_.Application.LPHD_Application.SimuMode";DESC := "0##Application#Device#Simulation mode active##1";}:IEXV_SPS_SS;

     (* 0032 - GDL13_8TRF2F004_.Application.LPHD_Application.CommMode *)
     EXV_SPS_0032   {COMMENT := "GDL13_8TRF2F004_.Application.LPHD_Application.CommMode";DESC := "0##Application#Device#Commiss. mode active##1";}:IEXV_SPS_SS;

     (* 0033 - GDL13_8TRF2F004_.Application.LLN0_Application.TstModOn *)
     EXV_SPS_0033   {COMMENT := "GDL13_8TRF2F004_.Application.LLN0_Application.TstModOn";DESC := "0##Application#General#>Test mode on##1";}:IEXV_SPS_SS;

     (* 0034 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS *)
     EXV_SPS_0034   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS";DESC := "0##Application#Usuario#Logicas#Permisivo Cierre Local CB##1";}:OEXV_BO_SPS;

     (* 0035 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.ResetLeds *)
     EXV_SPS_0035   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.ResetLeds";DESC := "0##Application#Usuario#Logicas#Reset Leds##1";}:OEXV_SS_SPS;

     (* 0036 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.ReleCommis *)
     EXV_SPS_0036   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.ReleCommis";DESC := "0##Application#Usuario#Logicas#Modo Commissioning##1";}:OEXV_SS_SPS;

     (* 0037 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.ReleSimulat *)
     EXV_SPS_0037   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.ReleSimulat";DESC := "0##Application#Usuario#Logicas#Modo Simulacion##1";}:OEXV_SS_SPS;

     (* 0038 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.RelePrueba *)
     EXV_SPS_0038   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.RelePrueba";DESC := "0##Application#Usuario#Logicas#Modo Prueba##1";}:OEXV_SS_SPS;

     (* 0039 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0039   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9L1-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0040 - GDL13_8TRF2F004_.Application.FG2_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0040   {COMMENT := "GDL13_8TRF2F004_.Application.FG2_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9L3-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0041 - GDL13_8TRF2F004_.Application.FG3_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0041   {COMMENT := "GDL13_8TRF2F004_.Application.FG3_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9L5-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0042 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Op86T *)
     EXV_SPS_0042   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Op86T";DESC := "0##Application#Usuario#Logicas#Opero 86T##1";}:OEXV_SS_SPS;

     (* 0043 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.Rx86TOp *)
     EXV_SPS_0043   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.Rx86TOp";DESC := "0##Application#Usuario#Rx Goose#86T Operado##1";}:IEXV_SPS_SS;

     (* 0044 - GDL13_8TRF2F004_.Application.LTMS_Application.TmSynErr *)
     EXV_SPS_0044   {COMMENT := "GDL13_8TRF2F004_.Application.LTMS_Application.TmSynErr";DESC := "0##Application#Time sync.#Time sync. error##1";}:IEXV_SPS_SS;

     (* 0045 - GDL13_8TRF2F004_.Application.FG2_ComModule.FN1_ComChannel.FBComProtRSTP1.ChLiv *)
     EXV_SPS_0045   {COMMENT := "GDL13_8TRF2F004_.Application.FG2_ComModule.FN1_ComChannel.FBComProtRSTP1.ChLiv";DESC := "0##Application#F:ETH-BB-2FO#Channel 1#RSTP#Channel Live##1";}:IEXV_SPS_BO;

     (* 0046 - GDL13_8TRF2F004_.Application.FG2_ComModule.FN1_ComChannel.FBComProtRSTP1.RedChLiv *)
     EXV_SPS_0046   {COMMENT := "GDL13_8TRF2F004_.Application.FG2_ComModule.FN1_ComChannel.FBComProtRSTP1.RedChLiv";DESC := "0##Application#F:ETH-BB-2FO#Channel 1#RSTP#Redund. Channel Live##1";}:IEXV_SPS_BO;

     (* 0047 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaCanal1 *)
     EXV_SPS_0047   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaCanal1";DESC := "0##Application#Usuario#Logicas#Falla Canal 1##1";}:OEXV_BO_SPS;

     (* 0048 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaCanal2 *)
     EXV_SPS_0048   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaCanal2";DESC := "0##Application#Usuario#Logicas#Falla Canal 2##1";}:OEXV_BO_SPS;

     (* 0049 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaSyncTime *)
     EXV_SPS_0049   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaSyncTime";DESC := "0##Application#Usuario#Logicas#Falla Sincronismo de Tiempo##1";}:OEXV_SS_SPS;

     (* 0050 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB1_Universal.SPS1 *)
     EXV_SPS_0050   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB1_Universal.SPS1";DESC := "0##Application#Usuario#Entradas#Posicion Int Q0 Cerrado##1";}:IEXV_SPS_BO;

     (* 0051 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS1 *)
     EXV_SPS_0051   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS1";DESC := "0##Application#Usuario#Logicas#Posicion Int Q0 Abierto##1";}:OEXV_BO_SPS;

     (* 0052 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Trip51 *)
     EXV_SPS_0052   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Trip51";DESC := "0##Application#Usuario#Logicas#Disparo 51##1";}:OEXV_SS_SPS;

     (* 0053 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Trip50 *)
     EXV_SPS_0053   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Trip50";DESC := "0##Application#Usuario#Logicas#Disparo 50##1";}:OEXV_SS_SPS;

     (* 0054 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Trip51N *)
     EXV_SPS_0054   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Trip51N";DESC := "0##Application#Usuario#Logicas#Disparo 51N##1";}:OEXV_SS_SPS;

     (* 0055 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Trip50N *)
     EXV_SPS_0055   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Trip50N";DESC := "0##Application#Usuario#Logicas#Disparo 50N##1";}:OEXV_SS_SPS;

     (* 0056 - GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB1_PTOC_3ph_IOCP_3pol_Bas.Op.ACTGeneral *)
     EXV_SPS_0056   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB1_PTOC_3ph_IOCP_3pol_Bas.Op.ACTGeneral";DESC := "0##Application#Transformador LV#50/51 OC-3ph-B1#Inverse-T 1#Operate#general##1";}:IEXV_SPS_SS;

     (* 0057 - GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB1_PTOC_3ph_DOCP_3pol_Bas.Op.ACTGeneral *)
     EXV_SPS_0057   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB1_PTOC_3ph_DOCP_3pol_Bas.Op.ACTGeneral";DESC := "0##Application#Transformador LV#50/51 OC-3ph-B1#Definite-T 1#Operate#general##1";}:IEXV_SPS_SS;

     (* 0058 - GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_Gnd_overcurrent_Bas.FB1_PTOC_Gnd_IOCP_Bas.Op.ACTGeneral *)
     EXV_SPS_0058   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_Gnd_overcurrent_Bas.FB1_PTOC_Gnd_IOCP_Bas.Op.ACTGeneral";DESC := "0##Application#Transformador LV#50N/51N OC-gnd-B1#Inverse-T 1#Operate#general##1";}:IEXV_SPS_SS;

     (* 0059 - GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_Gnd_overcurrent_Bas.FB1_PTOC_Gnd_DOCP_Bas.Op.ACTGeneral *)
     EXV_SPS_0059   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_Gnd_overcurrent_Bas.FB1_PTOC_Gnd_DOCP_Bas.Op.ACTGeneral";DESC := "0##Application#Transformador LV#50N/51N OC-gnd-B1#Definite-T 1#Operate#general##1";}:IEXV_SPS_SS;
END_VAR

     EXV_SPS_0030        (LNK := 30);

     EXV_SPS_0031        (LNK := 31);

     EXV_SPS_0032        (LNK := 32);

     EXV_SPS_0033        (LNK := 33);

     EXV_SPS_0039        (LNK := 39);

     EXV_SPS_0040        (LNK := 40);

     EXV_SPS_0041        (LNK := 41);

     EXV_SPS_0043        (LNK := 43);

     EXV_SPS_0044        (LNK := 44);

     EXV_SPS_0045        (LNK := 45);

     EXV_SPS_0046        (LNK := 46);

     EXV_SPS_0050        (LNK := 50);

     EXV_SPS_0056        (LNK := 56);

     EXV_SPS_0057        (LNK := 57);

     EXV_SPS_0058        (LNK := 58);

     EXV_SPS_0059        (LNK := 59);

     CONNECT_1           (IN := EXV_SPS_0030.VAL(* POSITION := 32*6: SIZE := 26* -1:   *) );

     CONNECT_2           (IN := EXV_SPS_0032.VAL(* POSITION := 31*11: SIZE := 26* -1:   *) );

     CONNECT_3           (IN := EXV_SPS_0031.VAL(* POSITION := 30*16: SIZE := 27* -1:   *) );

     CONNECT_4           (IN := EXV_SPS_0033.VAL(* POSITION := 34*21: SIZE := 23* -1:   *) );

     AND10_5             (X1 := EXV_SPS_0039.VAL(* POSITION := 26*51: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0040.VAL(* POSITION := 26*52: SIZE := 31* -1:   *) ,
                          X3 := EXV_SPS_0041.VAL(* POSITION := 26*53: SIZE := 31* -1:   *) ,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     CONNECT_6           (IN := EXV_SPS_0043.VAL(* POSITION := -1*-1: SIZE := 27* -1:   *) );

     CONNECT_7           (IN := EXV_SPS_0044.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) );

     NEG_8               (IN := EXV_SPS_0045.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) );

     NEG_9               (IN := EXV_SPS_0046.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) );

     NEG_10              (IN := EXV_SPS_0050.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) );

     CONNECT_11          (IN := EXV_SPS_0056.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) );

     CONNECT_12          (IN := EXV_SPS_0057.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) );

     CONNECT_13          (IN := EXV_SPS_0058.VAL(* POSITION := -1*-1: SIZE := 44* -1:   *) );

     CONNECT_14          (IN := EXV_SPS_0059.VAL(* POSITION := -1*-1: SIZE := 44* -1:   *) );

     EXV_SPS_0034        (LNK := 34,
                          VAL := AND10_5.Y(* POSITION := 82*51: SIZE := 34* -1:   *) );
     EXV_SPS_0035        (LNK := 35,
                          VAL := CONNECT_1.OUT(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0036        (LNK := 36,
                          VAL := CONNECT_2.OUT(* POSITION := -1*-1: SIZE := 30* -1:   *) );
     EXV_SPS_0037        (LNK := 37,
                          VAL := CONNECT_3.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0038        (LNK := 38,
                          VAL := CONNECT_4.OUT(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0042        (LNK := 42,
                          VAL := CONNECT_6.OUT(* POSITION := -1*-1: SIZE := 25* -1:   *) );
     EXV_SPS_0047        (LNK := 47,
                          VAL := NEG_8.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0048        (LNK := 48,
                          VAL := NEG_9.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0049        (LNK := 49,
                          VAL := CONNECT_7.OUT(* POSITION := -1*-1: SIZE := 34* -1:   *) );
     EXV_SPS_0051        (LNK := 51,
                          VAL := NEG_10.OUT(* POSITION := -1*-1: SIZE := 33* -1:   *) );
     EXV_SPS_0052        (LNK := 52,
                          VAL := CONNECT_11.OUT(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0053        (LNK := 53,
                          VAL := CONNECT_12.OUT(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0054        (LNK := 54,
                          VAL := CONNECT_13.OUT(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0055        (LNK := 55,
                          VAL := CONNECT_14.OUT(* POSITION := -1*-1: SIZE := 26* -1:   *) );


END_PROGRAM

                                                  (* ---------- Program : CHART_Interlocking ----------  *)

PROGRAM CHART_Interlocking
{COMMENT := "Interlocking";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR



     (* IO_IOVISIBILITY;AND10_1;X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_1;1  *)
AND10_1         { COMMENT := 'and10_16'; POSITION := 65,21; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_2;X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_1'; POSITION := 65,10; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_3;X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_3;1  *)
AND10_3         { COMMENT := 'and10_2'; POSITION := 65,30; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_4;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_4;1  *)
AND10_4         { COMMENT := 'and10_5'; POSITION := 91,20; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID CONNECT_5;1  *)
CONNECT_5       { COMMENT := 'connect_1'; POSITION := 64,55; SIZE := 12, 12; } :CONNECT;      

     (* 0060 - GDL13_8TRF2F004_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0060   {COMMENT := "GDL13_8TRF2F004_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#PTs Barra 13.8kV#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0061 - GDL13_8TRF2F004_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0061   {COMMENT := "GDL13_8TRF2F004_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#PTs Barra 69kV#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0062 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_CILO.EnaClsFix *)
     EXV_SPS_0062   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_CILO.EnaClsFix";DESC := "0##Application#Interruptor LV#Interlocking#>Enable closing (fixed)##1";}:OEXV_BO_SPS;

     (* 0063 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_CILO.EnaOpnFix *)
     EXV_SPS_0063   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_CILO.EnaOpnFix";DESC := "0##Application#Interruptor LV#Interlocking#>Enable opening(fixed)##1";}:OEXV_SS_SPS;

     (* 0064 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS14 *)
     EXV_SPS_0064   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS14";DESC := "0##Application#Usuario#Logicas#Condicion de Sincronismo##1";}:IEXV_SPS_BO;

     (* 0065 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS19 *)
     EXV_SPS_0065   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS19";DESC := "0##Application#Usuario#Logicas#Permisivo Q0 CLS 1 Display##1";}:OEXV_BO_SPS;

     (* 0066 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS20 *)
     EXV_SPS_0066   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS20";DESC := "0##Application#Usuario#Logicas#Permisivo Q0 CLS 2 Display##1";}:OEXV_BO_SPS;

     (* 0067 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0067   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9L1-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0068 - GDL13_8TRF2F004_.Application.FG2_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0068   {COMMENT := "GDL13_8TRF2F004_.Application.FG2_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9L3-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0069 - GDL13_8TRF2F004_.Application.FG3_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0069   {COMMENT := "GDL13_8TRF2F004_.Application.FG3_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9L5-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0070 - GDL13_8TRF2F004_.Application.FG4_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0070   {COMMENT := "GDL13_8TRF2F004_.Application.FG4_Breaker_3pol_StatusOnly.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#9L7-Q0#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0071 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0071   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#Interruptor LV#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0072 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Op86FI *)
     EXV_SPS_0072   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.Op86FI";DESC := "0##Application#Usuario#Logicas#Opero 86FI##1";}:IEXV_SPS_BO;

     (* 0073 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS21 *)
     EXV_SPS_0073   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS21";DESC := "0##Application#Usuario#Logicas#Permisivo Q0 CLS 3 Display##1";}:OEXV_BO_SPS;

     (* 0074 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.Rx86BFB169 *)
     EXV_SPS_0074   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.Rx86BFB169";DESC := "0##Application#Usuario#Rx Goose#86BF B1 69kV Operado##1";}:IEXV_SPS_BO;

     (* 0075 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.Rx86BFB269 *)
     EXV_SPS_0075   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.Rx86BFB269";DESC := "0##Application#Usuario#Rx Goose#86BF B2 69kV Operado##1";}:IEXV_SPS_BO;

     (* 0076 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.RxPosQ069.DPC_StatusOn *)
     EXV_SPS_0076   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.RxPosQ069.DPC_StatusOn";DESC := "0##Application#Usuario#Rx Goose#Posicion 6T4-Q0#closed##1";}:IEXV_SPS_BO;

     (* 0077 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.RxAnormBCU *)
     EXV_SPS_0077   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.RxAnormBCU";DESC := "0##Application#Usuario#Rx Goose#Anormalidad BCU##1";}:IEXV_SPS_BO;

     (* 0078 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.Rx86TOp *)
     EXV_SPS_0078   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.Rx86TOp";DESC := "0##Application#Usuario#Rx Goose#86T Operado##1";}:IEXV_SPS_BO;

     (* 0079 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.RxAnormBCU *)
     EXV_SPS_0079   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB3_Universal.RxAnormBCU";DESC := "0##Application#Usuario#Rx Goose#Anormalidad BCU##1";}:IEXV_SPS_SS;
END_VAR

     EXV_SPS_0060        (LNK := 60);

     EXV_SPS_0061        (LNK := 61);

     EXV_SPS_0064        (LNK := 64);

     EXV_SPS_0067        (LNK := 67);

     EXV_SPS_0068        (LNK := 68);

     EXV_SPS_0069        (LNK := 69);

     EXV_SPS_0070        (LNK := 70);

     EXV_SPS_0071        (LNK := 71);

     EXV_SPS_0072        (LNK := 72);

     EXV_SPS_0074        (LNK := 74);

     EXV_SPS_0075        (LNK := 75);

     EXV_SPS_0076        (LNK := 76);

     EXV_SPS_0077        (LNK := 77);

     EXV_SPS_0078        (LNK := 78);

     EXV_SPS_0079        (LNK := 79);

     AND10_1             (X1 := NOT EXV_SPS_0061.VAL(* POSITION := 22*24: SIZE := 37* -1:   *) ,
                          X2 := NOT EXV_SPS_0060.VAL(* POSITION := 21*25: SIZE := 38* -1:   *) ,
                          X3 := EXV_SPS_0077.VAL(* POSITION := -1*-1: SIZE := 29* -1:   *) ,
                          X4 := EXV_SPS_0064.VAL(* POSITION := 26*27: SIZE := 33* -1:   *) ,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_2             (X1 := EXV_SPS_0076.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          X2 := EXV_SPS_0071.VAL(* POSITION := 24*14: SIZE := 35* -1:   *) ,
                          X3 := NOT EXV_SPS_0078.VAL(* POSITION := -1*-1: SIZE := 27* -1:   *) ,
                          X4 := NOT EXV_SPS_0074.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
                          X5 := NOT EXV_SPS_0075.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
                          X6 := NOT EXV_SPS_0072.VAL(* POSITION := -1*-1: SIZE := 26* -1:   *) ,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_3             (X1 := EXV_SPS_0067.VAL(* POSITION := 28*33: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0068.VAL(* POSITION := 28*34: SIZE := 31* -1:   *) ,
                          X3 := EXV_SPS_0069.VAL(* POSITION := 28*35: SIZE := 31* -1:   *) ,
                          X4 := EXV_SPS_0070.VAL(* POSITION := 28*36: SIZE := 31* -1:   *) ,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_4             (X1 := AND10_2.Y,
                          X2 := AND10_1.Y,
                          X3 := AND10_3.Y,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     CONNECT_5           (IN := EXV_SPS_0079.VAL(* POSITION := 29*58: SIZE := 29* -1:   *) );

     EXV_SPS_0062        (LNK := 62,
                          VAL := AND10_4.Y(* POSITION := 110*23: SIZE := 39* -1:   *) );
     EXV_SPS_0063        (LNK := 63,
                          VAL := CONNECT_5.OUT(* POSITION := 83*58: SIZE := 38* -1:   *) );
     EXV_SPS_0065        (LNK := 65,
                          VAL := AND10_2.Y(* POSITION := -1*-1: SIZE := 34* -1:   *) );
     EXV_SPS_0066        (LNK := 66,
                          VAL := AND10_1.Y(* POSITION := -1*-1: SIZE := 34* -1:   *) );
     EXV_SPS_0073        (LNK := 73,
                          VAL := AND10_3.Y(* POSITION := 84*33: SIZE := 34* -1:   *) );

(* COMMENT_TEXT;{X=60,Y=1};{Width=33, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Enclavamiento Cierre Interruptor de 13.8 kV *)
(* COMMENT_TEXT;{X=50,Y=50};{Width=37, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Enclavamientos Apertura Interruptor de 13.8 kV *)
(* COMMENT_TEXT;{X=3,Y=13};{Width=16, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Goose Pos Cerrado Q0 6T4 F002 *)
(* COMMENT_TEXT;{X=3,Y=17};{Width=18, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE 86BF B2 69kV No Op BCU *)
(* COMMENT_TEXT;{X=3,Y=16};{Width=18, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE 86BF B1 69kV No Op BCU *)
(* COMMENT_TEXT;{X=2,Y=26};{Width=16, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE Anorm BCU F002 *)
(* COMMENT_TEXT;{X=9,Y=58};{Width=16, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE Anorm BCU F002 *)
(* COMMENT_TEXT;{X=3,Y=15};{Width=18, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE 86T No Op BCU *)

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

     (* 0080 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaGooseF003 *)
     EXV_SPS_0080   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaGooseF003";DESC := "0##Application#Usuario#Logicas#Falla Goose F003##1";}:OEXV_BO_SPS;

     (* 0081 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaGooseGral *)
     EXV_SPS_0081   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaGooseGral";DESC := "0##Application#Usuario#Logicas#Falla Goose General##1";}:OEXV_BO_SPS;

     (* 0082 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaGooseF002 *)
     EXV_SPS_0082   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaGooseF002";DESC := "0##Application#Usuario#Logicas#Falla Goose F002##1";}:OEXV_BO_SPS;

     (* 0083 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaGooseBCU *)
     EXV_SPS_0083   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.FaGooseBCU";DESC := "0##Application#Usuario#Logicas#Falla Goose BCU##1";}:OEXV_BO_SPS;

     (* 0084 - GDL13_8TRF2F004_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB1_LGOS.DiagErr.DiagErr_OK *)
     EXV_SPS_0084   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB1_LGOS.DiagErr.DiagErr_OK";DESC := "0##Application#Com. supervision#GOOSE supervis.#F04_F002#Diagnosis error#no error##1";}:IEXV_SPS_BO;

     (* 0085 - GDL13_8TRF2F004_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB2_LGOS.DiagErr.DiagErr_OK *)
     EXV_SPS_0085   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB2_LGOS.DiagErr.DiagErr_OK";DESC := "0##Application#Com. supervision#GOOSE supervis.#F04_F003#Diagnosis error#no error##1";}:IEXV_SPS_BO;

     (* 0086 - GDL13_8TRF2F004_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB3_LGOS.DiagErr.DiagErr_OK *)
     EXV_SPS_0086   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB3_LGOS.DiagErr.DiagErr_OK";DESC := "0##Application#Com. supervision#GOOSE supervis.#F04_BCU#Diagnosis error#no error##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0084        (LNK := 84);

     EXV_SPS_0085        (LNK := 85);

     EXV_SPS_0086        (LNK := 86);

     OR10_1              (X1 := NOT EXV_SPS_0084.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X2 := NOT EXV_SPS_0085.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X3 := NOT EXV_SPS_0086.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     NEG_2               (IN := EXV_SPS_0084.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) );

     NEG_3               (IN := EXV_SPS_0085.VAL(* POSITION := 13*28: SIZE := 46* -1:   *) );

     NEG_4               (IN := EXV_SPS_0086.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) );

     EXV_SPS_0080        (LNK := 80,
                          VAL := NEG_3.OUT(* POSITION := -1*-1: SIZE := 29* -1:   *) );
     EXV_SPS_0081        (LNK := 81,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 31* -1:   *) );
     EXV_SPS_0082        (LNK := 82,
                          VAL := NEG_2.OUT(* POSITION := -1*-1: SIZE := 29* -1:   *) );
     EXV_SPS_0083        (LNK := 83,
                          VAL := NEG_4.OUT(* POSITION := -1*-1: SIZE := 29* -1:   *) );

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


     (* IO_IOVISIBILITY;AND10_4;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_4;1  *)
AND10_4         { COMMENT := 'and10_1'; POSITION := 87,11; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID GT_D_5;1  *)
GT_D_5          { COMMENT := 'gt_d_4'; POSITION := 193,44; SIZE := 12, 12; } :GT_D;         

               
     (* PartitionInfo;PartitionID LT_D_6;1  *)
LT_D_6          { COMMENT := 'lt_d_7'; POSITION := 194,32; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID GT_D_7;1  *)
GT_D_7          { COMMENT := 'gt_d_1'; POSITION := 53,33; SIZE := 12, 12; } :GT_D;         

               
     (* PartitionInfo;PartitionID GT_D_8;1  *)
GT_D_8          { COMMENT := 'gt_d_2'; POSITION := 53,39; SIZE := 12, 12; } :GT_D;         

               
     (* PartitionInfo;PartitionID GT_D_9;1  *)
GT_D_9          { COMMENT := 'gt_d_3'; POSITION := 53,45; SIZE := 12, 12; } :GT_D;         

               
     (* PartitionInfo;PartitionID LT_D_10;1  *)
LT_D_10         { COMMENT := 'lt_d_1'; POSITION := 53,51; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID LT_D_11;1  *)
LT_D_11         { COMMENT := 'lt_d_5'; POSITION := 53,57; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID LT_D_12;1  *)
LT_D_12         { COMMENT := 'lt_d_6'; POSITION := 53,63; SIZE := 12, 12; } :LT_D;         


     (* IO_IOVISIBILITY;AND10_13;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_13;1  *)
AND10_13        { COMMENT := 'and10_4'; POSITION := 213,11; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_14;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_14;1  *)
AND10_14        { COMMENT := 'and10_3'; POSITION := 213,3; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_15;X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_15;1  *)
AND10_15        { COMMENT := 'and10_2'; POSITION := 89,46; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_16;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_16;1  *)
OR10_16         { COMMENT := 'or10_1'; POSITION := 243,19; SIZE := 12, 12; } :OR10;         

     (* 0087 - GDL13_8TRF2F004_.Application.FG1_StandardUI_1ph.FN1_OMV_Fund_1ph.FB1_OpMeas_Fund_1ph_Pres.VxC.CMV_Mag *)
     EXV_MV_0087    {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI_1ph.FN1_OMV_Fund_1ph.FB1_OpMeas_Fund_1ph_Pres.VxC.CMV_Mag";DESC := "0##Application#VI 1ph 1#Fundamental#Fundam#V#magnitude##1";}:IEXV_MVL_DI;

     (* 0088 - GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSA_Mag *)
     EXV_MV_0088    {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSA_Mag";DESC := "0##Application#Transformador LV#Fund./sym.comp.#Fundam#Vph#phs A magn.##1";}:IEXV_MVL_DI;

     (* 0089 - GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSB_Mag *)
     EXV_MV_0089    {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSB_Mag";DESC := "0##Application#Transformador LV#Fund./sym.comp.#Fundam#Vph#phs B magn.##1";}:IEXV_MVL_DI;

     (* 0090 - GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSC_Mag *)
     EXV_MV_0090    {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSC_Mag";DESC := "0##Application#Transformador LV#Fund./sym.comp.#Fundam#Vph#phs C magn.##1";}:IEXV_MVL_DI;

     (* 0091 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS12 *)
     EXV_SPS_0091   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS12";DESC := "0##Application#Usuario#Logicas#Barra Muerta##1";}:OEXV_BO_SPS;

     (* 0092 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS11 *)
     EXV_SPS_0092   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS11";DESC := "0##Application#Usuario#Logicas#Barra Viva##1";}:OEXV_BO_SPS;

     (* 0093 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS14 *)
     EXV_SPS_0093   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS14";DESC := "0##Application#Usuario#Logicas#Condicion de Sincronismo##1";}:OEXV_BO_SPS;

     (* 0094 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS9 *)
     EXV_SPS_0094   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS9";DESC := "0##Application#Usuario#Logicas#Barra Muerta - Linea muerta##1";}:OEXV_BO_SPS;

     (* 0095 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS10 *)
     EXV_SPS_0095   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS10";DESC := "0##Application#Usuario#Logicas#Barra Viva - Linea muerta##1";}:OEXV_BO_SPS;

     (* 0096 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS15 *)
     EXV_SPS_0096   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS15";DESC := "0##Application#Usuario#Logicas#69 kV Vivo##1";}:OEXV_BO_SPS;

     (* 0097 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS13 *)
     EXV_SPS_0097   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.SPS13";DESC := "0##Application#Usuario#Logicas#69 kV Muerto##1";}:OEXV_BO_SPS;
END_VAR

     EXV_MV_0087         (LNK := 87);

     EXV_MV_0088         (LNK := 88);

     EXV_MV_0089         (LNK := 89);

     EXV_MV_0090         (LNK := 90);

     LT_D_1              (IN1 := EXV_MV_0088.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 23);

     LT_D_2              (IN1 := EXV_MV_0089.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 23);

     LT_D_3              (IN1 := EXV_MV_0090.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 23);

     AND10_4             (X1 := LT_D_1.OUT,
                          X2 := LT_D_2.OUT,
                          X3 := LT_D_3.OUT,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     GT_D_5              (IN1 := EXV_MV_0087.VAL(* POSITION := 152*47: SIZE := 33* -1:   *) ,
                          IN2 := 50);


     LT_D_6              (IN1 := EXV_MV_0087.VAL(* POSITION := 153*35: SIZE := 33* -1:   *) ,
                          IN2 := 23);


     GT_D_7              (IN1 := EXV_MV_0088.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 80);

     GT_D_8              (IN1 := EXV_MV_0089.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 80);

     GT_D_9              (IN1 := EXV_MV_0090.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 80);

     LT_D_10             (IN1 := EXV_MV_0088.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 110);

     LT_D_11             (IN1 := EXV_MV_0089.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 110);

     LT_D_12             (IN1 := EXV_MV_0090.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 110);

     AND10_13            (X1 := AND10_4.Y,
                          X2 := GT_D_5.OUT,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_14            (X1 := AND10_4.Y,
                          X2 := LT_D_6.OUT,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_15            (X1 := GT_D_7.OUT,
                          X2 := GT_D_8.OUT,
                          X3 := GT_D_9.OUT,
                          X4 := LT_D_10.OUT,
                          X5 := LT_D_11.OUT,
                          X6 := LT_D_12.OUT,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     OR10_16             (X1 := 0,
                          X2 := AND10_13.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0091        (LNK := 91,
                          VAL := AND10_4.Y(* POSITION := -1*-1: SIZE := 27* -1:   *) );
     EXV_SPS_0092        (LNK := 92,
                          VAL := AND10_15.Y(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0093        (LNK := 93,
                          VAL := OR10_16.Y(* POSITION := -1*-1: SIZE := 33* -1:   *) );
     EXV_SPS_0094        (LNK := 94,
                          VAL := AND10_14.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );
     EXV_SPS_0095        (LNK := 95,
                          VAL := AND10_13.Y(* POSITION := -1*-1: SIZE := 34* -1:   *) );
     EXV_SPS_0096        (LNK := 96,
                          VAL := GT_D_5.OUT(* POSITION := 212*47: SIZE := 26* -1:   *) );
     EXV_SPS_0097        (LNK := 97,
                          VAL := LT_D_6.OUT(* POSITION := 213*35: SIZE := 27* -1:   *) );

(* COMMENT_TEXT;{X=65,Y=2};{Width=23, Height=3};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Condición de barra muerta 13.8kV *)
(* COMMENT_TEXT;{X=59,Y=28};{Width=22, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;condición de barra viva 13.8kV *)
(* COMMENT_TEXT;{X=182,Y=26};{Width=22, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Lado 69 kV Muerto *)
(* COMMENT_TEXT;{X=179,Y=40};{Width=22, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Lado 69 kV Vivo *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Disparo_por_Fases ----------  *)

PROGRAM CHART_Disparo_por_Fases
{COMMENT := "Disparo por Fases";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 2,Columns := 3,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=    *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_2'; POSITION := 49,54; SIZE := 12, 12; } :OR10;         

               

     (* IO_IOUNIT;TOF_2;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TOF_2;1  *)
TOF_2           { COMMENT := 'tof_2'; POSITION := 69,54; SIZE := 12, 12; } :TOF;          


     (* IO_IOVISIBILITY;OR10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_3;1  *)
OR10_3          { COMMENT := 'or10_12'; POSITION := 69,61; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_4;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_4;1  *)
AND10_4         { COMMENT := 'and10_1'; POSITION := 88,54; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_5;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_5;1  *)
OR10_5          { COMMENT := 'or10_16'; POSITION := 109,10; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_6;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_6;1  *)
OR10_6          { COMMENT := 'or10_17'; POSITION := 109,26; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_7;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_7;1  *)
OR10_7          { COMMENT := 'or10_18'; POSITION := 109,43; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_8;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_8;1  *)
AND10_8         { COMMENT := 'and10_2'; POSITION := 132,9; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_9;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_9;1  *)
AND10_9         { COMMENT := 'and10_8'; POSITION := 132,25; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_10;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_10;1  *)
AND10_10        { COMMENT := 'and10_9'; POSITION := 132,42; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID CONNECT_11;1  *)
CONNECT_11      { COMMENT := 'connect_1'; POSITION := 234,18; SIZE := 12, 12; } :CONNECT;      


     (* IO_IOVISIBILITY;AND10_12;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_12;1  *)
AND10_12        { COMMENT := 'and10_3'; POSITION := 237,36; SIZE := 12, 12; } :AND10;        

     (* 0098 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.TripPhA *)
     EXV_SPS_0098   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.TripPhA";DESC := "0##Application#Usuario#Logicas#Disparo General BT Fase A##1";}:OEXV_BO_SPS;

     (* 0099 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.TripPhB *)
     EXV_SPS_0099   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.TripPhB";DESC := "0##Application#Usuario#Logicas#Disparo General BT Fase B##1";}:OEXV_BO_SPS;

     (* 0100 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.TripPhC *)
     EXV_SPS_0100   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.TripPhC";DESC := "0##Application#Usuario#Logicas#Disparo General BT Fase C##1";}:OEXV_BO_SPS;

     (* 0101 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0101   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor LV#Trip logic#Trip indication#general##1";}:IEXV_SPS_BO;

     (* 0102 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0102   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor LV#Trip logic#Trip indication#general##1";}:IEXV_SPS_SS;

     (* 0103 - GDL13_8TRF2F004_.Application.FG1_StandardUI.FB1_PTRC_FGStandardUI_3ph.Str.ACDNeut *)
     EXV_SPS_0103   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI.FB1_PTRC_FGStandardUI_3ph.Str.ACDNeut";DESC := "0##Application#Transformador LV#Group indicat.#Pickup#gnd##1";}:IEXV_SPS_BO;

     (* 0104 - GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB_PTRC.Str.ACDL1 *)
     EXV_SPS_0104   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB_PTRC.Str.ACDL1";DESC := "0##Application#Transformador LV#50/51 OC-3ph-B1#Group indicat.#Pickup#phs A##1";}:IEXV_SPS_BO;

     (* 0105 - GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB_PTRC.Str.ACDL2 *)
     EXV_SPS_0105   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB_PTRC.Str.ACDL2";DESC := "0##Application#Transformador LV#50/51 OC-3ph-B1#Group indicat.#Pickup#phs B##1";}:IEXV_SPS_BO;

     (* 0106 - GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB_PTRC.Str.ACDL3 *)
     EXV_SPS_0106   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB_PTRC.Str.ACDL3";DESC := "0##Application#Transformador LV#50/51 OC-3ph-B1#Group indicat.#Pickup#phs C##1";}:IEXV_SPS_BO;

     (* 0107 - GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB_PTRC.Str.ACDGeneral *)
     EXV_SPS_0107   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB_PTRC.Str.ACDGeneral";DESC := "0##Application#Transformador LV#50/51 OC-3ph-B1#Group indicat.#Pickup#general##1";}:IEXV_SPS_BO;

     (* 0108 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.TripGral *)
     EXV_SPS_0108   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.TripGral";DESC := "0##Application#Usuario#Logicas#Disparo General BT##1";}:OEXV_SS_SPS;

     (* 0109 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.TripPhN *)
     EXV_SPS_0109   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB2_Universal.TripPhN";DESC := "0##Application#Usuario#Logicas#Disparo General BT Neutro##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0101        (LNK := 101);

     EXV_SPS_0102        (LNK := 102);

     EXV_SPS_0103        (LNK := 103);

     EXV_SPS_0104        (LNK := 104);

     EXV_SPS_0105        (LNK := 105);

     EXV_SPS_0106        (LNK := 106);

     EXV_SPS_0107        (LNK := 107);

     OR10_1              (X1 := EXV_SPS_0107.VAL(* POSITION := 1*57: SIZE := 44* -1:   *) ,
                          X2 := 0,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     TOF_2               (IN := OR10_1.Y,
                          PT := 30);

     OR10_3              (X1 := EXV_SPS_0101.VAL(* POSITION := 23*64: SIZE := 38* -1:   *) ,
                          X2 := 0,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_4             (X1 := NOT TOF_2.Q,
                          X2 := OR10_3.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     OR10_5              (X1 := EXV_SPS_0104.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) ,
                          X2 := AND10_4.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_6              (X1 := EXV_SPS_0105.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) ,
                          X2 := AND10_4.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_7              (X1 := EXV_SPS_0106.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) ,
                          X2 := AND10_4.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_8             (X1 := EXV_SPS_0101.VAL(* POSITION := 87*2: SIZE := 38* -1:   *) ,
                          X2 := OR10_5.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_9             (X1 := EXV_SPS_0101.VAL(* POSITION := 104*20: SIZE := 38* -1:   *) ,
                          X2 := OR10_6.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_10            (X1 := EXV_SPS_0101.VAL(* POSITION := 105*35: SIZE := 38* -1:   *) ,
                          X2 := OR10_7.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     CONNECT_11          (IN := EXV_SPS_0102.VAL(* POSITION := 189*21: SIZE := 37* -1:   *) );

     AND10_12            (X1 := EXV_SPS_0101.VAL(* POSITION := 193*39: SIZE := 38* -1:   *) ,
                          X2 := EXV_SPS_0103.VAL(* POSITION := -1*-1: SIZE := 34* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     EXV_SPS_0098        (LNK := 98,
                          VAL := AND10_8.Y(* POSITION := 151*12: SIZE := 34* -1:   *) );
     EXV_SPS_0099        (LNK := 99,
                          VAL := AND10_9.Y(* POSITION := 151*28: SIZE := 34* -1:   *) );
     EXV_SPS_0100        (LNK := 100,
                          VAL := AND10_10.Y(* POSITION := 151*45: SIZE := 34* -1:   *) );
     EXV_SPS_0108        (LNK := 108,
                          VAL := CONNECT_11.OUT(* POSITION := -1*-1: SIZE := 30* -1:   *) );
     EXV_SPS_0109        (LNK := 109,
                          VAL := AND10_12.Y(* POSITION := -1*-1: SIZE := 34* -1:   *) );

(* COMMENT_TEXT;{X=75,Y=6};{Width=16, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;DISPARO FASE R *)
(* COMMENT_TEXT;{X=75,Y=22};{Width=16, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;DISPARO FASE S *)
(* COMMENT_TEXT;{X=75,Y=39};{Width=16, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;DISPARO FASE T *)
(* COMMENT_TEXT;{X=2,Y=2};{Width=21, Height=3};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;SEÑALIZACION DE DISPAROS POR FASE EN EL LADO DE 13.8kV *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Synchrocheck ----------  *)

PROGRAM CHART_Synchrocheck
{COMMENT := "Synchrocheck";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=     *)
VAR


               
     (* PartitionInfo;PartitionID DPC_DEF_1;1  *)
DPC_DEF_1       { COMMENT := 'dpc_def_1'; POSITION := 68,2; SIZE := 12, 12; } :DPC_DEF;      

               
     (* PartitionInfo;PartitionID DPC_EXE_2;1  *)
DPC_EXE_2       { COMMENT := 'dpc_exe_1'; POSITION := 88,2; SIZE := 12, 12; } :DPC_EXE;      

     (* 0110 - GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_CSWI.Pos *)
     EXV_DPC_0110   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_Breaker_3pol.FB1_CSWI.Pos";DESC := "0##Application#Interruptor LV#Control#Cmd. with feedback##1";}:IEXV_DPC_DC;

     (* 0111 - GDL13_8TRF2F004_.Application.FG1_UserDef.FB1_Universal.ClsManEmerg *)
     EXV_SPS_0111   {COMMENT := "GDL13_8TRF2F004_.Application.FG1_UserDef.FB1_Universal.ClsManEmerg";DESC := "0##Application#Usuario#Entradas#Cierre Manual Q0##1";}:IEXV_SPS_BO;
END_VAR

     EXV_DPC_0110        (ID_IN.IDX := 110);

     EXV_SPS_0111        (LNK := 111);

     DPC_DEF_1           (ID := EXV_DPC_0110.IDOUT(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          EN_I := 1,
                          VAL := 1,
                          SELECT := 2,
                          OPERATE := 1,
                          TRIG := EXV_SPS_0111.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) ,
                          EDGE := 0,
                          ORIGIN := 5);


     DPC_EXE_2           (ID := DPC_DEF_1.ID_OUT,
                          EN_I := DPC_DEF_1.EN_O,
                          CANCEL := 0,
                          REL_EQ := 0,
                          REL_DBL := 0,
                          REL_PROT := 1,
                          REL_PLBY := 0,
                          REL_ILOC := 1,
                          RQ_SYNC := 1,
                          PT := 10);


END_PROGRAM

CONFIGURATION  PLC_CONTROL 
   RESOURCE PLANS { COMMENT := "Txt100_100";} ON CPU32
     TASK EVENT_SLOW     { TICKS := 1300;}(PRIORITY := INTERNAL);
     TASK EVENT_FAST     { TICKS := 255;}(PRIORITY := INTERNAL);
     TASK MEASUREMENT    { TICKS := 2536;}(PRIORITY := INTERNAL);
     TASK INTERLOCKING   { TICKS := 2173;}(PRIORITY := INTERNAL);

     PROGRAM FBI001 WITH EVENT_SLOW:  CHART_50BF;
     PROGRAM FBI002 WITH EVENT_SLOW:  CHART_Falla_PTs;
     PROGRAM FBI003 WITH EVENT_SLOW:  CHART_Alarmas;
     PROGRAM FBI004 WITH EVENT_SLOW:  CHART_Interlocking;
     PROGRAM FBI005 WITH EVENT_SLOW:  CHART_Falla_Goose;
     PROGRAM FBI006 WITH EVENT_SLOW:  CHART_Sincronismo;
     PROGRAM FBI007 WITH EVENT_SLOW:  CHART_Disparo_por_Fases;
     PROGRAM FBI008 WITH EVENT_SLOW:  CHART_Synchrocheck;

   END_RESOURCE

 END_CONFIGURATION