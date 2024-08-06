
                                                  (* ---------- Structure : QUAL ----------  *)
TYPE QUAL:
STRUCT
       VAL   :  WORD;
END_STRUCT;
END_TYPE

                                                  (* ---------- Structure : SDPS ----------  *)
TYPE SDPS:
STRUCT
        DP   :  WORD;
         Q   :  WORD;
END_STRUCT;
END_TYPE

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



                                                  (* ---------- EV Function Block : OEXV_DS_DPS ----------  *)

FUNCTION_BLOCK OEXV_DS_DPS
VAR_INPUT
        LNK :UINT := 0;
        VAL :SDPS;
END_VAR
VAR
        INI :BOOL := 0;
        LNKPTR :DINT := 0;
END_VAR
        GATE dsDP
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



                                                  (* ---------- Function Block : BUILD_Q ----------  *)

FUNCTION_BLOCK BUILD_Q
{
     TICKS           := 0;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10245;
     COMMENT         := 'BUILD_Q';
     NESTED          := NO;
}
VAR_INPUT
        GOOD { TICKS := 0; VISIBLE := YES;}:BOOL := 1;
        BAD { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR_OUTPUT
        QL { TICKS := 0; VISIBLE := YES;}:QUAL;
END_VAR
VAR
     INI : BOOL  :=  0;
END_VAR
     GATE BQL2
END_FUNCTION_BLOCK



                                                  (* ---------- Function Block : BUILD_DPS ----------  *)

FUNCTION_BLOCK BUILD_DPS
{
     TICKS           := 1;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10244;
     COMMENT         := 'BUILD_DPS';
     NESTED          := NO;
}
VAR_INPUT
        IS_ON { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        IS_OFF { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        BAD_00 { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        QL { TICKS := 0; VISIBLE := YES;}:QUAL;
END_VAR
VAR_OUTPUT
        OUT { TICKS := 0; VISIBLE := YES;}:SDPS;
END_VAR
VAR
     INI : BOOL  :=  0;
END_VAR
     GATE BDPS
END_FUNCTION_BLOCK



                                                  (* ---------- Function Block : R_TRIG ----------  *)

FUNCTION_BLOCK R_TRIG
{
     TICKS           := 0;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10263;
     COMMENT         := 'R_TRIG';
     NESTED          := NO;
}
VAR_INPUT
        CLK { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR_OUTPUT
        Q { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR
     INI : BOOL  :=  0;
     OCL : BOOL  :=  0;
END_VAR
     GATE RTRG
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





                                                  (* ---------- Program : CHART_e25e9a5c_6746_4c2f_a7df_d855c15d8b2a ----------  *)

PROGRAM CHART_e25e9a5c_6746_4c2f_a7df_d855c15d8b2a
{COMMENT := "Lógico Sincronismo";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=       *)
VAR



     (* IO_IOVISIBILITY;AND10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_1;1  *)
AND10_1         { COMMENT := 'and10_1'; POSITION := 47,15; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID DPC_DEF_2;1  *)
DPC_DEF_2       { COMMENT := 'dpc_def_1'; POSITION := 65,10; SIZE := 12, 12; } :DPC_DEF;      

               
     (* PartitionInfo;PartitionID DPC_EXE_3;1  *)
DPC_EXE_3       { COMMENT := 'dpc_exe_1'; POSITION := 84,10; SIZE := 12, 12; } :DPC_EXE;      


     (* IO_IOVISIBILITY;OR10_4;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_4;1  *)
OR10_4          { COMMENT := 'or10_1'; POSITION := 59,29; SIZE := 12, 12; } :OR10;         

     (* 0011 - F06_F002.Application.FG1_Breaker_3pol.FB1_CSWI.Pos *)
     EXV_DPC_0011   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_CSWI.Pos";DESC := "0##Application#Interruptor HV#Control#Cmd. with feedback##1";}:IEXV_DPC_DC;

     (* 0012 - F06_F002.Application.FG1_UserDef.FB4_Universal.OpCls0 *)
     EXV_SPS_0012   {COMMENT := "F06_F002.Application.FG1_UserDef.FB4_Universal.OpCls0";DESC := "0##Application#Usuario#GGIO1#Cierre Manual Q0##1";}:IEXV_SPS_BO;

     (* 0013 - F06_F002.Application.FG1_Breaker_3pol.FN1_RSYN_SynCheck.FB1_RSYN_SynCheck.SynReq1 *)
     EXV_SPS_0013   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FN1_RSYN_SynCheck.FB1_RSYN_SynCheck.SynReq1";DESC := "0##Application#Interruptor HV#25#Synchrocheck 1#Arranque Sincronismo##1";}:OEXV_BO_SPS;

     (* 0014 - F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.CmdActv *)
     EXV_SPS_0014   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.CmdActv";DESC := "0##Application#Interruptor HV#Circuit break.#Command active##1";}:IEXV_SPS_BO;

     (* 0015 - F06_F002.Application.FG1_UserDef.FB2_Universal.FailDiagDS *)
     EXV_SPS_0015   {COMMENT := "F06_F002.Application.FG1_UserDef.FB2_Universal.FailDiagDS";DESC := "0##Application#Usuario#SIED4#Anormalidad F06_BCU##1";}:IEXV_SPS_BO;
END_VAR

     EXV_DPC_0011        (ID_IN.IDX := 11);

     EXV_SPS_0012        (LNK := 12);

     EXV_SPS_0014        (LNK := 14);

     EXV_SPS_0015        (LNK := 15);

     AND10_1             (X1 := EXV_SPS_0012.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) ,
                          X2 := EXV_SPS_0015.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     DPC_DEF_2           (ID := EXV_DPC_0011.IDOUT(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          EN_I := 1,
                          VAL := 1,
                          SELECT := 2,
                          OPERATE := 1,
                          TRIG := AND10_1.Y,
                          EDGE := 0,
                          ORIGIN := 5);


     DPC_EXE_3           (ID := DPC_DEF_2.ID_OUT,
                          EN_I := DPC_DEF_2.EN_O,
                          CANCEL := 0,
                          REL_EQ := 0,
                          REL_DBL := 0,
                          REL_PROT := 1,
                          REL_PLBY := 0,
                          REL_ILOC := 1,
                          RQ_SYNC := 1,
                          PT := 10);
     OR10_4              (X1 := EXV_SPS_0012.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) ,
                          X2 := EXV_SPS_0014.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0013        (LNK := 13,
                          VAL := OR10_4.Y(* POSITION := -1*-1: SIZE := 40* -1:   *) );

(* COMMENT_TEXT;{X=60,Y=2};{Width=27, Height=5};Font := Arial,FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;VERIFICACIÓN SINCRONISMO *)

END_PROGRAM

                                                  (* ---------- Program : CHART_ee3534f3_86dc_4136_8932_aad2f5b44fe1 ----------  *)

PROGRAM CHART_ee3534f3_86dc_4136_8932_aad2f5b44fe1
{COMMENT := "Lógico Falla PTs";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=      *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 69,5; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_2'; POSITION := 69,18; SIZE := 12, 12; } :OR10;         

     (* 0016 - F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0016   {COMMENT := "F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#PT B1 69kV V-3ph#VT miniatureCB#>Open##1";}:OEXV_BO_SPS;

     (* 0017 - F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB *)
     EXV_SPS_0017   {COMMENT := "F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB";DESC := "0##Application#Power system#PT B1 69kV V-3ph#VT miniatureCB#Falla MCB PT Bus1/2 69 PCyM##1";}:IEXV_SPS_BO;

     (* 0018 - F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.MCB3 *)
     EXV_SPS_0018   {COMMENT := "F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.MCB3";DESC := "0##Application#Power system#PT B 13.8kV V-1ph#VT miniatureCB#Falla MCB PT 13.8kV PCyM##1";}:IEXV_SPS_BO;

     (* 0019 - F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0019   {COMMENT := "F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#PT B 13.8kV V-1ph#VT miniatureCB#>Open##1";}:OEXV_BO_SPS;

     (* 0020 - F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB1 *)
     EXV_SPS_0020   {COMMENT := "F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB1";DESC := "0##Application#Power system#PT B1 69kV V-3ph#VT miniatureCB#Falla MCB PT Bus1 69 Dev 2##1";}:IEXV_SPS_BO;

     (* 0021 - F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.MCB2 *)
     EXV_SPS_0021   {COMMENT := "F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.MCB2";DESC := "0##Application#Power system#PT B 13.8kV V-1ph#VT miniatureCB#Falla MCB 13.8kV Dev 2##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0017        (LNK := 17);

     EXV_SPS_0018        (LNK := 18);

     EXV_SPS_0020        (LNK := 20);

     EXV_SPS_0021        (LNK := 21);

     OR10_1              (X1 := EXV_SPS_0017.VAL(* POSITION := -1*-1: SIZE := 49* -1:   *) ,
                          X2 := EXV_SPS_0020.VAL(* POSITION := -1*-1: SIZE := 49* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := EXV_SPS_0018.VAL(* POSITION := -1*-1: SIZE := 48* -1:   *) ,
                          X2 := EXV_SPS_0021.VAL(* POSITION := -1*-1: SIZE := 47* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0016        (LNK := 16,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 38* -1:   *) );
     EXV_SPS_0019        (LNK := 19,
                          VAL := OR10_2.Y(* POSITION := -1*-1: SIZE := 39* -1:   *) );

(* COMMENT_TEXT;{X=61,Y=1};{Width=27, Height=3};Font := Arial,FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;FALLAS PT´S 69kV *)
(* COMMENT_TEXT;{X=60,Y=14};{Width=29, Height=3};Font := Arial,FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;FALLAS PT´S 13.8kV *)

END_PROGRAM

                                                  (* ---------- Program : CHART_830e140f_4d28_49ac_9621_b61b6ef2ad33 ----------  *)

PROGRAM CHART_830e140f_4d28_49ac_9621_b61b6ef2ad33
{COMMENT := "Lógico Alarmas";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=      *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 63,76; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_2'; POSITION := 63,83; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_3;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_3;1  *)
OR10_3          { COMMENT := 'or10_3'; POSITION := 63,90; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_4;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_4;1  *)
OR10_4          { COMMENT := 'or10_4'; POSITION := 63,97; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_5;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_5;1  *)
OR10_5          { COMMENT := 'or10_5'; POSITION := 63,105; SIZE := 12, 12; } :OR10;         

               
     (* PartitionInfo;PartitionID CONNECT_6;1  *)
CONNECT_6       { COMMENT := 'connect_1'; POSITION := 70,6; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_7;1  *)
CONNECT_7       { COMMENT := 'connect_2'; POSITION := 70,12; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_8;1  *)
CONNECT_8       { COMMENT := 'connect_3'; POSITION := 70,18; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_9;1  *)
CONNECT_9       { COMMENT := 'connect_4'; POSITION := 70,24; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_10;1  *)
CONNECT_10      { COMMENT := 'connect_5'; POSITION := 70,30; SIZE := 12, 12; } :CONNECT;      


     (* IO_IOVISIBILITY;AND10_11;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_11;1  *)
AND10_11        { COMMENT := 'and10_1'; POSITION := 83,76; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_12;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_12;1  *)
AND10_12        { COMMENT := 'and10_2'; POSITION := 83,83; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_13;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_13;1  *)
AND10_13        { COMMENT := 'and10_3'; POSITION := 83,90; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_14;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_14;1  *)
AND10_14        { COMMENT := 'and10_4'; POSITION := 83,97; SIZE := 12, 12; } :AND10;        

     (* 0022 - F06_F002.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB0_TDIFF.FctBlk *)
     EXV_SPS_0022   {COMMENT := "F06_F002.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB0_TDIFF.FctBlk";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#General#Estado 87T##1";}:OEXV_SS_SPS;

     (* 0023 - F06_F002.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_Restrained.Blk *)
     EXV_SPS_0023   {COMMENT := "F06_F002.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_Restrained.Blk";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#I-DIFF#>Block stage##1";}:IEXV_SPS_SS;

     (* 0024 - F06_F002.Application.FG1_Breaker_3pol.FB1_STCS_2BI.Failure *)
     EXV_SPS_0024   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_STCS_2BI.Failure";DESC := "0##Application#Interruptor HV#74TC - SCD1#Trip-circuit failure##1";}:IEXV_SPS_SS;

     (* 0025 - F06_F002.Application.FG1_UserDef.FB6_Universal.ColAlm *)
     EXV_SPS_0025   {COMMENT := "F06_F002.Application.FG1_UserDef.FB6_Universal.ColAlm";DESC := "0##Application#Usuario#SCBR1#Falla SCD1##1";}:OEXV_SS_SPS;

     (* 0026 - F06_F002.Application.LTMS_Application.TmSynErr *)
     EXV_SPS_0026   {COMMENT := "F06_F002.Application.LTMS_Application.TmSynErr";DESC := "0##Application#Time syn.#Time sync. error##1";}:IEXV_SPS_SS;

     (* 0027 - F06_F002.Application.FG1_UserDef.FB7_Universal.TmSynErr *)
     EXV_SPS_0027   {COMMENT := "F06_F002.Application.FG1_UserDef.FB7_Universal.TmSynErr";DESC := "0##Application#Usuario#LTMS0#Falla Sincronización##1";}:OEXV_SS_SPS;

     (* 0028 - F06_F002.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_Restrained.Op.ACTGeneral *)
     EXV_SPS_0028   {COMMENT := "F06_F002.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_Restrained.Op.ACTGeneral";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#I-DIFF#Operate#general##1";}:IEXV_SPS_SS;

     (* 0029 - F06_F002.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_FastUnrestrained.Op.ACTGeneral *)
     EXV_SPS_0029   {COMMENT := "F06_F002.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_FastUnrestrained.Op.ACTGeneral";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#I-DIFF fast#Operate#general##1";}:IEXV_SPS_SS;

     (* 0030 - F06_F002.Application.FG1_UserDef.FB8_Universal.Op *)
     EXV_SPS_0030   {COMMENT := "F06_F002.Application.FG1_UserDef.FB8_Universal.Op";DESC := "0##Application#Usuario#PDIF_PTRC1#Opero I-DIFF##1";}:OEXV_SS_SPS;

     (* 0031 - F06_F002.Application.FG1_UserDef.FB9_Universal.Op *)
     EXV_SPS_0031   {COMMENT := "F06_F002.Application.FG1_UserDef.FB9_Universal.Op";DESC := "0##Application#Usuario#PDIF_PTRC2#OperoI -DIFF fast##1";}:OEXV_SS_SPS;

     (* 0032 - F06_F002.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0032   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor HV#Trip logic#Trip indication#general##1";}:IEXV_SPS_BO;

     (* 0033 - F06_F002.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrA *)
     EXV_SPS_0033   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrA";DESC := "0##Application#Interruptor HV#Trip logic#Disparo Fase A##1";}:OEXV_BO_SPS;

     (* 0034 - F06_F002.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrB *)
     EXV_SPS_0034   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrB";DESC := "0##Application#Interruptor HV#Trip logic#Disparo Fase B##1";}:OEXV_BO_SPS;

     (* 0035 - F06_F002.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrC *)
     EXV_SPS_0035   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrC";DESC := "0##Application#Interruptor HV#Trip logic#Disparo Fase C##1";}:OEXV_BO_SPS;

     (* 0036 - F06_F002.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrN *)
     EXV_SPS_0036   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.TrN";DESC := "0##Application#Interruptor HV#Trip logic#Disparo Neutro##1";}:OEXV_BO_SPS;

     (* 0037 - F06_F002.Application.FG1_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDL1 *)
     EXV_SPS_0037   {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDL1";DESC := "0##Application#66 KV#Group indicat.#Pickup#phs A##1";}:IEXV_SPS_BO;

     (* 0038 - F06_F002.Application.FG1_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDL2 *)
     EXV_SPS_0038   {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDL2";DESC := "0##Application#66 KV#Group indicat.#Pickup#phs B##1";}:IEXV_SPS_BO;

     (* 0039 - F06_F002.Application.FG1_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDL3 *)
     EXV_SPS_0039   {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDL3";DESC := "0##Application#66 KV#Group indicat.#Pickup#phs C##1";}:IEXV_SPS_BO;

     (* 0040 - F06_F002.Application.FG1_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDNeut *)
     EXV_SPS_0040   {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDNeut";DESC := "0##Application#66 KV#Group indicat.#Pickup#gnd##1";}:IEXV_SPS_BO;

     (* 0041 - F06_F002.Application.FG2_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDL1 *)
     EXV_SPS_0041   {COMMENT := "F06_F002.Application.FG2_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDL1";DESC := "0##Application#13.8 KV#Group indicat.#Pickup#phs A##1";}:IEXV_SPS_BO;

     (* 0042 - F06_F002.Application.FG2_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDL2 *)
     EXV_SPS_0042   {COMMENT := "F06_F002.Application.FG2_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDL2";DESC := "0##Application#13.8 KV#Group indicat.#Pickup#phs B##1";}:IEXV_SPS_BO;

     (* 0043 - F06_F002.Application.FG2_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDL3 *)
     EXV_SPS_0043   {COMMENT := "F06_F002.Application.FG2_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDL3";DESC := "0##Application#13.8 KV#Group indicat.#Pickup#phs C##1";}:IEXV_SPS_BO;

     (* 0044 - F06_F002.Application.FG2_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDNeut *)
     EXV_SPS_0044   {COMMENT := "F06_F002.Application.FG2_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDNeut";DESC := "0##Application#13.8 KV#Group indicat.#Pickup#gnd##1";}:IEXV_SPS_BO;

     (* 0045 - F06_F002.Application.FG1_PowerTransformer.FB1_PTRC_FG_Transformer_3ph.Str.ACDL1 *)
     EXV_SPS_0045   {COMMENT := "F06_F002.Application.FG1_PowerTransformer.FB1_PTRC_FG_Transformer_3ph.Str.ACDL1";DESC := "0##Application#Transformer diff. 1#Group indicat.#Pickup#phs A##1";}:IEXV_SPS_BO;

     (* 0046 - F06_F002.Application.FG1_PowerTransformer.FB1_PTRC_FG_Transformer_3ph.Str.ACDL2 *)
     EXV_SPS_0046   {COMMENT := "F06_F002.Application.FG1_PowerTransformer.FB1_PTRC_FG_Transformer_3ph.Str.ACDL2";DESC := "0##Application#Transformer diff. 1#Group indicat.#Pickup#phs B##1";}:IEXV_SPS_BO;

     (* 0047 - F06_F002.Application.FG1_PowerTransformer.FB1_PTRC_FG_Transformer_3ph.Str.ACDL3 *)
     EXV_SPS_0047   {COMMENT := "F06_F002.Application.FG1_PowerTransformer.FB1_PTRC_FG_Transformer_3ph.Str.ACDL3";DESC := "0##Application#Transformer diff. 1#Group indicat.#Pickup#phs C##1";}:IEXV_SPS_BO;

     (* 0048 - F06_F002.Application.FG1_PowerTransformerStarpoint.FB1_PTRC_FGStandard.Str.ACDGeneral *)
     EXV_SPS_0048   {COMMENT := "F06_F002.Application.FG1_PowerTransformerStarpoint.FB1_PTRC_FGStandard.Str.ACDGeneral";DESC := "0##Application#51 G#Group indicat.#Pickup#general##1";}:IEXV_SPS_BO;

     (* 0049 - F06_F002.Application.FG2_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0049   {COMMENT := "F06_F002.Application.FG2_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor LV#Trip logic#Trip indication#general##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0023        (LNK := 23);

     EXV_SPS_0024        (LNK := 24);

     EXV_SPS_0026        (LNK := 26);

     EXV_SPS_0028        (LNK := 28);

     EXV_SPS_0029        (LNK := 29);

     EXV_SPS_0032        (LNK := 32);

     EXV_SPS_0037        (LNK := 37);

     EXV_SPS_0038        (LNK := 38);

     EXV_SPS_0039        (LNK := 39);

     EXV_SPS_0040        (LNK := 40);

     EXV_SPS_0041        (LNK := 41);

     EXV_SPS_0042        (LNK := 42);

     EXV_SPS_0043        (LNK := 43);

     EXV_SPS_0044        (LNK := 44);

     EXV_SPS_0045        (LNK := 45);

     EXV_SPS_0046        (LNK := 46);

     EXV_SPS_0047        (LNK := 47);

     EXV_SPS_0048        (LNK := 48);

     EXV_SPS_0049        (LNK := 49);

     OR10_1              (X1 := EXV_SPS_0037.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) ,
                          X2 := EXV_SPS_0041.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X3 := EXV_SPS_0045.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := EXV_SPS_0038.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) ,
                          X2 := EXV_SPS_0042.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X3 := EXV_SPS_0046.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_3              (X1 := EXV_SPS_0039.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) ,
                          X2 := EXV_SPS_0043.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X3 := EXV_SPS_0047.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_4              (X1 := EXV_SPS_0040.VAL(* POSITION := -1*-1: SIZE := 29* -1:   *) ,
                          X2 := EXV_SPS_0044.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) ,
                          X3 := EXV_SPS_0048.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) ,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_5              (X1 := EXV_SPS_0032.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X2 := EXV_SPS_0049.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);




     CONNECT_6           (IN := EXV_SPS_0023.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) );

     CONNECT_7           (IN := EXV_SPS_0024.VAL(* POSITION := -1*-1: SIZE := 36* -1:   *) );

     CONNECT_8           (IN := EXV_SPS_0026.VAL(* POSITION := -1*-1: SIZE := 26* -1:   *) );

     CONNECT_9           (IN := EXV_SPS_0028.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) );

     CONNECT_10          (IN := EXV_SPS_0029.VAL(* POSITION := -1*-1: SIZE := 45* -1:   *) );

     AND10_11            (X1 := OR10_1.Y,
                          X2 := OR10_5.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_12            (X1 := OR10_2.Y,
                          X2 := OR10_5.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_13            (X1 := OR10_3.Y,
                          X2 := OR10_5.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_14            (X1 := OR10_4.Y,
                          X2 := OR10_5.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     EXV_SPS_0022        (LNK := 22,
                          VAL := CONNECT_6.OUT(* POSITION := -1*-1: SIZE := 41* -1:   *) );
     EXV_SPS_0025        (LNK := 25,
                          VAL := CONNECT_7.OUT(* POSITION := -1*-1: SIZE := 25* -1:   *) );
     EXV_SPS_0027        (LNK := 27,
                          VAL := CONNECT_8.OUT(* POSITION := -1*-1: SIZE := 30* -1:   *) );
     EXV_SPS_0030        (LNK := 30,
                          VAL := CONNECT_9.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0031        (LNK := 31,
                          VAL := CONNECT_10.OUT(* POSITION := -1*-1: SIZE := 31* -1:   *) );
     EXV_SPS_0033        (LNK := 33,
                          VAL := AND10_11.Y(* POSITION := -1*-1: SIZE := 33* -1:   *) );
     EXV_SPS_0034        (LNK := 34,
                          VAL := AND10_12.Y(* POSITION := -1*-1: SIZE := 33* -1:   *) );
     EXV_SPS_0035        (LNK := 35,
                          VAL := AND10_13.Y(* POSITION := -1*-1: SIZE := 33* -1:   *) );
     EXV_SPS_0036        (LNK := 36,
                          VAL := AND10_14.Y(* POSITION := -1*-1: SIZE := 33* -1:   *) );

(* COMMENT_TEXT;{X=65,Y=1};{Width=22, Height=3};Font := Arial,FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;ALARMAS F002 *)
(* COMMENT_TEXT;{X=60,Y=72};{Width=33, Height=3};Font := Arial,FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;DISPAROS POR FASES *)

END_PROGRAM

                                                  (* ---------- Program : CHART_fb64a5a6_930c_4c0b_8b68_ba5c24b5787b ----------  *)

PROGRAM CHART_fb64a5a6_930c_4c0b_8b68_ba5c24b5787b
{COMMENT := "Lógico 50BF";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=      *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 68,6; SIZE := 12, 12; } :OR10;         

     (* 0050 - F06_F002.Application.FG1_UserDef.FB4_Universal.Init3p *)
     EXV_SPS_0050   {COMMENT := "F06_F002.Application.FG1_UserDef.FB4_Universal.Init3p";DESC := "0##Application#Usuario#GGIO1#Arranque 50BF F003##1";}:IEXV_SPS_BO;

     (* 0051 - F06_F002.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Initiation *)
     EXV_SPS_0051   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Initiation";DESC := "0##Application#Interruptor HV#50BF#>Start##1";}:OEXV_BO_SPS;

     (* 0052 - F06_F002.Application.FG1_UserDef.FB4_Universal.OpEx86 *)
     EXV_SPS_0052   {COMMENT := "F06_F002.Application.FG1_UserDef.FB4_Universal.OpEx86";DESC := "0##Application#Usuario#GGIO1#Opero 86T##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0050        (LNK := 50);

     EXV_SPS_0052        (LNK := 52);

     OR10_1              (X1 := EXV_SPS_0050.VAL(* POSITION := -1*-1: SIZE := 29* -1:   *) ,
                          X2 := EXV_SPS_0052.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0051        (LNK := 51,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 26* -1:   *) );

(* COMMENT_TEXT;{X=61,Y=2};{Width=26, Height=3};Font := Arial,FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;ARRANQUES 50BF *)

END_PROGRAM

                                                  (* ---------- Program : CHART_f9f39a58_b729_4fe4_acbc_feeb6b36c4c7 ----------  *)

PROGRAM CHART_f9f39a58_b729_4fe4_acbc_feeb6b36c4c7
{COMMENT := "Lógico Interlocking";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=       *)
VAR



     (* IO_IOVISIBILITY;NOR10_1;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID NOR10_1;1  *)
NOR10_1         { COMMENT := 'nor10_1'; POSITION := 58,7; SIZE := 12, 12; } :NOR10;        


     (* IO_IOVISIBILITY;AND10_2;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_1'; POSITION := 80,9; SIZE := 12, 12; } :AND10;        

     (* 0053 - F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0053   {COMMENT := "F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#PT B1 69kV V-3ph#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0054 - F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0054   {COMMENT := "F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#PT B 13.8kV V-1ph#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0055 - F06_F002.Application.FG1_Breaker_3pol.FB1_CILO.EnaCls *)
     EXV_SPS_0055   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_CILO.EnaCls";DESC := "0##Application#Interruptor HV#Interlocking#>Enable closing##1";}:OEXV_BO_SPS;

     (* 0056 - F06_F002.Application.FG1_UserDef.FB6_Universal.ColAlm *)
     EXV_SPS_0056   {COMMENT := "F06_F002.Application.FG1_UserDef.FB6_Universal.ColAlm";DESC := "0##Application#Usuario#SCBR1#Falla SCD1##1";}:IEXV_SPS_BO;

     (* 0057 - F06_F002.Application.FG1_UserDef.FB4_Universal.OpEx86 *)
     EXV_SPS_0057   {COMMENT := "F06_F002.Application.FG1_UserDef.FB4_Universal.OpEx86";DESC := "0##Application#Usuario#GGIO1#Opero 86T##1";}:IEXV_SPS_BO;

     (* 0058 - F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0058   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#Interruptor HV#Circuit break.#Position#open##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0053        (LNK := 53);

     EXV_SPS_0054        (LNK := 54);

     EXV_SPS_0056        (LNK := 56);

     EXV_SPS_0057        (LNK := 57);

     EXV_SPS_0058        (LNK := 58);

     NOR10_1             (X1 := EXV_SPS_0056.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X2 := EXV_SPS_0053.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X3 := EXV_SPS_0054.VAL(* POSITION := -1*-1: SIZE := 39* -1:   *) ,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_2             (X1 := NOR10_1.Y,
                          X2 := EXV_SPS_0058.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          X3 := NOT EXV_SPS_0057.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     EXV_SPS_0055        (LNK := 55,
                          VAL := AND10_2.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );

(* COMMENT_TEXT;{X=55,Y=2};{Width=37, Height=3};Font := Arial,FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;PERMISIVO CIERRE Q0 HV *)

END_PROGRAM

                                                  (* ---------- Program : CHART_f31921e5_3b60_4a9a_9f46_b5aa012ecf30 ----------  *)

PROGRAM CHART_f31921e5_3b60_4a9a_9f46_b5aa012ecf30
{COMMENT := "Lógico Posiciones";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=      *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_5'; POSITION := 56,7; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_6'; POSITION := 56,14; SIZE := 12, 12; } :OR10;         

               
     (* PartitionInfo;PartitionID BUILD_Q_3;1  *)
BUILD_Q_3       { COMMENT := 'build_q_1'; POSITION := 56,21; SIZE := 12, 12; } :BUILD_Q;      

               
     (* PartitionInfo;PartitionID BUILD_Q_4;1  *)
BUILD_Q_4       { COMMENT := 'build_q_2'; POSITION := 49,40; SIZE := 12, 12; } :BUILD_Q;      

               
     (* PartitionInfo;PartitionID BUILD_DPS_5;1  *)
BUILD_DPS_5     { COMMENT := 'build_dps_5'; POSITION := 79,7; SIZE := 12, 12; } :BUILD_DPS;    

               
     (* PartitionInfo;PartitionID BUILD_DPS_6;1  *)
BUILD_DPS_6     { COMMENT := 'build_dps_1'; POSITION := 69,35; SIZE := 12, 12; } :BUILD_DPS;    

     (* 0059 - F06_F002.Application.FG1_UserDef.FB10_Universal.RxPos1.DPS_StatusOn *)
     EXV_SPS_0059   {COMMENT := "F06_F002.Application.FG1_UserDef.FB10_Universal.RxPos1.DPS_StatusOn";DESC := "0##Application#Usuario#GOOSE#Posicion 6T6-Q0#closed##1";}:IEXV_SPS_BO;

     (* 0060 - F06_F002.Application.FG1_UserDef.FB10_Universal.RxPos1.DPS_StatusOff *)
     EXV_SPS_0060   {COMMENT := "F06_F002.Application.FG1_UserDef.FB10_Universal.RxPos1.DPS_StatusOff";DESC := "0##Application#Usuario#GOOSE#Posicion 6T6-Q0#open##1";}:IEXV_SPS_BO;

     (* 0061 - F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.XCBR1 *)
     EXV_SPS_0061   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.XCBR1";DESC := "0##Application#Interruptor HV#Circuit break.#Q0 Cerrado##1";}:IEXV_SPS_BO;

     (* 0062 - F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.Pos *)
     EXV_DPS_0062   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.Pos";DESC := "0##Application#Interruptor HV#Circuit break.#Position##1";}:OEXV_DS_DPS;

     (* 0063 - F06_F002.Application.FG1_UserDef.FB10_Universal.RxPos.DPS_StatusOn *)
     EXV_SPS_0063   {COMMENT := "F06_F002.Application.FG1_UserDef.FB10_Universal.RxPos.DPS_StatusOn";DESC := "0##Application#Usuario#GOOSE#Posicion 9T7-Q0#closed##1";}:IEXV_SPS_BO;

     (* 0064 - F06_F002.Application.FG2_Breaker_3pol.FB1_XCBR.Pos *)
     EXV_DPS_0064   {COMMENT := "F06_F002.Application.FG2_Breaker_3pol.FB1_XCBR.Pos";DESC := "0##Application#Interruptor LV#Circuit break.#Position##1";}:OEXV_DS_DPS;
END_VAR

     EXV_SPS_0059        (LNK := 59);

     EXV_SPS_0060        (LNK := 60);

     EXV_SPS_0061        (LNK := 61);

     EXV_SPS_0063        (LNK := 63);

     OR10_1              (X1 := EXV_SPS_0059.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0061.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := NOT EXV_SPS_0061.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          X2 := EXV_SPS_0060.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     BUILD_Q_3           (GOOD := 1,
                          BAD := 0);

     BUILD_Q_4           (GOOD := 1,
                          BAD := 0);

     BUILD_DPS_5         (IS_ON := OR10_1.Y,
                          IS_OFF := OR10_2.Y,
                          BAD_00 := 0,
                          QL := BUILD_Q_3.QL);

     BUILD_DPS_6         (IS_ON := EXV_SPS_0063.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          IS_OFF := NOT EXV_SPS_0063.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          BAD_00 := 0,
                          QL := BUILD_Q_4.QL);

     EXV_DPS_0062        (LNK := 62,
                          VAL := BUILD_DPS_5.OUT(* POSITION := -1*-1: SIZE := 32* -1:   *) );
     EXV_DPS_0064        (LNK := 64,
                          VAL := BUILD_DPS_6.OUT(* POSITION := -1*-1: SIZE := 32* -1:   *) );

(* COMMENT_TEXT;{X=62,Y=2};{Width=27, Height=3};Font := Arial,FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;POSICIÓN Q0 HV *)
(* COMMENT_TEXT;{X=60,Y=30};{Width=27, Height=3};Font := Arial,FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;POSICIÓN Q0 LV *)

END_PROGRAM

                                                  (* ---------- Program : CHART_d861becd_f029_452c_b109_4922e0f15c5d ----------  *)

PROGRAM CHART_d861becd_f029_452c_b109_4922e0f15c5d
{COMMENT := "Lógico Oscilografía";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=      *)
VAR


               
     (* PartitionInfo;PartitionID R_TRIG_1;1  *)
R_TRIG_1        { COMMENT := 'r_trig_1'; POSITION := 47,8; SIZE := 12, 12; } :R_TRIG;       

               
     (* PartitionInfo;PartitionID R_TRIG_2;1  *)
R_TRIG_2        { COMMENT := 'r_trig_2'; POSITION := 47,13; SIZE := 12, 12; } :R_TRIG;       

               
     (* PartitionInfo;PartitionID R_TRIG_3;1  *)
R_TRIG_3        { COMMENT := 'r_trig_3'; POSITION := 47,18; SIZE := 12, 12; } :R_TRIG;       

               
     (* PartitionInfo;PartitionID R_TRIG_4;1  *)
R_TRIG_4        { COMMENT := 'r_trig_4'; POSITION := 47,23; SIZE := 12, 12; } :R_TRIG;       


     (* IO_IOVISIBILITY;OR10_5;X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_5;1  *)
OR10_5          { COMMENT := 'or10_1'; POSITION := 72,8; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_6;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_6;1  *)
AND10_6         { COMMENT := 'and10_1'; POSITION := 92,8; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_7;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_7;1  *)
OR10_7          { COMMENT := 'or10_2'; POSITION := 76,33; SIZE := 12, 12; } :OR10;         

     (* 0065 - F06_F002.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0065   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor HV#Trip logic#Trip indication#general##1";}:IEXV_SPS_BO;

     (* 0066 - F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0066   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#Interruptor HV#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0067 - F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn *)
     EXV_SPS_0067   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn";DESC := "0##Application#Interruptor HV#Circuit break.#Position#closed##1";}:IEXV_SPS_BO;

     (* 0068 - F06_F002.Application.FG1_Recording.FN1_Recorder_DEF.FB1_RDRE_DEF.StrExt *)
     EXV_SPS_0068   {COMMENT := "F06_F002.Application.FG1_Recording.FN1_Recorder_DEF.FB1_RDRE_DEF.StrExt";DESC := "0##Application#Recording#Fault recorder#Control#>External start##1";}:OEXV_BO_SPS;

     (* 0069 - F06_F002.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn *)
     EXV_SPS_0069   {COMMENT := "F06_F002.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn";DESC := "0##Application#Interruptor LV#Circuit break.#Position#closed##1";}:IEXV_SPS_BO;

     (* 0070 - F06_F002.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0070   {COMMENT := "F06_F002.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#Interruptor LV#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0071 - F06_F002.Application.FG2_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0071   {COMMENT := "F06_F002.Application.FG2_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor LV#Trip logic#Trip indication#general##1";}:IEXV_SPS_BO;

     (* 0072 - F06_F002.Application.FG1_UserDef.FB4_Universal.OpCls0 *)
     EXV_SPS_0072   {COMMENT := "F06_F002.Application.FG1_UserDef.FB4_Universal.OpCls0";DESC := "0##Application#Usuario#GGIO1#Cierre Manual Q0##1";}:IEXV_SPS_BO;

     (* 0073 - F06_F002.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_FastUnrestrained.Inactive *)
     EXV_SPS_0073   {COMMENT := "F06_F002.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_FastUnrestrained.Inactive";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#I-DIFF fast#Inactive##1";}:IEXV_SPS_BO;

     (* 0074 - F06_F002.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_Restrained.Inactive *)
     EXV_SPS_0074   {COMMENT := "F06_F002.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_Restrained.Inactive";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#I-DIFF#Inactive##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0065        (LNK := 65);

     EXV_SPS_0066        (LNK := 66);

     EXV_SPS_0067        (LNK := 67);

     EXV_SPS_0069        (LNK := 69);

     EXV_SPS_0070        (LNK := 70);

     EXV_SPS_0071        (LNK := 71);

     EXV_SPS_0072        (LNK := 72);

     EXV_SPS_0073        (LNK := 73);

     EXV_SPS_0074        (LNK := 74);

     R_TRIG_1            (CLK := EXV_SPS_0066.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) );

     R_TRIG_2            (CLK := EXV_SPS_0067.VAL(* POSITION := -1*-1: SIZE := 36* -1:   *) );

     R_TRIG_3            (CLK := EXV_SPS_0069.VAL(* POSITION := -1*-1: SIZE := 36* -1:   *) );

     R_TRIG_4            (CLK := EXV_SPS_0070.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) );

     OR10_5              (X1 := R_TRIG_1.Q,
                          X2 := R_TRIG_2.Q,
                          X3 := R_TRIG_3.Q,
                          X4 := R_TRIG_4.Q,
                          X5 := EXV_SPS_0072.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) ,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_6             (X1 := OR10_5.Y,
                          X2 := NOT EXV_SPS_0065.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X3 := NOT EXV_SPS_0071.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     OR10_7              (X1 := EXV_SPS_0074.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) ,
                          X2 := EXV_SPS_0073.VAL(* POSITION := -1*-1: SIZE := 42* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);
     EXV_SPS_0068        (LNK := 68,
                          VAL := AND10_6.Y(* POSITION := -1*-1: SIZE := 37* -1:   *) );

(* COMMENT_TEXT;{X=62,Y=1};{Width=27, Height=5};Font := Arial,FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;ARRANQUE OSCILOGRAFIA *)
(* COMMENT_TEXT;{X=73,Y=26};{Width=19, Height=4};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := 0,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;BLOQUEO 87T REF *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Cierre_Q0 ----------  *)

PROGRAM CHART_Cierre_Q0
{COMMENT := "Cierre Q0";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=  *)
VAR



     (* IO_IOVISIBILITY;AND10_1;X10: *)
               
     (* PartitionInfo;PartitionID AND10_1;1  *)
AND10_1         { COMMENT := 'and10_1'; POSITION := 58,17; SIZE := 12, 12; } :AND10;        

     (* 0075 - F06_F002.Application.FG1_Breaker_3pol.FB1_STCS_2BI.TripRelay *)
     EXV_SPS_0075   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_STCS_2BI.TripRelay";DESC := "0##Application#Interruptor HV#74TC - SCD1#>Trip relay##1";}:IEXV_SPS_BO;

     (* 0076 - F06_F002.Application.FG1_UserDef.FB4_Universal.OpCls0 *)
     EXV_SPS_0076   {COMMENT := "F06_F002.Application.FG1_UserDef.FB4_Universal.OpCls0";DESC := "0##Application#Usuario#GGIO1#Cierre Manual Q0##1";}:IEXV_SPS_BO;

     (* 0077 - F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.MCB3 *)
     EXV_SPS_0077   {COMMENT := "F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.MCB3";DESC := "0##Application#Power system#PT B 13.8kV V-1ph#VT miniatureCB#Falla MCB PT 13.8kV PCyM##1";}:IEXV_SPS_BO;

     (* 0078 - F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB *)
     EXV_SPS_0078   {COMMENT := "F06_F002.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.MCB";DESC := "0##Application#Power system#PT B1 69kV V-3ph#VT miniatureCB#Falla MCB PT Bus1/2 69 PCyM##1";}:IEXV_SPS_BO;

     (* 0079 - F06_F002.Application.FG1_UserDef.FB4_Universal.OpEx86 *)
     EXV_SPS_0079   {COMMENT := "F06_F002.Application.FG1_UserDef.FB4_Universal.OpEx86";DESC := "0##Application#Usuario#GGIO1#Opero 86T##1";}:IEXV_SPS_BO;

     (* 0080 - F06_F002.Application.FG2_PowerTransformerSide.FBChartSetting_SPG1.SPS1 *)
     EXV_SPS_0080   {COMMENT := "F06_F002.Application.FG2_PowerTransformerSide.FBChartSetting_SPG1.SPS1";DESC := "0##Application#13.8 KV#ANSI 27 LV#ANSI 27 LV PickUp##1";}:IEXV_SPS_BO;

     (* 0081 - F06_F002.Application.FG_BinaryIO.BinaryOutputs.FB12_BinaryOutput.InVal *)
     EXV_SPS_0081   {COMMENT := "F06_F002.Application.FG_BinaryIO.BinaryOutputs.FB12_BinaryOutput.InVal";DESC := "0##Application#Binary IO#Binary outputs#Binary output12#Value##1";}:OEXV_BO_SPS;

     (* 0082 - F06_F002.Application.FG1_UserDef.FB2_Universal.FailDiagDS *)
     EXV_SPS_0082   {COMMENT := "F06_F002.Application.FG1_UserDef.FB2_Universal.FailDiagDS";DESC := "0##Application#Usuario#SIED4#Anormalidad F06_BCU##1";}:IEXV_SPS_BO;

     (* 0083 - F06_F002.Application.FG_BinaryIO.BinaryInputs.FB13_BinaryInput.OutVal *)
     EXV_SPS_0083   {COMMENT := "F06_F002.Application.FG_BinaryIO.BinaryInputs.FB13_BinaryInput.OutVal";DESC := "0##Application#Binary IO#Binary inputs#Binary input13#Value##1";}:IEXV_SPS_BO;

     (* 0084 - F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.XCBR1 *)
     EXV_SPS_0084   {COMMENT := "F06_F002.Application.FG1_Breaker_3pol.FB1_XCBR.XCBR1";DESC := "0##Application#Interruptor HV#Circuit break.#Q0 Cerrado##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0075        (LNK := 75);

     EXV_SPS_0076        (LNK := 76);

     EXV_SPS_0077        (LNK := 77);

     EXV_SPS_0078        (LNK := 78);

     EXV_SPS_0079        (LNK := 79);

     EXV_SPS_0080        (LNK := 80);

     EXV_SPS_0082        (LNK := 82);

     EXV_SPS_0083        (LNK := 83);

     EXV_SPS_0084        (LNK := 84);

     AND10_1             (X1 := EXV_SPS_0075.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
                          X2 := EXV_SPS_0076.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) ,
                          X3 := EXV_SPS_0077.VAL(* POSITION := -1*-1: SIZE := 48* -1:   *) ,
                          X4 := EXV_SPS_0078.VAL(* POSITION := -1*-1: SIZE := 49* -1:   *) ,
                          X5 := NOT EXV_SPS_0079.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) ,
                          X6 := EXV_SPS_0080.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X7 := EXV_SPS_0084.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          X8 := EXV_SPS_0082.VAL(* POSITION := 22*28: SIZE := 30* -1:   *) ,
                          X9 := EXV_SPS_0083.VAL(* POSITION := 15*31: SIZE := 37* -1:   *) ,
                          X10 := 1);

     EXV_SPS_0081        (LNK := 81,
                          VAL := AND10_1.Y(* POSITION := -1*-1: SIZE := 38* -1:   *) );


END_PROGRAM

                                                  (* ---------- Program : CHART_27_LV_Alarm ----------  *)

PROGRAM CHART_27_LV_Alarm
{COMMENT := "27 LV Alarm";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=  *)
VAR


               
     (* PartitionInfo;PartitionID LE_R_1;1  *)
LE_R_1          { COMMENT := 'le_r_1'; POSITION := 45,13; SIZE := 12, 12; } :LE_R;         

               

     (* IO_IOUNIT;TON_2;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TON_2;1  *)
TON_2           { COMMENT := 'ton_1'; POSITION := 75,13; SIZE := 12, 12; } :TON;          

     (* 0085 - F06_F002.Application.FG1_StandardUI_1ph.FN1_OMV_Fund_1ph.FB1_OpMeas_Fund_1ph_Pres.VxC.CMV_Mag *)
     EXV_MV_0085    {COMMENT := "F06_F002.Application.FG1_StandardUI_1ph.FN1_OMV_Fund_1ph.FB1_OpMeas_Fund_1ph_Pres.VxC.CMV_Mag";DESC := "0##Application#PT  13.8kV#Fundamental#Fundam#V#magnitude##1";}:IEXV_MVL_RE;

     (* 0086 - F06_F002.Application.FG2_PowerTransformerSide.FBChartSetting_SPG1.SPS *)
     EXV_SPS_0086   {COMMENT := "F06_F002.Application.FG2_PowerTransformerSide.FBChartSetting_SPG1.SPS";DESC := "0##Application#13.8 KV#ANSI 27 LV#ANSI 27 LV Alarm##1";}:OEXV_BO_SPS;

     (* 0087 - F06_F002.Application.FG2_PowerTransformerSide.FBChartSetting_SPG1.SPS1 *)
     EXV_SPS_0087   {COMMENT := "F06_F002.Application.FG2_PowerTransformerSide.FBChartSetting_SPG1.SPS1";DESC := "0##Application#13.8 KV#ANSI 27 LV#ANSI 27 LV PickUp##1";}:OEXV_BO_SPS;
END_VAR

     EXV_MV_0085         (LNK := 85);

     LE_R_1              (IN1 := EXV_MV_0085.VAL(* POSITION := -1*-1: SIZE := 34* -1:   *) ,
                          IN2 := 6.64);


     TON_2               (IN := LE_R_1.OUT,
                          PT := 60000);

     EXV_SPS_0086        (LNK := 86,
                          VAL := TON_2.Q(* POSITION := -1*-1: SIZE := 31* -1:   *) );
     EXV_SPS_0087        (LNK := 87,
                          VAL := LE_R_1.OUT(* POSITION := -1*-1: SIZE := 31* -1:   *) );


END_PROGRAM

                                                  (* ---------- Program : CHART_ANSI_27_HV ----------  *)

PROGRAM CHART_ANSI_27_HV
{COMMENT := "ANSI 27 HV";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=  *)
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

     (* 0088 - F06_F002.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSA_Mag *)
     EXV_MV_0088    {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSA_Mag";DESC := "0##Application#66 KV#Fund./sym.comp.#Fundam#Vph#phs A magn.##1";}:IEXV_MVL_RE;

     (* 0089 - F06_F002.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSB_Mag *)
     EXV_MV_0089    {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSB_Mag";DESC := "0##Application#66 KV#Fund./sym.comp.#Fundam#Vph#phs B magn.##1";}:IEXV_MVL_RE;

     (* 0090 - F06_F002.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSC_Mag *)
     EXV_MV_0090    {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSC_Mag";DESC := "0##Application#66 KV#Fund./sym.comp.#Fundam#Vph#phs C magn.##1";}:IEXV_MVL_RE;

     (* 0091 - F06_F002.Application.FG1_PowerTransformerSide.FBChartSetting_SPG1.SPS1 *)
     EXV_SPS_0091   {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FBChartSetting_SPG1.SPS1";DESC := "0##Application#66 KV#ANSI 27 HV#ANSI 27 HV Alarma##1";}:OEXV_BO_SPS;

     (* 0092 - F06_F002.Application.FG1_PowerTransformerSide.FBChartSetting_SPG1.SPS *)
     EXV_SPS_0092   {COMMENT := "F06_F002.Application.FG1_PowerTransformerSide.FBChartSetting_SPG1.SPS";DESC := "0##Application#66 KV#ANSI 27 HV#ANSI 27 HV PickUp##1";}:OEXV_BO_SPS;
END_VAR

     EXV_MV_0088         (LNK := 88);

     EXV_MV_0089         (LNK := 89);

     EXV_MV_0090         (LNK := 90);

     LE_R_1              (IN1 := EXV_MV_0088.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          IN2 := 6.64);

     LE_R_2              (IN1 := EXV_MV_0089.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          IN2 := 6.64);

     LE_R_3              (IN1 := EXV_MV_0090.VAL(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
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

     EXV_SPS_0091        (LNK := 91,
                          VAL := TON_5.Q(* POSITION := -1*-1: SIZE := 30* -1:   *) );
     EXV_SPS_0092        (LNK := 92,
                          VAL := OR10_4.Y(* POSITION := 90*21: SIZE := 30* -1:   *) );


END_PROGRAM

CONFIGURATION  PLC_CONTROL 
   RESOURCE PLANS { COMMENT := "Txt100_100";} ON CPU32
     TASK EVENT_SLOW     { TICKS := 1300;}(PRIORITY := INTERNAL);
     TASK EVENT_FAST     { TICKS := 255;}(PRIORITY := INTERNAL);
     TASK MEASUREMENT    { TICKS := 2536;}(PRIORITY := INTERNAL);
     TASK INTERLOCKING   { TICKS := 2173;}(PRIORITY := INTERNAL);

     PROGRAM FBI001 WITH EVENT_SLOW:  CHART_e25e9a5c_6746_4c2f_a7df_d855c15d8b2a;
     PROGRAM FBI002 WITH EVENT_SLOW:  CHART_ee3534f3_86dc_4136_8932_aad2f5b44fe1;
     PROGRAM FBI003 WITH EVENT_SLOW:  CHART_830e140f_4d28_49ac_9621_b61b6ef2ad33;
     PROGRAM FBI004 WITH EVENT_FAST:  CHART_fb64a5a6_930c_4c0b_8b68_ba5c24b5787b;
     PROGRAM FBI005 WITH EVENT_SLOW:  CHART_f9f39a58_b729_4fe4_acbc_feeb6b36c4c7;
     PROGRAM FBI006 WITH EVENT_SLOW:  CHART_f31921e5_3b60_4a9a_9f46_b5aa012ecf30;
     PROGRAM FBI007 WITH EVENT_SLOW:  CHART_d861becd_f029_452c_b109_4922e0f15c5d;
     PROGRAM FBI008 WITH EVENT_SLOW:  CHART_Cierre_Q0;
     PROGRAM FBI009 WITH EVENT_SLOW:  CHART_27_LV_Alarm;
     PROGRAM FBI010 WITH EVENT_SLOW:  CHART_ANSI_27_HV;

   END_RESOURCE

 END_CONFIGURATION