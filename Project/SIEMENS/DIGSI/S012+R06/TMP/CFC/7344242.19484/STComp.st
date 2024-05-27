
                                                  (* ---------- Structure : QUAL ----------  *)
TYPE QUAL:
STRUCT
       VAL   :  WORD;
END_STRUCT;
END_TYPE

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



                                                  (* ---------- Function Block : BUILD_SPS ----------  *)

FUNCTION_BLOCK BUILD_SPS
{
     TICKS           := 0;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10246;
     COMMENT         := 'BUILD_SPS';
     NESTED          := NO;
}
VAR_INPUT
        VAL { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
        QL { TICKS := 0; VISIBLE := YES;}:QUAL;
END_VAR
VAR_OUTPUT
        OUT { TICKS := 0; VISIBLE := YES;}:SSPS;
END_VAR
VAR
     INI : BOOL  :=  0;
END_VAR
     GATE BSPS
END_FUNCTION_BLOCK



                                                  (* ---------- Function Block : OR_SPS ----------  *)

FUNCTION_BLOCK OR_SPS
{
     TICKS           := 1;
     GENERIC         := NO;
     BLOCKVIEW       := BIG;
     SYSTIMER        := 0;
     FF_MEMO_MEM     := 0;
     HELPID          := 10272;
     COMMENT         := 'OR_SPS';
     NESTED          := NO;
}
VAR_INPUT
        IN1 { TICKS := 0; VISIBLE := YES;}:SSPS;
        IN2 { TICKS := 0; VISIBLE := YES;}:SSPS;
        IN3 { TICKS := 0; VISIBLE := YES;}:SSPS;
        IN4 { TICKS := 0; VISIBLE := YES;}:SSPS;
        STRICT { TICKS := 0; VISIBLE := NO;}:BOOL := 0;
END_VAR
VAR_OUTPUT
        OUT { TICKS := 0; VISIBLE := YES;}:SSPS;
        VALID { TICKS := 0; VISIBLE := YES;}:BOOL := 0;
END_VAR
VAR
     INI : BOOL  :=  0;
END_VAR
     GATE ORSP
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



     (* IO_IOVISIBILITY;OR10_1;X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 56,3; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_2'; POSITION := 56,15; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_3;1  *)
OR10_3          { COMMENT := 'or10_3'; POSITION := 56,28; SIZE := 12, 12; } :OR10;         

               
     (* PartitionInfo;PartitionID BUILD_Q_4;1  *)
BUILD_Q_4       { COMMENT := 'build_q_1'; POSITION := 73,10; SIZE := 12, 12; } :BUILD_Q;      

               
     (* PartitionInfo;PartitionID BUILD_Q_5;1  *)
BUILD_Q_5       { COMMENT := 'build_q_2'; POSITION := 73,22; SIZE := 12, 12; } :BUILD_Q;      

               
     (* PartitionInfo;PartitionID BUILD_Q_6;1  *)
BUILD_Q_6       { COMMENT := 'build_q_3'; POSITION := 73,33; SIZE := 12, 12; } :BUILD_Q;      

               
     (* PartitionInfo;PartitionID BUILD_SPS_7;1  *)
BUILD_SPS_7     { COMMENT := 'build_sps_1'; POSITION := 92,3; SIZE := 12, 12; } :BUILD_SPS;    

               
     (* PartitionInfo;PartitionID BUILD_SPS_8;1  *)
BUILD_SPS_8     { COMMENT := 'build_sps_2'; POSITION := 92,15; SIZE := 12, 12; } :BUILD_SPS;    

               
     (* PartitionInfo;PartitionID BUILD_SPS_9;1  *)
BUILD_SPS_9     { COMMENT := 'build_sps_3'; POSITION := 92,28; SIZE := 12, 12; } :BUILD_SPS;    


     (* IO_IOVISIBILITY;OR_SPS_10;IN4:STRICT: *)
               
     (* PartitionInfo;PartitionID OR_SPS_10;1  *)
OR_SPS_10       { COMMENT := 'or_sps_1'; POSITION := 113,14; SIZE := 12, 12; } :OR_SPS;       

     (* 0003 - SIP2.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_CurBalSV.Failure *)
     EXV_SPS_0003   {COMMENT := "SIP2.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_CurBalSV.Failure";DESC := "0##Application#Power system#Meas.point I-3ph 1#Supv. balan. I#Failure##1";}:IEXV_SPS_BO;

     (* 0004 - SIP2.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_CurPhSeqSV.Failure *)
     EXV_SPS_0004   {COMMENT := "SIP2.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_CurPhSeqSV.Failure";DESC := "0##Application#Power system#Meas.point I-3ph 1#Supv. ph.seq.I#Failure##1";}:IEXV_SPS_BO;

     (* 0005 - SIP2.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_SlowCurSumSV.Failure *)
     EXV_SPS_0005   {COMMENT := "SIP2.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_SlowCurSumSV.Failure";DESC := "0##Application#Power system#Meas.point I-3ph 1#Supv. sum I#Failure##1";}:IEXV_SPS_BO;

     (* 0006 - SIP2.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_FastCurSumSV.Failure *)
     EXV_SPS_0006   {COMMENT := "SIP2.Application.FG_PowerSystem.FN1_MUCurrent_3ph.FB1_FastCurSumSV.Failure";DESC := "0##Application#Power system#Meas.point I-3ph 1#Supv.ADC sum I#Failure##1";}:IEXV_SPS_BO;

     (* 0007 - SIP2.Application.FG_PowerSystem.FN2_MUCurrent_3ph.FB1_CurBalSV.Failure *)
     EXV_SPS_0007   {COMMENT := "SIP2.Application.FG_PowerSystem.FN2_MUCurrent_3ph.FB1_CurBalSV.Failure";DESC := "0##Application#Power system#Meas.point I-3ph 2#Supv. balan. I#Failure##1";}:IEXV_SPS_BO;

     (* 0008 - SIP2.Application.FG_PowerSystem.FN2_MUCurrent_3ph.FB1_CurPhSeqSV.Failure *)
     EXV_SPS_0008   {COMMENT := "SIP2.Application.FG_PowerSystem.FN2_MUCurrent_3ph.FB1_CurPhSeqSV.Failure";DESC := "0##Application#Power system#Meas.point I-3ph 2#Supv. ph.seq.I#Failure##1";}:IEXV_SPS_BO;

     (* 0009 - SIP2.Application.FG_PowerSystem.FN2_MUCurrent_3ph.FB1_SlowCurSumSV.Failure *)
     EXV_SPS_0009   {COMMENT := "SIP2.Application.FG_PowerSystem.FN2_MUCurrent_3ph.FB1_SlowCurSumSV.Failure";DESC := "0##Application#Power system#Meas.point I-3ph 2#Supv. sum I#Failure##1";}:IEXV_SPS_BO;

     (* 0010 - SIP2.Application.FG_PowerSystem.FN2_MUCurrent_3ph.FB1_FastCurSumSV.Failure *)
     EXV_SPS_0010   {COMMENT := "SIP2.Application.FG_PowerSystem.FN2_MUCurrent_3ph.FB1_FastCurSumSV.Failure";DESC := "0##Application#Power system#Meas.point I-3ph 2#Supv.ADC sum I#Failure##1";}:IEXV_SPS_BO;

     (* 0011 - SIP2.Application.LLN0_Application.HealthDev.Health_Warning *)
     EXV_SPS_0011   {COMMENT := "SIP2.Application.LLN0_Application.HealthDev.Health_Warning";DESC := "0##Application#General#Health#warning##1";}:IEXV_SPS_BO;

     (* 0012 - SIP2.Application.LLN0_Application.HealthDev.Health_Alarm *)
     EXV_SPS_0012   {COMMENT := "SIP2.Application.LLN0_Application.HealthDev.Health_Alarm";DESC := "0##Application#General#Health#alarm##1";}:IEXV_SPS_BO;

     (* 0013 - SIP2.Application.CALH_Application.GrWrnIn *)
     EXV_SPS_0013   {COMMENT := "SIP2.Application.CALH_Application.GrWrnIn";DESC := "0##Application#Alarm handling#>Group Warning##1";}:OEXV_SS_SPS;

     DEF_OR_SPS_10_IN4:SSPS;

END_VAR

DEF_OR_SPS_10_IN4.SP := 0;
DEF_OR_SPS_10_IN4.Q := 16#0000;
     EXV_SPS_0003        (LNK := 3);

     EXV_SPS_0004        (LNK := 4);

     EXV_SPS_0005        (LNK := 5);

     EXV_SPS_0006        (LNK := 6);

     EXV_SPS_0007        (LNK := 7);

     EXV_SPS_0008        (LNK := 8);

     EXV_SPS_0009        (LNK := 9);

     EXV_SPS_0010        (LNK := 10);

     EXV_SPS_0011        (LNK := 11);

     EXV_SPS_0012        (LNK := 12);

     OR10_1              (X1 := EXV_SPS_0003.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) ,
                          X2 := EXV_SPS_0004.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) ,
                          X3 := EXV_SPS_0005.VAL(* POSITION := -1*-1: SIZE := 39* -1:   *) ,
                          X4 := EXV_SPS_0006.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) ,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := EXV_SPS_0007.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) ,
                          X2 := EXV_SPS_0008.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) ,
                          X3 := EXV_SPS_0009.VAL(* POSITION := -1*-1: SIZE := 39* -1:   *) ,
                          X4 := EXV_SPS_0010.VAL(* POSITION := -1*-1: SIZE := 40* -1:   *) ,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_3              (X1 := EXV_SPS_0011.VAL(* POSITION := -1*-1: SIZE := 24* -1:   *) ,
                          X2 := EXV_SPS_0012.VAL(* POSITION := -1*-1: SIZE := 23* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     BUILD_Q_4           (GOOD := 1,
                          BAD := 0);

     BUILD_Q_5           (GOOD := 1,
                          BAD := 0);

     BUILD_Q_6           (GOOD := 1,
                          BAD := 0);

     BUILD_SPS_7         (VAL := OR10_1.Y,
                          QL := BUILD_Q_4.QL);

     BUILD_SPS_8         (VAL := OR10_2.Y,
                          QL := BUILD_Q_5.QL);

     BUILD_SPS_9         (VAL := OR10_3.Y,
                          QL := BUILD_Q_6.QL);

     OR_SPS_10           (IN1 := BUILD_SPS_7.OUT,
                          IN2 := BUILD_SPS_8.OUT,
                          IN3 := BUILD_SPS_9.OUT,
                          IN4 := DEF_OR_SPS_10_IN4,
                          STRICT := 0);

     EXV_SPS_0013        (LNK := 13,
                          VAL := OR_SPS_10.OUT(* POSITION := -1*-1: SIZE := 27* -1:   *) );


END_PROGRAM

                                                  (* ---------- Program : CHART_Process_mode_inactive ----------  *)

PROGRAM CHART_Process_mode_inactive
{COMMENT := "Process mode inactive";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=  *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 35,3; SIZE := 12, 12; } :OR10;         

               
     (* PartitionInfo;PartitionID NEG_2;1  *)
NEG_2           { COMMENT := 'neg_1'; POSITION := 35,12; SIZE := 12, 12; } :NEG;          


     (* IO_IOVISIBILITY;AND10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_3;1  *)
AND10_3         { COMMENT := 'and10_1'; POSITION := 61,11; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID NEG_4;1  *)
NEG_4           { COMMENT := 'neg_2'; POSITION := 80,18; SIZE := 12, 12; } :NEG;          

               

     (* IO_IOUNIT;TLONG_5;
	MS100 := '100ms' *)
     (* PartitionInfo;PartitionID TLONG_5;1  *)
TLONG_5         { COMMENT := 'tlong_1'; POSITION := 103,11; SIZE := 12, 12; } :TLONG;        

     (* 0014 - SIP2.Application.LPHD_Application.SimuMode *)
     EXV_SPS_0014   {COMMENT := "SIP2.Application.LPHD_Application.SimuMode";DESC := "0##Application#Device#Simulation mode active##1";}:IEXV_SPS_BO;

     (* 0015 - SIP2.Application.LPHD_Application.CommMode *)
     EXV_SPS_0015   {COMMENT := "SIP2.Application.LPHD_Application.CommMode";DESC := "0##Application#Device#Commiss. mode active##1";}:IEXV_SPS_BO;

     (* 0016 - SIP2.Application.LPHD_Application.DigsiAct *)
     EXV_SPS_0016   {COMMENT := "SIP2.Application.LPHD_Application.DigsiAct";DESC := "0##Application#Device#DIGSI active##1";}:IEXV_SPS_BO;

     (* 0017 - SIP2.Application.CALH_Application.GrAlmIn *)
     EXV_SPS_0017   {COMMENT := "SIP2.Application.CALH_Application.GrAlmIn";DESC := "0##Application#Alarm handling#>Group Alarm##1";}:OEXV_BO_SPS;

     (* 0018 - SIP2.Application.LPHD_Application.PrcModIna *)
     EXV_SPS_0018   {COMMENT := "SIP2.Application.LPHD_Application.PrcModIna";DESC := "0##Application#Device#Process mode inactive##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0014        (LNK := 14);

     EXV_SPS_0015        (LNK := 15);

     EXV_SPS_0016        (LNK := 16);

     OR10_1              (X1 := EXV_SPS_0014.VAL(* POSITION := -1*-1: SIZE := 28* -1:   *) ,
                          X2 := EXV_SPS_0015.VAL(* POSITION := -1*-1: SIZE := 27* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);


     NEG_2               (IN := EXV_SPS_0016.VAL(* POSITION := -1*-1: SIZE := 23* -1:   *) );

     AND10_3             (X1 := OR10_1.Y,
                          X2 := NEG_2.OUT,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     NEG_4               (IN := AND10_3.Y);

     TLONG_5             (START := AND10_3.Y,
                          RESET := NEG_4.OUT,
                          HOUR := 4,
                          MIN := 0,
                          MS100 := 10);

     EXV_SPS_0017        (LNK := 17,
                          VAL := TLONG_5.Q(* POSITION := -1*-1: SIZE := 27* -1:   *) );
     EXV_SPS_0018        (LNK := 18,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 27* -1:   *) );


END_PROGRAM

CONFIGURATION  PLC_CONTROL 
   RESOURCE PLANS { COMMENT := "Txt100_100";} ON CPU32
     TASK EVENT_SLOW     { TICKS := 1300;}(PRIORITY := INTERNAL);
     TASK EVENT_FAST     { TICKS := 255;}(PRIORITY := INTERNAL);
     TASK MEASUREMENT    { TICKS := 2536;}(PRIORITY := INTERNAL);
     TASK INTERLOCKING   { TICKS := 2173;}(PRIORITY := INTERNAL);

     PROGRAM FBI001 WITH EVENT_SLOW:  CHART_Group_warning;
     PROGRAM FBI002 WITH EVENT_SLOW:  CHART_Process_mode_inactive;

   END_RESOURCE

 END_CONFIGURATION