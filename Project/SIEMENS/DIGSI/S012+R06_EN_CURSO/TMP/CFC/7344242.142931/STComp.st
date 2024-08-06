
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





                                                  (* ---------- Program : CHART_297ee2f3_ed72_4c90_bab9_5768c982c70c ----------  *)

PROGRAM CHART_297ee2f3_ed72_4c90_bab9_5768c982c70c
{COMMENT := "Lógico 50BF";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=     *)
VAR



     (* IO_IOVISIBILITY;AND10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_1;1  *)
AND10_1         { COMMENT := 'and10_1'; POSITION := 56,16; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_2'; POSITION := 56,23; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID FF_SR_MEM_3;1  *)
FF_SR_MEM_3     { COMMENT := 'ff_sr_mem_1'; POSITION := 67,4; SIZE := 12, 12; } :FF_SR_MEM;    


     (* IO_IOVISIBILITY;OR10_4;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_4;1  *)
OR10_4          { COMMENT := 'or10_1'; POSITION := 80,16; SIZE := 12, 12; } :OR10;         

     (* 0006 - F06_F004.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpEx.ACTGeneral *)
     EXV_SPS_0006   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpEx.ACTGeneral";DESC := "0##Application#Interruptor LV#50BF#Trip T2#general##1";}:IEXV_SPS_BO;

     (* 0007 - F06_F004.Application.FG1_UserDef.FB2_Universal.RsOpEx *)
     EXV_SPS_0007   {COMMENT := "F06_F004.Application.FG1_UserDef.FB2_Universal.RsOpEx";DESC := "0##Application#Usuario#GGIO1#Reset 86BF##1";}:IEXV_SPS_BO;

     (* 0008 - F06_F004.Application.FG1_UserDef.FB2_Universal.OpEx86BU1 *)
     EXV_SPS_0008   {COMMENT := "F06_F004.Application.FG1_UserDef.FB2_Universal.OpEx86BU1";DESC := "0##Application#Usuario#GGIO1#Opero 86BF##1";}:OEXV_BO_SPS;

     (* 0009 - F06_F004.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Initiation *)
     EXV_SPS_0009   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Initiation";DESC := "0##Application#Interruptor LV#50BF#>Start##1";}:OEXV_BO_SPS;

     (* 0010 - F06_F004.Application.FG1_UserDef.FB3_Universal.Init3p *)
     EXV_SPS_0010   {COMMENT := "F06_F004.Application.FG1_UserDef.FB3_Universal.Init3p";DESC := "0##Application#Usuario#GOOSE#Arranque 50BF LV F002##1";}:IEXV_SPS_BO;

     (* 0011 - F06_F004.Application.FG1_UserDef.FB3_Universal.Init3p1 *)
     EXV_SPS_0011   {COMMENT := "F06_F004.Application.FG1_UserDef.FB3_Universal.Init3p1";DESC := "0##Application#Usuario#GOOSE#Arranque 50BF LV F003##1";}:IEXV_SPS_BO;

     (* 0012 - F06_F004.Application.FG1_UserDef.FB2_Universal.OpEx86 *)
     EXV_SPS_0012   {COMMENT := "F06_F004.Application.FG1_UserDef.FB2_Universal.OpEx86";DESC := "0##Application#Usuario#GGIO1#Opero 86T##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0006        (LNK := 6);

     EXV_SPS_0007        (LNK := 7);

     EXV_SPS_0010        (LNK := 10);

     EXV_SPS_0011        (LNK := 11);

     EXV_SPS_0012        (LNK := 12);

     AND10_1             (X1 := EXV_SPS_0010.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X2 := 0,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_2             (X1 := EXV_SPS_0011.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X2 := 0,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     FF_SR_MEM_3         (S := EXV_SPS_0006.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          R := EXV_SPS_0007.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) );

     OR10_4              (X1 := AND10_1.Y,
                          X2 := AND10_2.Y,
                          X3 := EXV_SPS_0012.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0008        (LNK := 8,
                          VAL := FF_SR_MEM_3.OUT(* POSITION := -1*-1: SIZE := 25* -1:   *) );
     EXV_SPS_0009        (LNK := 9,
                          VAL := OR10_4.Y(* POSITION := -1*-1: SIZE := 26* -1:   *) );

(* COMMENT_TEXT;{X=60,Y=1};{Width=26, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;OPERO 86BF Q0 LV *)
(* COMMENT_TEXT;{X=58,Y=12};{Width=30, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;ARRANQUE 50BF *)

END_PROGRAM

                                                  (* ---------- Program : CHART_6e37d953_62d0_4dfa_aaa0_fbb2df534c82 ----------  *)

PROGRAM CHART_6e37d953_62d0_4dfa_aaa0_fbb2df534c82
{COMMENT := "Lógico Falla PTs";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=     *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 68,5; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_2'; POSITION := 69,21; SIZE := 12, 12; } :OR10;         

     (* 0013 - F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB2 *)
     EXV_SPS_0013   {COMMENT := "F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB2";DESC := "0##Application#Power system#TP B 13.8kV V-3ph#VT miniatureCB#Falla MCB PT B1 dev 2 PCyM##1";}:IEXV_SPS_BO;

     (* 0014 - F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0014   {COMMENT := "F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#TP B 13.8kV V-3ph#VT miniatureCB#>Open##1";}:OEXV_BO_SPS;

     (* 0015 - F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.MCB3 *)
     EXV_SPS_0015   {COMMENT := "F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.MCB3";DESC := "0##Application#Power system#TP B1 69kV V-1ph#VT miniatureCB#Falla MCB 69kV Dev3 PCyM##1";}:IEXV_SPS_BO;

     (* 0016 - F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0016   {COMMENT := "F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#TP B1 69kV V-1ph#VT miniatureCB#>Open##1";}:OEXV_BO_SPS;

     (* 0017 - F06_F004.Application.FG1_UserDef.FB3_Universal.MCB *)
     EXV_SPS_0017   {COMMENT := "F06_F004.Application.FG1_UserDef.FB3_Universal.MCB";DESC := "0##Application#Usuario#GOOSE#Falla MCB 69kV Dev3 Campo##1";}:IEXV_SPS_BO;

     (* 0018 - F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB3 *)
     EXV_SPS_0018   {COMMENT := "F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB3";DESC := "0##Application#Power system#TP B 13.8kV V-3ph#VT miniatureCB#Falla MCB 13.8 kV Dev 2##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0013        (LNK := 13);

     EXV_SPS_0015        (LNK := 15);

     EXV_SPS_0017        (LNK := 17);

     EXV_SPS_0018        (LNK := 18);

     OR10_1              (X1 := EXV_SPS_0013.VAL(* POSITION := -1*-1: SIZE := 49* -1:   *) ,
                          X2 := EXV_SPS_0018.VAL(* POSITION := -1*-1: SIZE := 48* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := EXV_SPS_0015.VAL(* POSITION := -1*-1: SIZE := 48* -1:   *) ,
                          X2 := EXV_SPS_0017.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0014        (LNK := 14,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 39* -1:   *) );
     EXV_SPS_0016        (LNK := 16,
                          VAL := OR10_2.Y(* POSITION := -1*-1: SIZE := 38* -1:   *) );

(* COMMENT_TEXT;{X=60,Y=1};{Width=30, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;FALLA PT's 13.8 kV *)
(* COMMENT_TEXT;{X=60,Y=16};{Width=30, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;FALLA PT's 69 kV *)

END_PROGRAM

                                                  (* ---------- Program : CHART_b4e52110_808d_4737_a7f8_40bacda5de5f ----------  *)

PROGRAM CHART_b4e52110_808d_4737_a7f8_40bacda5de5f
{COMMENT := "Lógico Sincronismo";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=      *)
VAR



     (* IO_IOVISIBILITY;AND10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_1;1  *)
AND10_1         { COMMENT := 'and10_2'; POSITION := 45,21; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_1'; POSITION := 45,13; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID DPC_DEF_3;1  *)
DPC_DEF_3       { COMMENT := 'dpc_def_1'; POSITION := 64,8; SIZE := 12, 12; } :DPC_DEF;      

               
     (* PartitionInfo;PartitionID DPC_EXE_4;1  *)
DPC_EXE_4       { COMMENT := 'dpc_exe_1'; POSITION := 82,8; SIZE := 12, 12; } :DPC_EXE;      


     (* IO_IOVISIBILITY;OR10_5;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_5;1  *)
OR10_5          { COMMENT := 'or10_1'; POSITION := 71,25; SIZE := 12, 12; } :OR10;         

     (* 0019 - F06_F004.Application.FG1_Breaker_3pol.FB1_CSWI.Pos *)
     EXV_DPC_0019   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_CSWI.Pos";DESC := "0##Application#Interruptor LV#Control#Cmd. with feedback##1";}:IEXV_DPC_DC;

     (* 0020 - F06_F004.Application.FG1_Breaker_3pol.FB1_XCBR.CmdActv *)
     EXV_SPS_0020   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_XCBR.CmdActv";DESC := "0##Application#Interruptor LV#Circuit break#Command active##1";}:IEXV_SPS_BO;

     (* 0021 - F06_F004.Application.FG1_Breaker_3pol.FN1_RSYN_SynCheck.FB1_RSYN_SynCheck.SynReq1 *)
     EXV_SPS_0021   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FN1_RSYN_SynCheck.FB1_RSYN_SynCheck.SynReq1";DESC := "0##Application#Interruptor LV#25#Synchrocheck 1#Arranque Sincronismo##1";}:OEXV_BO_SPS;

     (* 0022 - F06_F004.Application.FG1_UserDef.FB3_Universal.FailDiagDS *)
     EXV_SPS_0022   {COMMENT := "F06_F004.Application.FG1_UserDef.FB3_Universal.FailDiagDS";DESC := "0##Application#Usuario#GOOSE#Anormalidad F06_BCU##1";}:IEXV_SPS_BO;

     (* 0023 - F06_F004.Application.FG1_UserDef.FB2_Universal.OpCls0 *)
     EXV_SPS_0023   {COMMENT := "F06_F004.Application.FG1_UserDef.FB2_Universal.OpCls0";DESC := "0##Application#Usuario#GGIO1#Cierre Manual##1";}:IEXV_SPS_BO;

     (* 0024 - F06_F004.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB3_LGOS.St *)
     EXV_SPS_0024   {COMMENT := "F06_F004.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB3_LGOS.St";DESC := "0##Application#Com. supervision#GOOSE supervis.#Subscription1_F002#Status subscription##1";}:IEXV_SPS_BO;
END_VAR

     EXV_DPC_0019        (ID_IN.IDX := 19);

     EXV_SPS_0020        (LNK := 20);

     EXV_SPS_0022        (LNK := 22);

     EXV_SPS_0023        (LNK := 23);

     EXV_SPS_0024        (LNK := 24);

     AND10_1             (X1 := EXV_SPS_0022.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) ,
                          X2 := EXV_SPS_0024.VAL(* POSITION := -1*-1: SIZE := 49* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_2             (X1 := EXV_SPS_0023.VAL(* POSITION := -1*-1: SIZE := 27* -1:   *) ,
                          X2 := AND10_1.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     DPC_DEF_3           (ID := EXV_DPC_0019.IDOUT(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          EN_I := 1,
                          VAL := 1,
                          SELECT := 2,
                          OPERATE := 1,
                          TRIG := AND10_2.Y,
                          EDGE := 0,
                          ORIGIN := 5);


     DPC_EXE_4           (ID := DPC_DEF_3.ID_OUT,
                          EN_I := DPC_DEF_3.EN_O,
                          CANCEL := 0,
                          REL_EQ := 0,
                          REL_DBL := 0,
                          REL_PROT := 1,
                          REL_PLBY := 0,
                          REL_ILOC := 1,
                          RQ_SYNC := 1,
                          PT := 10);
     OR10_5              (X1 := AND10_2.Y,
                          X2 := EXV_SPS_0020.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0021        (LNK := 21,
                          VAL := OR10_5.Y(* POSITION := -1*-1: SIZE := 40* -1:   *) );

(* COMMENT_TEXT;{X=61,Y=2};{Width=34, Height=5};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;CIERRE CON SINCRONISMO 9T7-Q0 *)

END_PROGRAM

                                                  (* ---------- Program : CHART_5a4e9ce8_c713_4fe9_b0fb_86de12dd3fd6 ----------  *)

PROGRAM CHART_5a4e9ce8_c713_4fe9_b0fb_86de12dd3fd6
{COMMENT := "Lógico Interlocking";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=      *)
VAR



     (* IO_IOVISIBILITY;NOR10_1;X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID NOR10_1;1  *)
NOR10_1         { COMMENT := 'nor10_1'; POSITION := 83,11; SIZE := 12, 12; } :NOR10;        

     (* 0025 - F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0025   {COMMENT := "F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#TP B 13.8kV V-3ph#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0026 - F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0026   {COMMENT := "F06_F004.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#TP B1 69kV V-1ph#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0027 - F06_F004.Application.FG1_UserDef.FB2_Universal.OpEx86BU1 *)
     EXV_SPS_0027   {COMMENT := "F06_F004.Application.FG1_UserDef.FB2_Universal.OpEx86BU1";DESC := "0##Application#Usuario#GGIO1#Opero 86BF##1";}:IEXV_SPS_BO;

     (* 0028 - F06_F004.Application.FG1_Breaker_3pol.FB1_CILO.EnaCls *)
     EXV_SPS_0028   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_CILO.EnaCls";DESC := "0##Application#Interruptor LV#Interlocking#>Enable closing##1";}:OEXV_BO_SPS;

     (* 0029 - F06_F004.Application.FG1_UserDef.FB2_Universal.OpEx86 *)
     EXV_SPS_0029   {COMMENT := "F06_F004.Application.FG1_UserDef.FB2_Universal.OpEx86";DESC := "0##Application#Usuario#GGIO1#Opero 86T##1";}:IEXV_SPS_BO;

     (* 0030 - F06_F004.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn *)
     EXV_SPS_0030   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn";DESC := "0##Application#Interruptor LV#Circuit break#Position#closed##1";}:IEXV_SPS_BO;

     (* 0031 - F06_F004.Application.FG1_Breaker_3pol.FB1_XCBR.Int9L6Q0.DPS_StatusOn *)
     EXV_SPS_0031   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_XCBR.Int9L6Q0.DPS_StatusOn";DESC := "0##Application#Interruptor LV#Circuit break#9L3-Q0 Abierto#closed##1";}:IEXV_SPS_BO;

     (* 0032 - F06_F004.Application.FG1_Breaker_3pol.FB1_XCBR.Int9L7Q0.DPS_StatusOn *)
     EXV_SPS_0032   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_XCBR.Int9L7Q0.DPS_StatusOn";DESC := "0##Application#Interruptor LV#Circuit break#9L4-Q0 Abierto#closed##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0025        (LNK := 25);

     EXV_SPS_0026        (LNK := 26);

     EXV_SPS_0027        (LNK := 27);

     EXV_SPS_0029        (LNK := 29);

     EXV_SPS_0030        (LNK := 30);

     EXV_SPS_0031        (LNK := 31);

     EXV_SPS_0032        (LNK := 32);

     NOR10_1             (X1 := EXV_SPS_0025.VAL(* POSITION := -1*-1: SIZE := 39* -1:   *) ,
                          X2 := EXV_SPS_0026.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X3 := EXV_SPS_0029.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X4 := EXV_SPS_0027.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X5 := EXV_SPS_0030.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          X6 := EXV_SPS_0031.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X7 := EXV_SPS_0032.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0028        (LNK := 28,
                          VAL := NOR10_1.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );

(* COMMENT_TEXT;{X=58,Y=2};{Width=40, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;PERMISIVO DE CIERRE 9T7-Q0 *)

END_PROGRAM

                                                  (* ---------- Program : CHART_3d15bc4e_995e_4f33_9f82_c391161b70fc ----------  *)

PROGRAM CHART_3d15bc4e_995e_4f33_9f82_c391161b70fc
{COMMENT := "Lógico Alarmas";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR



     (* IO_IOVISIBILITY;AND10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_1;1  *)
AND10_1         { COMMENT := 'and10_1'; POSITION := 67,6; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_2'; POSITION := 67,13; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_3;1  *)
AND10_3         { COMMENT := 'and10_3'; POSITION := 67,20; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_4;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_4;1  *)
AND10_4         { COMMENT := 'and10_4'; POSITION := 67,27; SIZE := 12, 12; } :AND10;        

     (* 0033 - F06_F004.Application.FG1_StandardUI.FB1_PTRC_FGStandardUI_3ph.Str.ACDL1 *)
     EXV_SPS_0033   {COMMENT := "F06_F004.Application.FG1_StandardUI.FB1_PTRC_FGStandardUI_3ph.Str.ACDL1";DESC := "0##Application#Transformador LV#Group indicat.#Pickup#phs A##1";}:IEXV_SPS_BO;

     (* 0034 - F06_F004.Application.FG1_StandardUI.FB1_PTRC_FGStandardUI_3ph.Str.ACDL2 *)
     EXV_SPS_0034   {COMMENT := "F06_F004.Application.FG1_StandardUI.FB1_PTRC_FGStandardUI_3ph.Str.ACDL2";DESC := "0##Application#Transformador LV#Group indicat.#Pickup#phs B##1";}:IEXV_SPS_BO;

     (* 0035 - F06_F004.Application.FG1_StandardUI.FB1_PTRC_FGStandardUI_3ph.Str.ACDL3 *)
     EXV_SPS_0035   {COMMENT := "F06_F004.Application.FG1_StandardUI.FB1_PTRC_FGStandardUI_3ph.Str.ACDL3";DESC := "0##Application#Transformador LV#Group indicat.#Pickup#phs C##1";}:IEXV_SPS_BO;

     (* 0036 - F06_F004.Application.FG1_StandardUI.FB1_PTRC_FGStandardUI_3ph.Str.ACDNeut *)
     EXV_SPS_0036   {COMMENT := "F06_F004.Application.FG1_StandardUI.FB1_PTRC_FGStandardUI_3ph.Str.ACDNeut";DESC := "0##Application#Transformador LV#Group indicat.#Pickup#gnd##1";}:IEXV_SPS_BO;

     (* 0037 - F06_F004.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0037   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor LV#Trip logic#Trip indication#general##1";}:IEXV_SPS_BO;

     (* 0038 - F06_F004.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrA *)
     EXV_SPS_0038   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrA";DESC := "0##Application#Interruptor LV#Trip logic#Disparo Fase A##1";}:OEXV_BO_SPS;

     (* 0039 - F06_F004.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrB *)
     EXV_SPS_0039   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrB";DESC := "0##Application#Interruptor LV#Trip logic#Disparo Fase B##1";}:OEXV_BO_SPS;

     (* 0040 - F06_F004.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrC *)
     EXV_SPS_0040   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrC";DESC := "0##Application#Interruptor LV#Trip logic#Disparo Fase C##1";}:OEXV_BO_SPS;

     (* 0041 - F06_F004.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrN *)
     EXV_SPS_0041   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrN";DESC := "0##Application#Interruptor LV#Trip logic#Disparo Neutro##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0033        (LNK := 33);

     EXV_SPS_0034        (LNK := 34);

     EXV_SPS_0035        (LNK := 35);

     EXV_SPS_0036        (LNK := 36);

     EXV_SPS_0037        (LNK := 37);

     AND10_1             (X1 := EXV_SPS_0033.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          X2 := EXV_SPS_0037.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_2             (X1 := EXV_SPS_0034.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          X2 := EXV_SPS_0037.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_3             (X1 := EXV_SPS_0035.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          X2 := EXV_SPS_0037.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_4             (X1 := EXV_SPS_0036.VAL(* POSITION := -1*-1: SIZE := 34* -1:   *) ,
                          X2 := EXV_SPS_0037.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     EXV_SPS_0038        (LNK := 38,
                          VAL := AND10_1.Y(* POSITION := -1*-1: SIZE := 33* -1:   *) );
     EXV_SPS_0039        (LNK := 39,
                          VAL := AND10_2.Y(* POSITION := -1*-1: SIZE := 33* -1:   *) );
     EXV_SPS_0040        (LNK := 40,
                          VAL := AND10_3.Y(* POSITION := -1*-1: SIZE := 33* -1:   *) );
     EXV_SPS_0041        (LNK := 41,
                          VAL := AND10_4.Y(* POSITION := -1*-1: SIZE := 33* -1:   *) );

(* COMMENT_TEXT;{X=53,Y=2};{Width=39, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;DISPAROS POR FASE *)

END_PROGRAM

CONFIGURATION  PLC_CONTROL 
   RESOURCE PLANS { COMMENT := "Txt100_100";} ON CPU32
     TASK EVENT_SLOW     { TICKS := 1300;}(PRIORITY := INTERNAL);
     TASK EVENT_FAST     { TICKS := 255;}(PRIORITY := INTERNAL);
     TASK MEASUREMENT    { TICKS := 2536;}(PRIORITY := INTERNAL);
     TASK INTERLOCKING   { TICKS := 2173;}(PRIORITY := INTERNAL);

     PROGRAM FBI001 WITH EVENT_SLOW:  CHART_297ee2f3_ed72_4c90_bab9_5768c982c70c;
     PROGRAM FBI002 WITH EVENT_SLOW:  CHART_6e37d953_62d0_4dfa_aaa0_fbb2df534c82;
     PROGRAM FBI003 WITH EVENT_SLOW:  CHART_b4e52110_808d_4737_a7f8_40bacda5de5f;
     PROGRAM FBI004 WITH EVENT_SLOW:  CHART_5a4e9ce8_c713_4fe9_b0fb_86de12dd3fd6;
     PROGRAM FBI005 WITH EVENT_SLOW:  CHART_3d15bc4e_995e_4f33_9f82_c391161b70fc;

   END_RESOURCE

 END_CONFIGURATION