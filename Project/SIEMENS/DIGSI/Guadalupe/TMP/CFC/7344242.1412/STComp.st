
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





                                                  (* ---------- Program : CHART_Alarmas ----------  *)

PROGRAM CHART_Alarmas
{COMMENT := "Alarmas";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR


               
     (* PartitionInfo;PartitionID R_TRIG_1;1  *)
R_TRIG_1        { COMMENT := 'r_trig_1'; POSITION := 44,43; SIZE := 12, 12; } :R_TRIG;       

               
     (* PartitionInfo;PartitionID R_TRIG_2;1  *)
R_TRIG_2        { COMMENT := 'r_trig_2'; POSITION := 44,48; SIZE := 12, 12; } :R_TRIG;       

               
     (* PartitionInfo;PartitionID R_TRIG_3;1  *)
R_TRIG_3        { COMMENT := 'r_trig_3'; POSITION := 44,53; SIZE := 12, 12; } :R_TRIG;       

               
     (* PartitionInfo;PartitionID R_TRIG_4;1  *)
R_TRIG_4        { COMMENT := 'r_trig_4'; POSITION := 44,58; SIZE := 12, 12; } :R_TRIG;       


     (* IO_IOVISIBILITY;OR10_5;X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_5;1  *)
OR10_5          { COMMENT := 'or10_1'; POSITION := 69,43; SIZE := 12, 12; } :OR10;         

               
     (* PartitionInfo;PartitionID CONNECT_6;1  *)
CONNECT_6       { COMMENT := 'connect_2'; POSITION := 70,17; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_7;1  *)
CONNECT_7       { COMMENT := 'connect_3'; POSITION := 70,22; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_8;1  *)
CONNECT_8       { COMMENT := 'connect_4'; POSITION := 208,1; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_9;1  *)
CONNECT_9       { COMMENT := 'connect_5'; POSITION := 208,6; SIZE := 12, 12; } :CONNECT;      


     (* IO_IOVISIBILITY;AND10_10;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_10;1  *)
AND10_10        { COMMENT := 'and10_1'; POSITION := 89,43; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID CONNECT_11;1  *)
CONNECT_11      { COMMENT := 'connect_6'; POSITION := 68,73; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_12;1  *)
CONNECT_12      { COMMENT := 'connect_7'; POSITION := 68,78; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_13;1  *)
CONNECT_13      { COMMENT := 'connect_8'; POSITION := 68,83; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_14;1  *)
CONNECT_14      { COMMENT := 'connect_9'; POSITION := 68,88; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_15;1  *)
CONNECT_15      { COMMENT := 'connect_10'; POSITION := 70,7; SIZE := 12, 12; } :CONNECT;      


     (* IO_IOVISIBILITY;OR10_16;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_16;1  *)
OR10_16         { COMMENT := 'or10_2'; POSITION := 70,1; SIZE := 12, 12; } :OR10;         

               
     (* PartitionInfo;PartitionID CONNECT_17;1  *)
CONNECT_17      { COMMENT := 'connect_1'; POSITION := 70,12; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID NEG_18;1  *)
NEG_18          { COMMENT := 'neg_1'; POSITION := 70,27; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID NEG_19;1  *)
NEG_19          { COMMENT := 'neg_2'; POSITION := 70,32; SIZE := 12, 12; } :NEG;          

               
     (* PartitionInfo;PartitionID CONNECT_20;1  *)
CONNECT_20      { COMMENT := 'connect_11'; POSITION := 208,11; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_21;1  *)
CONNECT_21      { COMMENT := 'connect_12'; POSITION := 208,16; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_22;1  *)
CONNECT_22      { COMMENT := 'connect_13'; POSITION := 208,21; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_23;1  *)
CONNECT_23      { COMMENT := 'connect_14'; POSITION := 208,26; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_24;1  *)
CONNECT_24      { COMMENT := 'connect_15'; POSITION := 208,31; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_25;1  *)
CONNECT_25      { COMMENT := 'connect_16'; POSITION := 208,36; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_26;1  *)
CONNECT_26      { COMMENT := 'connect_18'; POSITION := 208,41; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_27;1  *)
CONNECT_27      { COMMENT := 'connect_19'; POSITION := 208,46; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_28;1  *)
CONNECT_28      { COMMENT := 'connect_20'; POSITION := 208,51; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_29;1  *)
CONNECT_29      { COMMENT := 'connect_21'; POSITION := 208,56; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_30;1  *)
CONNECT_30      { COMMENT := 'connect_22'; POSITION := 208,61; SIZE := 12, 12; } :CONNECT;      

               
     (* PartitionInfo;PartitionID CONNECT_31;1  *)
CONNECT_31      { COMMENT := 'connect_23'; POSITION := 208,66; SIZE := 12, 12; } :CONNECT;      


     (* IO_IOVISIBILITY;OR10_32;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_32;1  *)
OR10_32         { COMMENT := 'or10_3'; POSITION := 208,73; SIZE := 12, 12; } :OR10;         

               
     (* PartitionInfo;PartitionID NEG_33;1  *)
NEG_33          { COMMENT := 'neg_3'; POSITION := 68,94; SIZE := 12, 12; } :NEG;          

     (* 0010 - GDL69TRF2F002_.Application.LTMS_Application.TmSynErr *)
     EXV_SPS_0010   {COMMENT := "GDL69TRF2F002_.Application.LTMS_Application.TmSynErr";DESC := "0##Application#Time sync.#Time sync. error##1";}:IEXV_SPS_SS;

     (* 0011 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0011   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor HV#Trip logic#Trip indication#general##1";}:IEXV_SPS_BO;

     (* 0012 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0012   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#Interruptor HV#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0013 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn *)
     EXV_SPS_0013   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn";DESC := "0##Application#Interruptor HV#Circuit break.#Position#closed##1";}:IEXV_SPS_BO;

     (* 0014 - GDL69TRF2F002_.Application.FG1_Recording.FN1_Recorder_DEF.FB1_RDRE_DEF.StrExt *)
     EXV_SPS_0014   {COMMENT := "GDL69TRF2F002_.Application.FG1_Recording.FN1_Recorder_DEF.FB1_RDRE_DEF.StrExt";DESC := "0##Application#Recording#Fault recorder#Control#>External start##1";}:OEXV_BO_SPS;

     (* 0015 - GDL69TRF2F002_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn *)
     EXV_SPS_0015   {COMMENT := "GDL69TRF2F002_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOn";DESC := "0##Application#Interruptor LV#Circuit break.#Position#closed##1";}:IEXV_SPS_BO;

     (* 0016 - GDL69TRF2F002_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff *)
     EXV_SPS_0016   {COMMENT := "GDL69TRF2F002_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos.DPC_StatusOff";DESC := "0##Application#Interruptor LV#Circuit break.#Position#open##1";}:IEXV_SPS_BO;

     (* 0017 - GDL69TRF2F002_.Application.FG2_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0017   {COMMENT := "GDL69TRF2F002_.Application.FG2_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor LV#Trip logic#Trip indication#general##1";}:IEXV_SPS_BO;

     (* 0018 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.ResetLeds *)
     EXV_SPS_0018   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.ResetLeds";DESC := "0##Application#Usuario#Logicas#Reset Leds##1";}:OEXV_SS_SPS;

     (* 0019 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.ReleCommis *)
     EXV_SPS_0019   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.ReleCommis";DESC := "0##Application#Usuario#Logicas#Modo Commissioning##1";}:OEXV_SS_SPS;

     (* 0020 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.ReleSimulat *)
     EXV_SPS_0020   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.ReleSimulat";DESC := "0##Application#Usuario#Logicas#Modo Simulacion##1";}:OEXV_SS_SPS;

     (* 0021 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.RelePrueba *)
     EXV_SPS_0021   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.RelePrueba";DESC := "0##Application#Usuario#Logicas#Modo Prueba##1";}:OEXV_SS_SPS;

     (* 0022 - GDL69TRF2F002_.Application.LLN0_Application.LedTstOut *)
     EXV_SPS_0022   {COMMENT := "GDL69TRF2F002_.Application.LLN0_Application.LedTstOut";DESC := "0##Application#General#LED have been reset##1";}:IEXV_SPS_SS;

     (* 0023 - GDL69TRF2F002_.Application.LPHD_Application.SimuMode *)
     EXV_SPS_0023   {COMMENT := "GDL69TRF2F002_.Application.LPHD_Application.SimuMode";DESC := "0##Application#Device#Simulation mode active##1";}:IEXV_SPS_SS;

     (* 0024 - GDL69TRF2F002_.Application.LPHD_Application.CommMode *)
     EXV_SPS_0024   {COMMENT := "GDL69TRF2F002_.Application.LPHD_Application.CommMode";DESC := "0##Application#Device#Commiss. mode active##1";}:IEXV_SPS_SS;

     (* 0025 - GDL69TRF2F002_.Application.LLN0_Application.TstModOn *)
     EXV_SPS_0025   {COMMENT := "GDL69TRF2F002_.Application.LLN0_Application.TstModOn";DESC := "0##Application#General#>Test mode on##1";}:IEXV_SPS_SS;

     (* 0026 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FB1_REF.BlkFct *)
     EXV_SPS_0026   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FB1_REF.BlkFct";DESC := "0##Application#Transformador LV#87N REF#>Block function##1";}:IEXV_SPS_SS;

     (* 0027 - GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_Restrained.Blk *)
     EXV_SPS_0027   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_Restrained.Blk";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#I-DIFF#>Block stage##1";}:IEXV_SPS_BO;

     (* 0028 - GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_FastUnrestrained.Blk *)
     EXV_SPS_0028   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_FastUnrestrained.Blk";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#I-DIFF fast#>Block stage##1";}:IEXV_SPS_BO;

     (* 0029 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Blk *)
     EXV_SPS_0029   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Blk";DESC := "0##Application#Interruptor HV#50BF#>Block function##1";}:IEXV_SPS_SS;

     (* 0030 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Estado87T *)
     EXV_SPS_0030   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Estado87T";DESC := "0##Application#Usuario#Logicas#Estado 87T##1";}:OEXV_BO_SPS;

     (* 0031 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Estado87TN *)
     EXV_SPS_0031   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Estado87TN";DESC := "0##Application#Usuario#Logicas#Estado 87TN##1";}:OEXV_SS_SPS;

     (* 0032 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Estado50BF *)
     EXV_SPS_0032   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Estado50BF";DESC := "0##Application#Usuario#Logicas#Estado 50BF##1";}:OEXV_SS_SPS;

     (* 0033 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SCDB1 *)
     EXV_SPS_0033   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SCDB1";DESC := "0##Application#Usuario#Logicas#Falla SBD1##1";}:OEXV_SS_SPS;

     (* 0034 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaSyncTime *)
     EXV_SPS_0034   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaSyncTime";DESC := "0##Application#Usuario#Logicas#Falla Sincronismo de Tiempo##1";}:OEXV_SS_SPS;

     (* 0035 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaCanal1 *)
     EXV_SPS_0035   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaCanal1";DESC := "0##Application#Usuario#Logicas#Falla Canal 1##1";}:OEXV_BO_SPS;

     (* 0036 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaCanal2 *)
     EXV_SPS_0036   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaCanal2";DESC := "0##Application#Usuario#Logicas#Falla Canal 2##1";}:OEXV_BO_SPS;

     (* 0037 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_STCS_2BI.Failure *)
     EXV_SPS_0037   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_STCS_2BI.Failure";DESC := "0##Application#Interruptor HV#74TC sup.2BI 1#Trip-circuit failure##1";}:IEXV_SPS_SS;

     (* 0038 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.ClsManEmerg *)
     EXV_SPS_0038   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.ClsManEmerg";DESC := "0##Application#Usuario#Entradas#Cierre Manual Int Q0##1";}:IEXV_SPS_BO;

     (* 0039 - GDL69TRF2F002_.Application.FG2_ComModule.FN1_ComChannel.FBComProtRSTP1.ChLiv *)
     EXV_SPS_0039   {COMMENT := "GDL69TRF2F002_.Application.FG2_ComModule.FN1_ComChannel.FBComProtRSTP1.ChLiv";DESC := "0##Application#F:ETH-BB-2FO#Channel 1#RSTP#Channel Live##1";}:IEXV_SPS_BO;

     (* 0040 - GDL69TRF2F002_.Application.FG2_ComModule.FN1_ComChannel.FBComProtRSTP1.RedChLiv *)
     EXV_SPS_0040   {COMMENT := "GDL69TRF2F002_.Application.FG2_ComModule.FN1_ComChannel.FBComProtRSTP1.RedChLiv";DESC := "0##Application#F:ETH-BB-2FO#Channel 1#RSTP#Redund. Channel Live##1";}:IEXV_SPS_BO;

     (* 0041 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip51AT *)
     EXV_SPS_0041   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip51AT";DESC := "0##Application#Usuario#Logicas#Disparo 51 AT##1";}:OEXV_SS_SPS;

     (* 0042 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip50AT *)
     EXV_SPS_0042   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip50AT";DESC := "0##Application#Usuario#Logicas#Disparo 50 AT##1";}:OEXV_SS_SPS;

     (* 0043 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip51NAT *)
     EXV_SPS_0043   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip51NAT";DESC := "0##Application#Usuario#Logicas#Disparo 51N AT##1";}:OEXV_SS_SPS;

     (* 0044 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip50NAT *)
     EXV_SPS_0044   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip50NAT";DESC := "0##Application#Usuario#Logicas#Disparo 50N AT##1";}:OEXV_SS_SPS;

     (* 0045 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip51BT *)
     EXV_SPS_0045   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip51BT";DESC := "0##Application#Usuario#Logicas#Disparo 51 BT##1";}:OEXV_SS_SPS;

     (* 0046 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip50BT *)
     EXV_SPS_0046   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip50BT";DESC := "0##Application#Usuario#Logicas#Disparo 50 BT##1";}:OEXV_SS_SPS;

     (* 0047 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip51NBT *)
     EXV_SPS_0047   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip51NBT";DESC := "0##Application#Usuario#Logicas#Disparo 51N BT##1";}:OEXV_SS_SPS;

     (* 0048 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip50NBT *)
     EXV_SPS_0048   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip50NBT";DESC := "0##Application#Usuario#Logicas#Disparo 50N BT##1";}:OEXV_SS_SPS;

     (* 0049 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip51G *)
     EXV_SPS_0049   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip51G";DESC := "0##Application#Usuario#Logicas#Disparo 51G##1";}:OEXV_SS_SPS;

     (* 0050 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip87T *)
     EXV_SPS_0050   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip87T";DESC := "0##Application#Usuario#Logicas#Disparo 87T##1";}:OEXV_SS_SPS;

     (* 0051 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip87TFast *)
     EXV_SPS_0051   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip87TFast";DESC := "0##Application#Usuario#Logicas#Disparo 87T Fast##1";}:OEXV_SS_SPS;

     (* 0052 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip87TN *)
     EXV_SPS_0052   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip87TN";DESC := "0##Application#Usuario#Logicas#Disparo 87TN##1";}:OEXV_SS_SPS;

     (* 0053 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip50BFE1 *)
     EXV_SPS_0053   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip50BFE1";DESC := "0##Application#Usuario#Logicas#Disparo 50BF E1##1";}:OEXV_SS_SPS;

     (* 0054 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip50BFE2 *)
     EXV_SPS_0054   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Trip50BFE2";DESC := "0##Application#Usuario#Logicas#Disparo 50BF E2##1";}:OEXV_SS_SPS;

     (* 0055 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB1_PTOC_3ph_IOCP_3pol.Op.ACTGeneral *)
     EXV_SPS_0055   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB1_PTOC_3ph_IOCP_3pol.Op.ACTGeneral";DESC := "0##Application#Transformador HV#50/51 OC-3ph-A1#Inverse-T 1#Operate#general##1";}:IEXV_SPS_SS;

     (* 0056 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB1_PTOC_3ph_DOCP_3pol.Op.ACTGeneral *)
     EXV_SPS_0056   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB1_PTOC_3ph_DOCP_3pol.Op.ACTGeneral";DESC := "0##Application#Transformador HV#50/51 OC-3ph-A1#Definite-T 1#Operate#general##1";}:IEXV_SPS_SS;

     (* 0057 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_Gnd_overcurrent.FB1_PTOC_Gnd_IOCP.Op.ACTGeneral *)
     EXV_SPS_0057   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_Gnd_overcurrent.FB1_PTOC_Gnd_IOCP.Op.ACTGeneral";DESC := "0##Application#Transformador HV#50N/51N OC-gnd-A1#Inverse-T 1#Operate#general##1";}:IEXV_SPS_SS;

     (* 0058 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_Gnd_overcurrent.FB1_PTOC_Gnd_DOCP.Op.ACTGeneral *)
     EXV_SPS_0058   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_Gnd_overcurrent.FB1_PTOC_Gnd_DOCP.Op.ACTGeneral";DESC := "0##Application#Transformador HV#50N/51N OC-gnd-A1#Definite-T 1#Operate#general##1";}:IEXV_SPS_SS;

     (* 0059 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB1_PTOC_3ph_IOCP_3pol.Op.ACTGeneral *)
     EXV_SPS_0059   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB1_PTOC_3ph_IOCP_3pol.Op.ACTGeneral";DESC := "0##Application#Transformador LV#50/51 OC-3ph-A1#Inverse-T 1#Operate#general##1";}:IEXV_SPS_SS;

     (* 0060 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB1_PTOC_3ph_DOCP_3pol.Op.ACTGeneral *)
     EXV_SPS_0060   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB1_PTOC_3ph_DOCP_3pol.Op.ACTGeneral";DESC := "0##Application#Transformador LV#50/51 OC-3ph-A1#Definite-T 1#Operate#general##1";}:IEXV_SPS_SS;

     (* 0061 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_Gnd_overcurrent.FB1_PTOC_Gnd_IOCP.Op.ACTGeneral *)
     EXV_SPS_0061   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_Gnd_overcurrent.FB1_PTOC_Gnd_IOCP.Op.ACTGeneral";DESC := "0##Application#Transformador LV#50N/51N OC-gnd-A1#Inverse-T 1#Operate#general##1";}:IEXV_SPS_SS;

     (* 0062 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_Gnd_overcurrent.FB1_PTOC_Gnd_DOCP.Op.ACTGeneral *)
     EXV_SPS_0062   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_Gnd_overcurrent.FB1_PTOC_Gnd_DOCP.Op.ACTGeneral";DESC := "0##Application#Transformador LV#50N/51N OC-gnd-A1#Definite-T 1#Operate#general##1";}:IEXV_SPS_SS;

     (* 0063 - GDL69TRF2F002_.Application.FG1_PowerTransformerStarpoint.FN1_1ph_overcurrent.FB1_PTOC_1ph_IOCP.Op.ACTGeneral *)
     EXV_SPS_0063   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerStarpoint.FN1_1ph_overcurrent.FB1_PTOC_1ph_IOCP.Op.ACTGeneral";DESC := "0##Application#Transform. neut.p 1#50N/51N OC-1ph-A1#Inverse-T 1#Operate#general##1";}:IEXV_SPS_SS;

     (* 0064 - GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_Restrained.Op.ACTGeneral *)
     EXV_SPS_0064   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_Restrained.Op.ACTGeneral";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#I-DIFF#Operate#general##1";}:IEXV_SPS_SS;

     (* 0065 - GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_FastUnrestrained.Op.ACTGeneral *)
     EXV_SPS_0065   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_TDIFF_FastUnrestrained.Op.ACTGeneral";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#I-DIFF fast#Operate#general##1";}:IEXV_SPS_SS;

     (* 0066 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FB1_REF.Op.ACTGeneral *)
     EXV_SPS_0066   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FB1_REF.Op.ACTGeneral";DESC := "0##Application#Transformador LV#87N REF#Operate#general##1";}:IEXV_SPS_SS;

     (* 0067 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpIn.ACTGeneral *)
     EXV_SPS_0067   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpIn.ACTGeneral";DESC := "0##Application#Interruptor HV#50BF#Retrip T1#general##1";}:IEXV_SPS_SS;

     (* 0068 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpEx.ACTGeneral *)
     EXV_SPS_0068   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpEx.ACTGeneral";DESC := "0##Application#Interruptor HV#50BF#Trip T2#general##1";}:IEXV_SPS_SS;

     (* 0069 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Str50BF *)
     EXV_SPS_0069   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.Str50BF";DESC := "0##Application#Usuario#Logicas#Arranque 50BF##1";}:OEXV_BO_SPS;

     (* 0070 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.Str50BF *)
     EXV_SPS_0070   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.Str50BF";DESC := "0##Application#Usuario#Entradas#Arranque 50BF F003##1";}:IEXV_SPS_BO;

     (* 0071 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Str.ACDGeneral *)
     EXV_SPS_0071   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Str.ACDGeneral";DESC := "0##Application#Interruptor HV#50BF#Pickup#general##1";}:IEXV_SPS_BO;

     (* 0072 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.SPS2 *)
     EXV_SPS_0072   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.SPS2";DESC := "0##Application#Usuario#Entradas#Posicion Int Q0 Cerrado##1";}:IEXV_SPS_BO;

     (* 0073 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS3 *)
     EXV_SPS_0073   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS3";DESC := "0##Application#Usuario#Logicas#Posicion Int Q0 Abierto##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0010        (LNK := 10);

     EXV_SPS_0011        (LNK := 11);

     EXV_SPS_0012        (LNK := 12);

     EXV_SPS_0013        (LNK := 13);

     EXV_SPS_0015        (LNK := 15);

     EXV_SPS_0016        (LNK := 16);

     EXV_SPS_0017        (LNK := 17);

     EXV_SPS_0022        (LNK := 22);

     EXV_SPS_0023        (LNK := 23);

     EXV_SPS_0024        (LNK := 24);

     EXV_SPS_0025        (LNK := 25);

     EXV_SPS_0026        (LNK := 26);

     EXV_SPS_0027        (LNK := 27);

     EXV_SPS_0028        (LNK := 28);

     EXV_SPS_0029        (LNK := 29);

     EXV_SPS_0037        (LNK := 37);

     EXV_SPS_0038        (LNK := 38);

     EXV_SPS_0039        (LNK := 39);

     EXV_SPS_0040        (LNK := 40);

     EXV_SPS_0055        (LNK := 55);

     EXV_SPS_0056        (LNK := 56);

     EXV_SPS_0057        (LNK := 57);

     EXV_SPS_0058        (LNK := 58);

     EXV_SPS_0059        (LNK := 59);

     EXV_SPS_0060        (LNK := 60);

     EXV_SPS_0061        (LNK := 61);

     EXV_SPS_0062        (LNK := 62);

     EXV_SPS_0063        (LNK := 63);

     EXV_SPS_0064        (LNK := 64);

     EXV_SPS_0065        (LNK := 65);

     EXV_SPS_0066        (LNK := 66);

     EXV_SPS_0067        (LNK := 67);

     EXV_SPS_0068        (LNK := 68);

     EXV_SPS_0070        (LNK := 70);

     EXV_SPS_0071        (LNK := 71);

     EXV_SPS_0072        (LNK := 72);

     R_TRIG_1            (CLK := EXV_SPS_0012.VAL(* POSITION := 3*46: SIZE := 35* -1:   *) );

     R_TRIG_2            (CLK := EXV_SPS_0013.VAL(* POSITION := 2*51: SIZE := 36* -1:   *) );

     R_TRIG_3            (CLK := EXV_SPS_0015.VAL(* POSITION := 2*56: SIZE := 36* -1:   *) );

     R_TRIG_4            (CLK := EXV_SPS_0016.VAL(* POSITION := 3*61: SIZE := 35* -1:   *) );

     OR10_5              (X1 := R_TRIG_1.Q,
                          X2 := R_TRIG_2.Q,
                          X3 := R_TRIG_3.Q,
                          X4 := R_TRIG_4.Q,
                          X5 := EXV_SPS_0038.VAL(* POSITION := 12*65: SIZE := 32* -1:   *) ,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     CONNECT_6           (IN := EXV_SPS_0037.VAL(* POSITION := 25*20: SIZE := 38* -1:   *) );

     CONNECT_7           (IN := EXV_SPS_0010.VAL(* POSITION := 38*25: SIZE := 28* -1:   *) );

     CONNECT_8           (IN := EXV_SPS_0055.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) );

     CONNECT_9           (IN := EXV_SPS_0056.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) );

     AND10_10            (X1 := OR10_5.Y,
                          X2 := NOT EXV_SPS_0011.VAL(* POSITION := 6*66: SIZE := 38* -1:   *) ,
                          X3 := NOT EXV_SPS_0017.VAL(* POSITION := 6*67: SIZE := 38* -1:   *) ,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     CONNECT_11          (IN := EXV_SPS_0022.VAL(* POSITION := 37*76: SIZE := 26* -1:   *) );

     CONNECT_12          (IN := EXV_SPS_0024.VAL(* POSITION := 36*81: SIZE := 26* -1:   *) );

     CONNECT_13          (IN := EXV_SPS_0023.VAL(* POSITION := 35*86: SIZE := 27* -1:   *) );

     CONNECT_14          (IN := EXV_SPS_0025.VAL(* POSITION := 39*91: SIZE := 23* -1:   *) );

     CONNECT_15          (IN := EXV_SPS_0026.VAL(* POSITION := 31*10: SIZE := 33* -1:   *) );

     OR10_16             (X1 := EXV_SPS_0027.VAL(* POSITION := 22*4: SIZE := 42* -1:   *) ,
                          X2 := EXV_SPS_0028.VAL(* POSITION := 20*5: SIZE := 44* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     CONNECT_17          (IN := EXV_SPS_0029.VAL(* POSITION := 34*15: SIZE := 30* -1:   *) );

     NEG_18              (IN := EXV_SPS_0039.VAL(* POSITION := 31*30: SIZE := 33* -1:   *) );

     NEG_19              (IN := EXV_SPS_0040.VAL(* POSITION := 28*35: SIZE := 37* -1:   *) );

     CONNECT_20          (IN := EXV_SPS_0057.VAL(* POSITION := -1*-1: SIZE := 44* -1:   *) );

     CONNECT_21          (IN := EXV_SPS_0058.VAL(* POSITION := -1*-1: SIZE := 44* -1:   *) );

     CONNECT_22          (IN := EXV_SPS_0059.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) );

     CONNECT_23          (IN := EXV_SPS_0060.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) );

     CONNECT_24          (IN := EXV_SPS_0061.VAL(* POSITION := -1*-1: SIZE := 44* -1:   *) );

     CONNECT_25          (IN := EXV_SPS_0062.VAL(* POSITION := -1*-1: SIZE := 44* -1:   *) );

     CONNECT_26          (IN := EXV_SPS_0063.VAL(* POSITION := -1*-1: SIZE := 45* -1:   *) );

     CONNECT_27          (IN := EXV_SPS_0064.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) );

     CONNECT_28          (IN := EXV_SPS_0065.VAL(* POSITION := -1*-1: SIZE := 45* -1:   *) );

     CONNECT_29          (IN := EXV_SPS_0066.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) );

     CONNECT_30          (IN := EXV_SPS_0067.VAL(* POSITION := 171*64: SIZE := 31* -1:   *) );

     CONNECT_31          (IN := EXV_SPS_0068.VAL(* POSITION := -1*-1: SIZE := 30* -1:   *) );

     OR10_32             (X1 := EXV_SPS_0070.VAL(* POSITION := 171*76: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0071.VAL(* POSITION := 172*77: SIZE := 30* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     NEG_33              (IN := EXV_SPS_0072.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) );

     EXV_SPS_0014        (LNK := 14,
                          VAL := AND10_10.Y(* POSITION := 108*46: SIZE := 37* -1:   *) );
     EXV_SPS_0018        (LNK := 18,
                          VAL := CONNECT_11.OUT(* POSITION := 87*76: SIZE := 26* -1:   *) );
     EXV_SPS_0019        (LNK := 19,
                          VAL := CONNECT_12.OUT(* POSITION := 87*81: SIZE := 30* -1:   *) );
     EXV_SPS_0020        (LNK := 20,
                          VAL := CONNECT_13.OUT(* POSITION := 87*86: SIZE := 28* -1:   *) );
     EXV_SPS_0021        (LNK := 21,
                          VAL := CONNECT_14.OUT(* POSITION := 87*91: SIZE := 26* -1:   *) );
     EXV_SPS_0030        (LNK := 30,
                          VAL := OR10_16.Y(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0031        (LNK := 31,
                          VAL := CONNECT_15.OUT(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0032        (LNK := 32,
                          VAL := CONNECT_17.OUT(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0033        (LNK := 33,
                          VAL := CONNECT_6.OUT(* POSITION := 89*20: SIZE := 26* -1:   *) );
     EXV_SPS_0034        (LNK := 34,
                          VAL := CONNECT_7.OUT(* POSITION := 89*25: SIZE := 34* -1:   *) );
     EXV_SPS_0035        (LNK := 35,
                          VAL := NEG_18.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0036        (LNK := 36,
                          VAL := NEG_19.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0041        (LNK := 41,
                          VAL := CONNECT_8.OUT(* POSITION := -1*-1: SIZE := 27* -1:   *) );
     EXV_SPS_0042        (LNK := 42,
                          VAL := CONNECT_9.OUT(* POSITION := -1*-1: SIZE := 27* -1:   *) );
     EXV_SPS_0043        (LNK := 43,
                          VAL := CONNECT_20.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0044        (LNK := 44,
                          VAL := CONNECT_21.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0045        (LNK := 45,
                          VAL := CONNECT_22.OUT(* POSITION := -1*-1: SIZE := 27* -1:   *) );
     EXV_SPS_0046        (LNK := 46,
                          VAL := CONNECT_23.OUT(* POSITION := -1*-1: SIZE := 27* -1:   *) );
     EXV_SPS_0047        (LNK := 47,
                          VAL := CONNECT_24.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0048        (LNK := 48,
                          VAL := CONNECT_25.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0049        (LNK := 49,
                          VAL := CONNECT_26.OUT(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0050        (LNK := 50,
                          VAL := CONNECT_27.OUT(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0051        (LNK := 51,
                          VAL := CONNECT_28.OUT(* POSITION := 227*54: SIZE := 29* -1:   *) );
     EXV_SPS_0052        (LNK := 52,
                          VAL := CONNECT_29.OUT(* POSITION := -1*-1: SIZE := 27* -1:   *) );
     EXV_SPS_0053        (LNK := 53,
                          VAL := CONNECT_30.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0054        (LNK := 54,
                          VAL := CONNECT_31.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0069        (LNK := 69,
                          VAL := OR10_32.Y(* POSITION := 227*76: SIZE := 28* -1:   *) );
     EXV_SPS_0073        (LNK := 73,
                          VAL := NEG_33.OUT(* POSITION := -1*-1: SIZE := 33* -1:   *) );


END_PROGRAM

                                                  (* ---------- Program : CHART_Arranque_50BF ----------  *)

PROGRAM CHART_Arranque_50BF
{COMMENT := "Arranque 50BF";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 68,4; SIZE := 12, 12; } :OR10;         

     (* 0074 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Initiation *)
     EXV_SPS_0074   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Initiation";DESC := "0##Application#Interruptor HV#50BF#>Start##1";}:OEXV_BO_SPS;

     (* 0075 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.Str50BF *)
     EXV_SPS_0075   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.Str50BF";DESC := "0##Application#Usuario#Entradas#Arranque 50BF F003##1";}:IEXV_SPS_BO;

     (* 0076 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.Op86T *)
     EXV_SPS_0076   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.Op86T";DESC := "0##Application#Usuario#Entradas#Opero 86T##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0075        (LNK := 75);

     EXV_SPS_0076        (LNK := 76);

     OR10_1              (X1 := EXV_SPS_0075.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0076.VAL(* POSITION := -1*-1: SIZE := 26* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0074        (LNK := 74,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 26* -1:   *) );

(* COMMENT_TEXT;{X=13,Y=8};{Width=10, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -32768,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;DISPAROS MEC *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Disparo_por_Fases ----------  *)

PROGRAM CHART_Disparo_por_Fases
{COMMENT := "Disparo por Fases";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 2,Columns := 3,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=    *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_14'; POSITION := 50,53; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_2'; POSITION := 52,125; SIZE := 12, 12; } :OR10;         

               

     (* IO_IOUNIT;TOF_3;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TOF_3;1  *)
TOF_3           { COMMENT := 'tof_1'; POSITION := 71,53; SIZE := 12, 12; } :TOF;          


     (* IO_IOVISIBILITY;OR10_4;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_4;1  *)
OR10_4          { COMMENT := 'or10_15'; POSITION := 71,60; SIZE := 12, 12; } :OR10;         

               

     (* IO_IOUNIT;TOF_5;
	PT := 'ms' *)
     (* PartitionInfo;PartitionID TOF_5;1  *)
TOF_5           { COMMENT := 'tof_2'; POSITION := 73,125; SIZE := 12, 12; } :TOF;          


     (* IO_IOVISIBILITY;OR10_6;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_6;1  *)
OR10_6          { COMMENT := 'or10_12'; POSITION := 73,132; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_7;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_7;1  *)
AND10_7         { COMMENT := 'and10_6'; POSITION := 90,53; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_8;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_8;1  *)
AND10_8         { COMMENT := 'and10_1'; POSITION := 92,125; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_9;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_9;1  *)
OR10_9          { COMMENT := 'or10_8'; POSITION := 115,10; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_10;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_10;1  *)
OR10_10         { COMMENT := 'or10_11'; POSITION := 115,26; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_11;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_11;1  *)
OR10_11         { COMMENT := 'or10_13'; POSITION := 115,42; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_12;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_12;1  *)
OR10_12         { COMMENT := 'or10_16'; POSITION := 115,81; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_13;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_13;1  *)
OR10_13         { COMMENT := 'or10_17'; POSITION := 115,97; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_14;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_14;1  *)
OR10_14         { COMMENT := 'or10_18'; POSITION := 115,114; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_15;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_15;1  *)
AND10_15        { COMMENT := 'and10_7'; POSITION := 229,101; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_16;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_16;1  *)
AND10_16        { COMMENT := 'and10_11'; POSITION := 229,109; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_17;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_17;1  *)
AND10_17        { COMMENT := 'and10_12'; POSITION := 229,117; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_18;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_18;1  *)
AND10_18        { COMMENT := 'and10_3'; POSITION := 138,9; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_19;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_19;1  *)
AND10_19        { COMMENT := 'and10_4'; POSITION := 138,25; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_20;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_20;1  *)
AND10_20        { COMMENT := 'and10_5'; POSITION := 138,41; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_21;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_21;1  *)
AND10_21        { COMMENT := 'and10_2'; POSITION := 138,80; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_22;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_22;1  *)
AND10_22        { COMMENT := 'and10_8'; POSITION := 138,96; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_23;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_23;1  *)
AND10_23        { COMMENT := 'and10_9'; POSITION := 138,113; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID CONNECT_24;1  *)
CONNECT_24      { COMMENT := 'connect_2'; POSITION := 228,89; SIZE := 12, 12; } :CONNECT;      


     (* IO_IOVISIBILITY;AND10_25;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_25;1  *)
AND10_25        { COMMENT := 'and10_10'; POSITION := 230,50; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_26;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_26;1  *)
OR10_26         { COMMENT := 'or10_1'; POSITION := 261,112; SIZE := 12, 12; } :OR10;         

               
     (* PartitionInfo;PartitionID CONNECT_27;1  *)
CONNECT_27      { COMMENT := 'connect_1'; POSITION := 231,31; SIZE := 12, 12; } :CONNECT;      

     (* 0077 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhAAT *)
     EXV_SPS_0077   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhAAT";DESC := "0##Application#Usuario#Logicas#Disparo General AT Fase A##1";}:OEXV_BO_SPS;

     (* 0078 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhBAT *)
     EXV_SPS_0078   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhBAT";DESC := "0##Application#Usuario#Logicas#Disparo General AT Fase B##1";}:OEXV_BO_SPS;

     (* 0079 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhCAT *)
     EXV_SPS_0079   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhCAT";DESC := "0##Application#Usuario#Logicas#Disparo General AT Fase C##1";}:OEXV_BO_SPS;

     (* 0080 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhABT *)
     EXV_SPS_0080   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhABT";DESC := "0##Application#Usuario#Logicas#Disparo General BT Fase A##1";}:OEXV_BO_SPS;

     (* 0081 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhBBT *)
     EXV_SPS_0081   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhBBT";DESC := "0##Application#Usuario#Logicas#Disparo General BT Fase B##1";}:OEXV_BO_SPS;

     (* 0082 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhCBT *)
     EXV_SPS_0082   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhCBT";DESC := "0##Application#Usuario#Logicas#Disparo General BT Fase C##1";}:OEXV_BO_SPS;

     (* 0083 - GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_PTRC.Str.ACDL1 *)
     EXV_SPS_0083   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_PTRC.Str.ACDL1";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#Group indicat.#Pickup#phs A##1";}:IEXV_SPS_BO;

     (* 0084 - GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_PTRC.Str.ACDL2 *)
     EXV_SPS_0084   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_PTRC.Str.ACDL2";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#Group indicat.#Pickup#phs B##1";}:IEXV_SPS_BO;

     (* 0085 - GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_PTRC.Str.ACDL3 *)
     EXV_SPS_0085   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformer.FN1_TransformerDiff.FB_PTRC.Str.ACDL3";DESC := "0##Application#Transformer diff. 1#87T diff. prot. 1#Group indicat.#Pickup#phs C##1";}:IEXV_SPS_BO;

     (* 0086 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0086   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor HV#Trip logic#Trip indication#general##1";}:IEXV_SPS_BO;

     (* 0087 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FB1_REF.Op.ACTGeneral *)
     EXV_SPS_0087   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FB1_REF.Op.ACTGeneral";DESC := "0##Application#Transformador LV#87N REF#Operate#general##1";}:IEXV_SPS_BO;

     (* 0088 - GDL69TRF2F002_.Application.FG2_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0088   {COMMENT := "GDL69TRF2F002_.Application.FG2_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor LV#Trip logic#Trip indication#general##1";}:IEXV_SPS_BO;

     (* 0089 - GDL69TRF2F002_.Application.FG2_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0089   {COMMENT := "GDL69TRF2F002_.Application.FG2_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor LV#Trip logic#Trip indication#general##1";}:IEXV_SPS_SS;

     (* 0090 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDNeut *)
     EXV_SPS_0090   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDNeut";DESC := "0##Application#Transformador HV#Group indicat.#Pickup#gnd##1";}:IEXV_SPS_BO;

     (* 0091 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDNeut *)
     EXV_SPS_0091   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FB1_PTRC_FG_TransformerSide_3ph.Str.ACDNeut";DESC := "0##Application#Transformador LV#Group indicat.#Pickup#gnd##1";}:IEXV_SPS_BO;

     (* 0092 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FB1_REF.Str.ACDGeneral *)
     EXV_SPS_0092   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FB1_REF.Str.ACDGeneral";DESC := "0##Application#Transformador LV#87N REF#Pickup#general##1";}:IEXV_SPS_BO;

     (* 0093 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDL1 *)
     EXV_SPS_0093   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDL1";DESC := "0##Application#Transformador HV#50/51 OC-3ph-A1#Group indicat.#Pickup#phs A##1";}:IEXV_SPS_BO;

     (* 0094 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDL2 *)
     EXV_SPS_0094   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDL2";DESC := "0##Application#Transformador HV#50/51 OC-3ph-A1#Group indicat.#Pickup#phs B##1";}:IEXV_SPS_BO;

     (* 0095 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDL3 *)
     EXV_SPS_0095   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDL3";DESC := "0##Application#Transformador HV#50/51 OC-3ph-A1#Group indicat.#Pickup#phs C##1";}:IEXV_SPS_BO;

     (* 0096 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB1_PTOC_3ph_IOCP_3pol.Str.ACDGeneral *)
     EXV_SPS_0096   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB1_PTOC_3ph_IOCP_3pol.Str.ACDGeneral";DESC := "0##Application#Transformador HV#50/51 OC-3ph-A1#Inverse-T 1#Pickup#general##1";}:IEXV_SPS_BO;

     (* 0097 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_Gnd_overcurrent.FB1_PTOC_Gnd_IOCP.Op.ACTGeneral *)
     EXV_SPS_0097   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_Gnd_overcurrent.FB1_PTOC_Gnd_IOCP.Op.ACTGeneral";DESC := "0##Application#Transformador HV#50N/51N OC-gnd-A1#Inverse-T 1#Operate#general##1";}:IEXV_SPS_BO;

     (* 0098 - GDL69TRF2F002_.Application.FG1_PowerTransformerStarpoint.FN1_1ph_overcurrent.FB1_PTOC_1ph_IOCP.Str.ACDGeneral *)
     EXV_SPS_0098   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerStarpoint.FN1_1ph_overcurrent.FB1_PTOC_1ph_IOCP.Str.ACDGeneral";DESC := "0##Application#Transform. neut.p 1#50N/51N OC-1ph-A1#Inverse-T 1#Pickup#general##1";}:IEXV_SPS_BO;

     (* 0099 - GDL69TRF2F002_.Application.FG1_PowerTransformerStarpoint.FN1_1ph_overcurrent.FB1_PTOC_1ph_IOCP.Op.ACTGeneral *)
     EXV_SPS_0099   {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerStarpoint.FN1_1ph_overcurrent.FB1_PTOC_1ph_IOCP.Op.ACTGeneral";DESC := "0##Application#Transform. neut.p 1#50N/51N OC-1ph-A1#Inverse-T 1#Operate#general##1";}:IEXV_SPS_BO;

     (* 0100 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhNBT *)
     EXV_SPS_0100   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhNBT";DESC := "0##Application#Usuario#Logicas#Disparo General BT Neutro##1";}:OEXV_BO_SPS;

     (* 0101 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripGralBT *)
     EXV_SPS_0101   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripGralBT";DESC := "0##Application#Usuario#Logicas#Disparo General BT##1";}:OEXV_SS_SPS;

     (* 0102 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhNAT *)
     EXV_SPS_0102   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripPhNAT";DESC := "0##Application#Usuario#Logicas#Disparo General AT Neutro##1";}:OEXV_BO_SPS;

     (* 0103 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDL1 *)
     EXV_SPS_0103   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDL1";DESC := "0##Application#Transformador LV#50/51 OC-3ph-A1#Group indicat.#Pickup#phs A##1";}:IEXV_SPS_BO;

     (* 0104 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDL2 *)
     EXV_SPS_0104   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDL2";DESC := "0##Application#Transformador LV#50/51 OC-3ph-A1#Group indicat.#Pickup#phs B##1";}:IEXV_SPS_BO;

     (* 0105 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDL3 *)
     EXV_SPS_0105   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDL3";DESC := "0##Application#Transformador LV#50/51 OC-3ph-A1#Group indicat.#Pickup#phs C##1";}:IEXV_SPS_BO;

     (* 0106 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_Gnd_overcurrent.FB_PTRC.Op.ACTGeneral *)
     EXV_SPS_0106   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_Gnd_overcurrent.FB_PTRC.Op.ACTGeneral";DESC := "0##Application#Transformador LV#50N/51N OC-gnd-A1#Group indicat.#Operate#general##1";}:IEXV_SPS_BO;

     (* 0107 - GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDGeneral *)
     EXV_SPS_0107   {COMMENT := "GDL69TRF2F002_.Application.FG2_PowerTransformerSide.FN1_3ph_overcurrent_3pol.FB_PTRC.Str.ACDGeneral";DESC := "0##Application#Transformador LV#50/51 OC-3ph-A1#Group indicat.#Pickup#general##1";}:IEXV_SPS_BO;

     (* 0108 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral *)
     EXV_SPS_0108   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_PTRC_Trip.Tr.ACTGeneral";DESC := "0##Application#Interruptor HV#Trip logic#Trip indication#general##1";}:IEXV_SPS_SS;

     (* 0109 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripGralAT *)
     EXV_SPS_0109   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.TripGralAT";DESC := "0##Application#Usuario#Logicas#Disparo General AT##1";}:OEXV_SS_SPS;
END_VAR

     EXV_SPS_0083        (LNK := 83);

     EXV_SPS_0084        (LNK := 84);

     EXV_SPS_0085        (LNK := 85);

     EXV_SPS_0086        (LNK := 86);

     EXV_SPS_0087        (LNK := 87);

     EXV_SPS_0088        (LNK := 88);

     EXV_SPS_0089        (LNK := 89);

     EXV_SPS_0090        (LNK := 90);

     EXV_SPS_0091        (LNK := 91);

     EXV_SPS_0092        (LNK := 92);

     EXV_SPS_0093        (LNK := 93);

     EXV_SPS_0094        (LNK := 94);

     EXV_SPS_0095        (LNK := 95);

     EXV_SPS_0096        (LNK := 96);

     EXV_SPS_0097        (LNK := 97);

     EXV_SPS_0098        (LNK := 98);

     EXV_SPS_0099        (LNK := 99);

     EXV_SPS_0103        (LNK := 103);

     EXV_SPS_0104        (LNK := 104);

     EXV_SPS_0105        (LNK := 105);

     EXV_SPS_0106        (LNK := 106);

     EXV_SPS_0107        (LNK := 107);

     EXV_SPS_0108        (LNK := 108);

     OR10_1              (X1 := EXV_SPS_0096.VAL(* POSITION := 0*56: SIZE := 43* -1:   *) ,
                          X2 := 0,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := EXV_SPS_0107.VAL(* POSITION := -1*-1: SIZE := 44* -1:   *) ,
                          X2 := 0,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     TOF_3               (IN := OR10_1.Y,
                          PT := 30);

     OR10_4              (X1 := EXV_SPS_0097.VAL(* POSITION := -1*-1: SIZE := 44* -1:   *) ,
                          X2 := 0,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     TOF_5               (IN := OR10_2.Y,
                          PT := 30);

     OR10_6              (X1 := EXV_SPS_0106.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X2 := EXV_SPS_0087.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_7             (X1 := NOT TOF_3.Q,
                          X2 := OR10_4.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     AND10_8             (X1 := NOT TOF_5.Q,
                          X2 := OR10_6.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);



     OR10_9              (X1 := EXV_SPS_0083.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X2 := EXV_SPS_0093.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) ,
                          X3 := AND10_7.Y,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_10             (X1 := EXV_SPS_0084.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X2 := EXV_SPS_0094.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) ,
                          X3 := AND10_7.Y,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_11             (X1 := EXV_SPS_0085.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X2 := EXV_SPS_0095.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) ,
                          X3 := AND10_7.Y,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_12             (X1 := EXV_SPS_0083.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X2 := EXV_SPS_0103.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) ,
                          X3 := AND10_8.Y,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_13             (X1 := EXV_SPS_0084.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X2 := EXV_SPS_0104.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) ,
                          X3 := AND10_8.Y,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_14             (X1 := EXV_SPS_0085.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X2 := EXV_SPS_0105.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) ,
                          X3 := AND10_8.Y,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_15            (X1 := EXV_SPS_0091.VAL(* POSITION := 189*104: SIZE := 34* -1:   *) ,
                          X2 := EXV_SPS_0088.VAL(* POSITION := 185*105: SIZE := 38* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_16            (X1 := EXV_SPS_0098.VAL(* POSITION := -1*-1: SIZE := 45* -1:   *) ,
                          X2 := EXV_SPS_0099.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_17            (X1 := EXV_SPS_0092.VAL(* POSITION := 190*120: SIZE := 33* -1:   *) ,
                          X2 := EXV_SPS_0087.VAL(* POSITION := 190*121: SIZE := 33* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_18            (X1 := EXV_SPS_0086.VAL(* POSITION := 95*2: SIZE := 38* -1:   *) ,
                          X2 := OR10_9.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_19            (X1 := EXV_SPS_0086.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X2 := OR10_10.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_20            (X1 := EXV_SPS_0086.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X2 := OR10_11.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_21            (X1 := EXV_SPS_0088.VAL(* POSITION := 103*74: SIZE := 38* -1:   *) ,
                          X2 := OR10_12.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_22            (X1 := EXV_SPS_0088.VAL(* POSITION := 110*91: SIZE := 38* -1:   *) ,
                          X2 := OR10_13.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_23            (X1 := EXV_SPS_0088.VAL(* POSITION := 111*106: SIZE := 38* -1:   *) ,
                          X2 := OR10_14.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     CONNECT_24          (IN := EXV_SPS_0089.VAL(* POSITION := 185*92: SIZE := 37* -1:   *) );

     AND10_25            (X1 := EXV_SPS_0090.VAL(* POSITION := -1*-1: SIZE := 34* -1:   *) ,
                          X2 := EXV_SPS_0086.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     OR10_26             (X1 := AND10_15.Y,
                          X2 := AND10_16.Y,
                          X3 := AND10_17.Y,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     CONNECT_27          (IN := EXV_SPS_0108.VAL(* POSITION := 188*34: SIZE := 37* -1:   *) );

     EXV_SPS_0077        (LNK := 77,
                          VAL := AND10_18.Y(* POSITION := 157*12: SIZE := 34* -1:   *) );
     EXV_SPS_0078        (LNK := 78,
                          VAL := AND10_19.Y(* POSITION := 157*28: SIZE := 34* -1:   *) );
     EXV_SPS_0079        (LNK := 79,
                          VAL := AND10_20.Y(* POSITION := 156*44: SIZE := 34* -1:   *) );
     EXV_SPS_0080        (LNK := 80,
                          VAL := AND10_21.Y(* POSITION := 157*83: SIZE := 34* -1:   *) );
     EXV_SPS_0081        (LNK := 81,
                          VAL := AND10_22.Y(* POSITION := 157*99: SIZE := 34* -1:   *) );
     EXV_SPS_0082        (LNK := 82,
                          VAL := AND10_23.Y(* POSITION := 157*116: SIZE := 34* -1:   *) );
     EXV_SPS_0100        (LNK := 100,
                          VAL := OR10_26.Y(* POSITION := -1*-1: SIZE := 34* -1:   *) );
     EXV_SPS_0101        (LNK := 101,
                          VAL := CONNECT_24.OUT(* POSITION := -1*-1: SIZE := 30* -1:   *) );
     EXV_SPS_0102        (LNK := 102,
                          VAL := AND10_25.Y(* POSITION := -1*-1: SIZE := 34* -1:   *) );
     EXV_SPS_0109        (LNK := 109,
                          VAL := CONNECT_27.OUT(* POSITION := 250*34: SIZE := 30* -1:   *) );

(* COMMENT_TEXT;{X=79,Y=6};{Width=16, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;DISPARO FASE R *)
(* COMMENT_TEXT;{X=79,Y=22};{Width=16, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;DISPARO FASE S *)
(* COMMENT_TEXT;{X=79,Y=37};{Width=16, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;DISPARO FASE T *)
(* COMMENT_TEXT;{X=81,Y=77};{Width=16, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;DISPARO FASE R *)
(* COMMENT_TEXT;{X=81,Y=93};{Width=16, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;DISPARO FASE S *)
(* COMMENT_TEXT;{X=81,Y=110};{Width=16, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;DISPARO FASE T *)
(* COMMENT_TEXT;{X=8,Y=4};{Width=21, Height=3};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;SEÑALIZACION DE DISPAROS POR FASE EN EL LADO DE 69kV *)
(* COMMENT_TEXT;{X=8,Y=73};{Width=21, Height=3};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;SEÑALIZACION DE DISPAROS POR FASE EN EL LADO DE 13.8kV *)

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

     (* 0110 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaGooseF003 *)
     EXV_SPS_0110   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaGooseF003";DESC := "0##Application#Usuario#Logicas#Falla Goose F003##1";}:OEXV_BO_SPS;

     (* 0111 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaGooseGral *)
     EXV_SPS_0111   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaGooseGral";DESC := "0##Application#Usuario#Logicas#Falla Goose General##1";}:OEXV_BO_SPS;

     (* 0112 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaGooseBCU *)
     EXV_SPS_0112   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaGooseBCU";DESC := "0##Application#Usuario#Logicas#Falla Goose BCU##1";}:OEXV_BO_SPS;

     (* 0113 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaGooseF004 *)
     EXV_SPS_0113   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaGooseF004";DESC := "0##Application#Usuario#Logicas#Falla Goose F004##1";}:OEXV_BO_SPS;

     (* 0114 - GDL69TRF2F002_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB1_LGOS.DiagErr.DiagErr_OK *)
     EXV_SPS_0114   {COMMENT := "GDL69TRF2F002_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB1_LGOS.DiagErr.DiagErr_OK";DESC := "0##Application#Com. supervision#GOOSE supervis.#F04_F004#Diagnosis error#no error##1";}:IEXV_SPS_BO;

     (* 0115 - GDL69TRF2F002_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB2_LGOS.DiagErr.DiagErr_OK *)
     EXV_SPS_0115   {COMMENT := "GDL69TRF2F002_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB2_LGOS.DiagErr.DiagErr_OK";DESC := "0##Application#Com. supervision#GOOSE supervis.#F04_BCU#Diagnosis error#no error##1";}:IEXV_SPS_BO;

     (* 0116 - GDL69TRF2F002_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB3_LGOS.DiagErr.DiagErr_OK *)
     EXV_SPS_0116   {COMMENT := "GDL69TRF2F002_.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB3_LGOS.DiagErr.DiagErr_OK";DESC := "0##Application#Com. supervision#GOOSE supervis.#F04_F003#Diagnosis error#no error##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0114        (LNK := 114);

     EXV_SPS_0115        (LNK := 115);

     EXV_SPS_0116        (LNK := 116);

     OR10_1              (X1 := NOT EXV_SPS_0115.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X2 := NOT EXV_SPS_0114.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X3 := NOT EXV_SPS_0116.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) ,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     NEG_2               (IN := EXV_SPS_0115.VAL(* POSITION := 12*23: SIZE := 46* -1:   *) );

     NEG_3               (IN := EXV_SPS_0116.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) );

     NEG_4               (IN := EXV_SPS_0114.VAL(* POSITION := -1*-1: SIZE := 46* -1:   *) );

     EXV_SPS_0110        (LNK := 110,
                          VAL := NEG_3.OUT(* POSITION := -1*-1: SIZE := 29* -1:   *) );
     EXV_SPS_0111        (LNK := 111,
                          VAL := OR10_1.Y(* POSITION := -1*-1: SIZE := 31* -1:   *) );
     EXV_SPS_0112        (LNK := 112,
                          VAL := NEG_2.OUT(* POSITION := -1*-1: SIZE := 29* -1:   *) );
     EXV_SPS_0113        (LNK := 113,
                          VAL := NEG_4.OUT(* POSITION := -1*-1: SIZE := 29* -1:   *) );

(* COMMENT_TEXT;{X=57,Y=2};{Width=23, Height=2};FontSize := 12,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := -16777216,WallpaperGamma := 100,PartitionID := 1,;FALLA GOOSE *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Falla_PTs ----------  *)

PROGRAM CHART_Falla_PTs
{COMMENT := "Falla PTs";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_1'; POSITION := 55,10; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_3'; POSITION := 55,23; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_3;1  *)
AND10_3         { COMMENT := 'and10_1'; POSITION := 74,4; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_4;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_4;1  *)
AND10_4         { COMMENT := 'and10_2'; POSITION := 74,15; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_5;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_5;1  *)
OR10_5          { COMMENT := 'or10_2'; POSITION := 71,41; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_6;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_6;1  *)
OR10_6          { COMMENT := 'or10_4'; POSITION := 105,11; SIZE := 12, 12; } :OR10;         

     (* 0117 - GDL69TRF2F002_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0117   {COMMENT := "GDL69TRF2F002_.Application.FG_PowerSystem.FN1_MUVoltage_3ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#PTs Barra 69kV#VT miniatureCB#>Open##1";}:OEXV_BO_SPS;

     (* 0118 - GDL69TRF2F002_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0118   {COMMENT := "GDL69TRF2F002_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#PTs Barra 13.8kV#VT miniatureCB#>Open##1";}:OEXV_BO_SPS;

     (* 0119 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2PCyMLV *)
     EXV_SPS_0119   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2PCyMLV";DESC := "0##Application#Usuario#Entradas#Falla MCB PT 13.8kV PCyM N2##1";}:IEXV_SPS_BO;

     (* 0120 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2TUJLV *)
     EXV_SPS_0120   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2TUJLV";DESC := "0##Application#Usuario#Entradas#Falla MCB PT 13.8kV 9TUJ N2##1";}:IEXV_SPS_BO;

     (* 0121 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2Bar2HV *)
     EXV_SPS_0121   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2Bar2HV";DESC := "0##Application#Usuario#Entradas#Falla MCB PT B2 69kV 6TUJ2 N2##1";}:IEXV_SPS_BO;

     (* 0122 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2Bar1HV *)
     EXV_SPS_0122   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2Bar1HV";DESC := "0##Application#Usuario#Entradas#Falla MCB PT B1 69kV 6TUJ1 N2##1";}:IEXV_SPS_BO;

     (* 0123 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2PCyMHV *)
     EXV_SPS_0123   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2PCyMHV";DESC := "0##Application#Usuario#Entradas#Falla MCB PT B1_2 69kV PCyM N2##1";}:IEXV_SPS_BO;

     (* 0124 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaPTAlta *)
     EXV_SPS_0124   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaPTAlta";DESC := "0##Application#Usuario#Logicas#Falla PT Alta##1";}:OEXV_BO_SPS;

     (* 0125 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaPTBaja *)
     EXV_SPS_0125   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.FaPTBaja";DESC := "0##Application#Usuario#Logicas#Falla PT Baja##1";}:OEXV_BO_SPS;

     (* 0126 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.SPS1 *)
     EXV_SPS_0126   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.SPS1";DESC := "0##Application#Usuario#Entradas#Posicion Q1 Cerrado##1";}:IEXV_SPS_BO;

     (* 0127 - GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.RxPosQ2.DPC_StatusOn *)
     EXV_SPS_0127   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.RxPosQ2.DPC_StatusOn";DESC := "0##Application#Usuario#Rx Goose#Posicion 6T4-Q2#closed##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0119        (LNK := 119);

     EXV_SPS_0120        (LNK := 120);

     EXV_SPS_0121        (LNK := 121);

     EXV_SPS_0122        (LNK := 122);

     EXV_SPS_0123        (LNK := 123);

     EXV_SPS_0126        (LNK := 126);

     EXV_SPS_0127        (LNK := 127);

     OR10_1              (X1 := EXV_SPS_0123.VAL(* POSITION := 14*13: SIZE := 37* -1:   *) ,
                          X2 := EXV_SPS_0122.VAL(* POSITION := 15*14: SIZE := 36* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := EXV_SPS_0123.VAL(* POSITION := 12*26: SIZE := 37* -1:   *) ,
                          X2 := EXV_SPS_0121.VAL(* POSITION := 13*27: SIZE := 36* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     AND10_3             (X1 := EXV_SPS_0126.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X2 := OR10_1.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_4             (X1 := EXV_SPS_0127.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          X2 := NOT EXV_SPS_0126.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X3 := OR10_2.Y,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     OR10_5              (X1 := EXV_SPS_0119.VAL(* POSITION := 30*44: SIZE := 35* -1:   *) ,
                          X2 := EXV_SPS_0120.VAL(* POSITION := 30*45: SIZE := 35* -1:   *) ,
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


     EXV_SPS_0117        (LNK := 117,
                          VAL := OR10_6.Y(* POSITION := -1*-1: SIZE := 37* -1:   *) );
     EXV_SPS_0118        (LNK := 118,
                          VAL := OR10_5.Y(* POSITION := 90*45: SIZE := 38* -1:   *) );
     EXV_SPS_0124        (LNK := 124,
                          VAL := OR10_6.Y(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0125        (LNK := 125,
                          VAL := OR10_5.Y(* POSITION := 90*44: SIZE := 28* -1:   *) );

(* COMMENT_TEXT;{X=17,Y=39};{Width=17, Height=1};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Falla Mcb PT lado 13.8 kV *)
(* COMMENT_TEXT;{X=16,Y=3};{Width=17, Height=1};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Falla Mcb PT lado 69 kV *)
(* COMMENT_TEXT;{X=8,Y=18};{Width=17, Height=1};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE Pos Q2 F003 *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Interlocking ----------  *)

PROGRAM CHART_Interlocking
{COMMENT := "Interlocking";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=    *)
VAR



     (* IO_IOVISIBILITY;AND10_1;X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_1;1  *)
AND10_1         { COMMENT := 'and10_4'; POSITION := 68,2; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_2;X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_5'; POSITION := 68,12; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_3;1  *)
OR10_3          { COMMENT := 'or10_1'; POSITION := 87,7; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;AND10_4;X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_4;1  *)
AND10_4         { COMMENT := 'and10_1'; POSITION := 67,26; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_5;X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_5;1  *)
AND10_5         { COMMENT := 'and10_3'; POSITION := 67,38; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_6;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_6;1  *)
AND10_6         { COMMENT := 'and10_2'; POSITION := 92,32; SIZE := 12, 12; } :AND10;        

     (* 0128 - GDL69TRF2F002_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb *)
     EXV_SPS_0128   {COMMENT := "GDL69TRF2F002_.Application.FG_PowerSystem.FN1_MUVoltage_1ph.FB1_SMCB.VTmcb";DESC := "0##Application#Power system#PTs Barra 13.8kV#VT miniatureCB#>Open##1";}:IEXV_SPS_BO;

     (* 0129 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS10 *)
     EXV_SPS_0129   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS10";DESC := "0##Application#Usuario#Logicas#Condicion de Sincronismo##1";}:IEXV_SPS_BO;

     (* 0130 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_CILO.EnaClsFix *)
     EXV_SPS_0130   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_CILO.EnaClsFix";DESC := "0##Application#Interruptor HV#Interlocking#>Enable closing (fixed)##1";}:OEXV_BO_SPS;

     (* 0131 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS14 *)
     EXV_SPS_0131   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS14";DESC := "0##Application#Usuario#Logicas#Permisivo Q0 CLS 1 Display##1";}:OEXV_BO_SPS;

     (* 0132 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS15 *)
     EXV_SPS_0132   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS15";DESC := "0##Application#Usuario#Logicas#Permisivo Q0 CLS 2 Display##1";}:OEXV_BO_SPS;

     (* 0133 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SCDB1 *)
     EXV_SPS_0133   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SCDB1";DESC := "0##Application#Usuario#Logicas#Falla SBD1##1";}:IEXV_SPS_BO;

     (* 0134 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.BCUNoDispon *)
     EXV_SPS_0134   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.BCUNoDispon";DESC := "0##Application#Usuario#Entradas#Anormalidad F04_BCU##1";}:IEXV_SPS_BO;

     (* 0135 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.SPS2 *)
     EXV_SPS_0135   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.SPS2";DESC := "0##Application#Usuario#Entradas#Posicion Int Q0 Cerrado##1";}:IEXV_SPS_BO;

     (* 0136 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.Op86T *)
     EXV_SPS_0136   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.Op86T";DESC := "0##Application#Usuario#Entradas#Opero 86T##1";}:IEXV_SPS_BO;

     (* 0137 - GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.RxPosQ013.DPC_StatusOn *)
     EXV_SPS_0137   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.RxPosQ013.DPC_StatusOn";DESC := "0##Application#Usuario#Rx Goose#Posicion 9T6-Q0#closed##1";}:IEXV_SPS_BO;

     (* 0138 - GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.Rx86BFB169 *)
     EXV_SPS_0138   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.Rx86BFB169";DESC := "0##Application#Usuario#Rx Goose#Opero 86BF B1 69 kV##1";}:IEXV_SPS_BO;

     (* 0139 - GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.Rx86BFB269 *)
     EXV_SPS_0139   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.Rx86BFB269";DESC := "0##Application#Usuario#Rx Goose#Opero 86BF B2 69 kV##1";}:IEXV_SPS_BO;

     (* 0140 - GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.Rx86BF13 *)
     EXV_SPS_0140   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.Rx86BF13";DESC := "0##Application#Usuario#Rx Goose#Opero 86BF 13.8 kV##1";}:IEXV_SPS_BO;

     (* 0141 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.SPS1 *)
     EXV_SPS_0141   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.SPS1";DESC := "0##Application#Usuario#Entradas#Posicion Q1 Cerrado##1";}:IEXV_SPS_BO;

     (* 0142 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2PCyMHV *)
     EXV_SPS_0142   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2PCyMHV";DESC := "0##Application#Usuario#Entradas#Falla MCB PT B1_2 69kV PCyM N2##1";}:IEXV_SPS_BO;

     (* 0143 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2Bar1HV *)
     EXV_SPS_0143   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2Bar1HV";DESC := "0##Application#Usuario#Entradas#Falla MCB PT B1 69kV 6TUJ1 N2##1";}:IEXV_SPS_BO;

     (* 0144 - GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.RxPosQ2.DPC_StatusOn *)
     EXV_SPS_0144   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.RxPosQ2.DPC_StatusOn";DESC := "0##Application#Usuario#Rx Goose#Posicion 6T4-Q2#closed##1";}:IEXV_SPS_BO;

     (* 0145 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2Bar2HV *)
     EXV_SPS_0145   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.FaPTN2Bar2HV";DESC := "0##Application#Usuario#Entradas#Falla MCB PT B2 69kV 6TUJ2 N2##1";}:IEXV_SPS_BO;

     (* 0146 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS *)
     EXV_SPS_0146   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS";DESC := "0##Application#Usuario#Logicas#Condicion B1 OK##1";}:OEXV_BO_SPS;

     (* 0147 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS1 *)
     EXV_SPS_0147   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS1";DESC := "0##Application#Usuario#Logicas#Condicion B2 OK##1";}:OEXV_BO_SPS;

     (* 0148 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS2 *)
     EXV_SPS_0148   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS2";DESC := "0##Application#Usuario#Logicas#Condicion B1/B2 OK##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0128        (LNK := 128);

     EXV_SPS_0129        (LNK := 129);

     EXV_SPS_0133        (LNK := 133);

     EXV_SPS_0134        (LNK := 134);

     EXV_SPS_0135        (LNK := 135);

     EXV_SPS_0136        (LNK := 136);

     EXV_SPS_0137        (LNK := 137);

     EXV_SPS_0138        (LNK := 138);

     EXV_SPS_0139        (LNK := 139);

     EXV_SPS_0140        (LNK := 140);

     EXV_SPS_0141        (LNK := 141);

     EXV_SPS_0142        (LNK := 142);

     EXV_SPS_0143        (LNK := 143);

     EXV_SPS_0144        (LNK := 144);

     EXV_SPS_0145        (LNK := 145);

     AND10_1             (X1 := EXV_SPS_0141.VAL(* POSITION := 29*5: SIZE := 31* -1:   *) ,
                          X2 := NOT EXV_SPS_0138.VAL(* POSITION := 29*6: SIZE := 31* -1:   *) ,
                          X3 := NOT EXV_SPS_0142.VAL(* POSITION := 23*7: SIZE := 37* -1:   *) ,
                          X4 := NOT EXV_SPS_0143.VAL(* POSITION := 24*8: SIZE := 36* -1:   *) ,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_2             (X1 := EXV_SPS_0144.VAL(* POSITION := 27*15: SIZE := 33* -1:   *) ,
                          X2 := NOT EXV_SPS_0139.VAL(* POSITION := 29*16: SIZE := 31* -1:   *) ,
                          X3 := NOT EXV_SPS_0142.VAL(* POSITION := 23*17: SIZE := 37* -1:   *) ,
                          X4 := NOT EXV_SPS_0145.VAL(* POSITION := 24*18: SIZE := 36* -1:   *) ,
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


     AND10_4             (X1 := OR10_3.Y,
                          X2 := NOT EXV_SPS_0135.VAL(* POSITION := 27*30: SIZE := 33* -1:   *) ,
                          X3 := NOT EXV_SPS_0137.VAL(* POSITION := 27*31: SIZE := 33* -1:   *) ,
                          X4 := NOT EXV_SPS_0136.VAL(* POSITION := 34*32: SIZE := 26* -1:   *) ,
                          X5 := NOT EXV_SPS_0140.VAL(* POSITION := 29*33: SIZE := 31* -1:   *) ,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_5             (X1 := NOT EXV_SPS_0133.VAL(* POSITION := 33*41: SIZE := 26* -1:   *) ,
                          X2 := NOT EXV_SPS_0128.VAL(* POSITION := 23*42: SIZE := 38* -1:   *) ,
                          X3 := EXV_SPS_0134.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X4 := EXV_SPS_0129.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_6             (X1 := AND10_4.Y,
                          X2 := AND10_5.Y,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     EXV_SPS_0130        (LNK := 130,
                          VAL := AND10_6.Y(* POSITION := 111*35: SIZE := 39* -1:   *) );
     EXV_SPS_0131        (LNK := 131,
                          VAL := AND10_4.Y(* POSITION := 83*24: SIZE := 34* -1:   *) );
     EXV_SPS_0132        (LNK := 132,
                          VAL := AND10_5.Y(* POSITION := 86*41: SIZE := 34* -1:   *) );
     EXV_SPS_0146        (LNK := 146,
                          VAL := AND10_1.Y(* POSITION := 88*5: SIZE := 29* -1:   *) );
     EXV_SPS_0147        (LNK := 147,
                          VAL := AND10_2.Y(* POSITION := 87*15: SIZE := 29* -1:   *) );
     EXV_SPS_0148        (LNK := 148,
                          VAL := OR10_3.Y(* POSITION := 107*9: SIZE := 30* -1:   *) );

(* COMMENT_TEXT;{X=3,Y=6};{Width=18, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE 86BF B1 69kV No Op BCU *)
(* COMMENT_TEXT;{X=6,Y=31};{Width=14, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE Pos 9T6-Q0 F004 *)
(* COMMENT_TEXT;{X=6,Y=33};{Width=19, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE 86BF 13.8kV No Op F004 *)
(* COMMENT_TEXT;{X=3,Y=16};{Width=18, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE 86BF B2 69kV No Op BCU *)
(* COMMENT_TEXT;{X=3,Y=15};{Width=18, Height=1};FontSize := 8,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE Pos Q2 F003 *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Posiciones ----------  *)

PROGRAM CHART_Posiciones
{COMMENT := "Posiciones";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR



     (* IO_IOVISIBILITY;OR10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_1;1  *)
OR10_1          { COMMENT := 'or10_5'; POSITION := 69,3; SIZE := 12, 12; } :OR10;         


     (* IO_IOVISIBILITY;OR10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_2;1  *)
OR10_2          { COMMENT := 'or10_6'; POSITION := 69,10; SIZE := 12, 12; } :OR10;         

               
     (* PartitionInfo;PartitionID BUILD_DPS_3;1  *)
BUILD_DPS_3     { COMMENT := 'build_dps_5'; POSITION := 92,3; SIZE := 12, 12; } :BUILD_DPS;    

               
     (* PartitionInfo;PartitionID BUILD_DPS_4;1  *)
BUILD_DPS_4     { COMMENT := 'build_dps_1'; POSITION := 92,17; SIZE := 12, 12; } :BUILD_DPS;    

     (* 0149 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos *)
     EXV_DPS_0149   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_XCBR.Pos";DESC := "0##Application#Interruptor HV#Circuit break.#Position##1";}:OEXV_DS_DPS;

     (* 0150 - GDL69TRF2F002_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos *)
     EXV_DPS_0150   {COMMENT := "GDL69TRF2F002_.Application.FG2_Breaker_3pol.FB1_XCBR.Pos";DESC := "0##Application#Interruptor LV#Circuit break.#Position##1";}:OEXV_DS_DPS;

     (* 0151 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.SPS2 *)
     EXV_SPS_0151   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.SPS2";DESC := "0##Application#Usuario#Entradas#Posicion Int Q0 Cerrado##1";}:IEXV_SPS_BO;

     (* 0152 - GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.RxPosQ069.DPC_StatusOn *)
     EXV_SPS_0152   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.RxPosQ069.DPC_StatusOn";DESC := "0##Application#Usuario#Rx Goose#Posicion 6T4-Q0#closed##1";}:IEXV_SPS_BO;

     (* 0153 - GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.RxPosQ069.DPC_StatusOff *)
     EXV_SPS_0153   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.RxPosQ069.DPC_StatusOff";DESC := "0##Application#Usuario#Rx Goose#Posicion 6T4-Q0#open##1";}:IEXV_SPS_BO;

     (* 0154 - GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.RxPosQ013.DPC_StatusOn *)
     EXV_SPS_0154   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB3_Universal.RxPosQ013.DPC_StatusOn";DESC := "0##Application#Usuario#Rx Goose#Posicion 9T6-Q0#closed##1";}:IEXV_SPS_BO;

     DEF_BUILD_DPS_3_QL:QUAL;

     DEF_BUILD_DPS_4_QL:QUAL;

END_VAR

DEF_BUILD_DPS_3_QL.VAL := 16#0000;
DEF_BUILD_DPS_4_QL.VAL := 16#0000;
     EXV_SPS_0151        (LNK := 151);

     EXV_SPS_0152        (LNK := 152);

     EXV_SPS_0153        (LNK := 153);

     EXV_SPS_0154        (LNK := 154);

     OR10_1              (X1 := EXV_SPS_0152.VAL(* POSITION := 29*6: SIZE := 33* -1:   *) ,
                          X2 := EXV_SPS_0151.VAL(* POSITION := 29*7: SIZE := 33* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     OR10_2              (X1 := NOT EXV_SPS_0151.VAL(* POSITION := 29*13: SIZE := 33* -1:   *) ,
                          X2 := EXV_SPS_0153.VAL(* POSITION := 30*14: SIZE := 32* -1:   *) ,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     BUILD_DPS_3         (IS_ON := OR10_1.Y,
                          IS_OFF := OR10_2.Y,
                          BAD_00 := 0,
                          QL := DEF_BUILD_DPS_3_QL);

     BUILD_DPS_4         (IS_ON := EXV_SPS_0154.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          IS_OFF := NOT EXV_SPS_0154.VAL(* POSITION := -1*-1: SIZE := 33* -1:   *) ,
                          BAD_00 := 0,
                          QL := DEF_BUILD_DPS_4_QL);

     EXV_DPS_0149        (LNK := 149,
                          VAL := BUILD_DPS_3.OUT(* POSITION := 115*6: SIZE := 32* -1:   *) );
     EXV_DPS_0150        (LNK := 150,
                          VAL := BUILD_DPS_4.OUT(* POSITION := 115*20: SIZE := 32* -1:   *) );

(* COMMENT_TEXT;{X=4,Y=6};{Width=17, Height=1};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE Pos Q0 69kV BCU *)
(* COMMENT_TEXT;{X=4,Y=14};{Width=17, Height=1};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE Pos Q0 69kV BCU *)
(* COMMENT_TEXT;{X=4,Y=20};{Width=18, Height=1};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -256,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;GOOSE Pos Q0 13.8kV F004 *)

END_PROGRAM

                                                  (* ---------- Program : CHART_Synchrocheck ----------  *)

PROGRAM CHART_Synchrocheck
{COMMENT := "Synchrocheck";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=    *)
VAR


               
     (* PartitionInfo;PartitionID DPC_DEF_1;1  *)
DPC_DEF_1       { COMMENT := 'dpc_def_1'; POSITION := 68,2; SIZE := 12, 12; } :DPC_DEF;      

               
     (* PartitionInfo;PartitionID DPC_EXE_2;1  *)
DPC_EXE_2       { COMMENT := 'dpc_exe_1'; POSITION := 88,2; SIZE := 12, 12; } :DPC_EXE;      

     (* 0155 - GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_CSWI.Pos *)
     EXV_DPC_0155   {COMMENT := "GDL69TRF2F002_.Application.FG1_Breaker_3pol.FB1_CSWI.Pos";DESC := "0##Application#Interruptor HV#Control#Cmd. with feedback##1";}:IEXV_DPC_DC;

     (* 0156 - GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.ClsManEmerg *)
     EXV_SPS_0156   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB1_Universal.ClsManEmerg";DESC := "0##Application#Usuario#Entradas#Cierre Manual Int Q0##1";}:IEXV_SPS_BO;
END_VAR

     EXV_DPC_0155        (ID_IN.IDX := 155);

     EXV_SPS_0156        (LNK := 156);

     DPC_DEF_1           (ID := EXV_DPC_0155.IDOUT(* POSITION := -1*-1: SIZE := 35* -1:   *) ,
                          EN_I := 1,
                          VAL := 1,
                          SELECT := 2,
                          OPERATE := 1,
                          TRIG := EXV_SPS_0156.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
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

                                                  (* ---------- Program : CHART_Sincronismo ----------  *)

PROGRAM CHART_Sincronismo
{COMMENT := "Sincronismo";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR


               
     (* PartitionInfo;PartitionID GT_D_1;1  *)
GT_D_1          { COMMENT := 'gt_d_1'; POSITION := 53,33; SIZE := 12, 12; } :GT_D;         

               
     (* PartitionInfo;PartitionID GT_D_2;1  *)
GT_D_2          { COMMENT := 'gt_d_2'; POSITION := 53,39; SIZE := 12, 12; } :GT_D;         

               
     (* PartitionInfo;PartitionID GT_D_3;1  *)
GT_D_3          { COMMENT := 'gt_d_3'; POSITION := 53,45; SIZE := 12, 12; } :GT_D;         

               
     (* PartitionInfo;PartitionID LT_D_4;1  *)
LT_D_4          { COMMENT := 'lt_d_1'; POSITION := 53,51; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID LT_D_5;1  *)
LT_D_5          { COMMENT := 'lt_d_5'; POSITION := 53,57; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID LT_D_6;1  *)
LT_D_6          { COMMENT := 'lt_d_6'; POSITION := 53,63; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID LT_D_7;1  *)
LT_D_7          { COMMENT := 'lt_d_2'; POSITION := 53,7; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID LT_D_8;1  *)
LT_D_8          { COMMENT := 'lt_d_3'; POSITION := 53,13; SIZE := 12, 12; } :LT_D;         

               
     (* PartitionInfo;PartitionID LT_D_9;1  *)
LT_D_9          { COMMENT := 'lt_d_4'; POSITION := 53,19; SIZE := 12, 12; } :LT_D;         


     (* IO_IOVISIBILITY;AND10_10;X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_10;1  *)
AND10_10        { COMMENT := 'and10_2'; POSITION := 89,46; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID LT_D_11;1  *)
LT_D_11         { COMMENT := 'lt_d_7'; POSITION := 195,32; SIZE := 12, 12; } :LT_D;         


     (* IO_IOVISIBILITY;AND10_12;X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_12;1  *)
AND10_12        { COMMENT := 'and10_1'; POSITION := 87,11; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_13;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_13;1  *)
AND10_13        { COMMENT := 'and10_4'; POSITION := 213,11; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_14;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_14;1  *)
AND10_14        { COMMENT := 'and10_3'; POSITION := 213,3; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;OR10_15;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_15;1  *)
OR10_15         { COMMENT := 'or10_1'; POSITION := 243,19; SIZE := 12, 12; } :OR10;         

     (* 0157 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSA_Mag *)
     EXV_MV_0157    {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSA_Mag";DESC := "0##Application#Transformador HV#Fund./sym.comp.#Fundam#Vph#phs A magn.##1";}:IEXV_MVL_DI;

     (* 0158 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSB_Mag *)
     EXV_MV_0158    {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSB_Mag";DESC := "0##Application#Transformador HV#Fund./sym.comp.#Fundam#Vph#phs B magn.##1";}:IEXV_MVL_DI;

     (* 0159 - GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSC_Mag *)
     EXV_MV_0159    {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerSide.FN1_OMV_Fund_3ph.FB1_OpMeas_Fund_3ph_Pres.PhV.WYE_MV_PHSC_Mag";DESC := "0##Application#Transformador HV#Fund./sym.comp.#Fundam#Vph#phs C magn.##1";}:IEXV_MVL_DI;

     (* 0160 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS8 *)
     EXV_SPS_0160   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS8";DESC := "0##Application#Usuario#Logicas#Barra Muerta##1";}:OEXV_BO_SPS;

     (* 0161 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS7 *)
     EXV_SPS_0161   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS7";DESC := "0##Application#Usuario#Logicas#Barra Viva##1";}:OEXV_BO_SPS;

     (* 0162 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS9 *)
     EXV_SPS_0162   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS9";DESC := "0##Application#Usuario#Logicas#13.8 kV Muerto##1";}:OEXV_BO_SPS;

     (* 0163 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS10 *)
     EXV_SPS_0163   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS10";DESC := "0##Application#Usuario#Logicas#Condicion de Sincronismo##1";}:OEXV_BO_SPS;

     (* 0164 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS5 *)
     EXV_SPS_0164   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS5";DESC := "0##Application#Usuario#Logicas#Barra Muerta - Linea muerta##1";}:OEXV_BO_SPS;

     (* 0165 - GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS6 *)
     EXV_SPS_0165   {COMMENT := "GDL69TRF2F002_.Application.FG1_UserDef.FB2_Universal.SPS6";DESC := "0##Application#Usuario#Logicas#Barra Viva - Linea muerta##1";}:OEXV_BO_SPS;

     (* 0166 - GDL69TRF2F002_.Application.FG1_PowerTransformerStarpoint.FN1_OMV_Fund_1ph.FB1_OpMeas_Fund_1ph_Pres.VxC.CMV_Mag *)
     EXV_MV_0166    {COMMENT := "GDL69TRF2F002_.Application.FG1_PowerTransformerStarpoint.FN1_OMV_Fund_1ph.FB1_OpMeas_Fund_1ph_Pres.VxC.CMV_Mag";DESC := "0##Application#Transform. neut.p 1#Fundamental#Fundam#V#magnitude##1";}:IEXV_MVL_DI;
END_VAR

     EXV_MV_0157         (LNK := 157);

     EXV_MV_0158         (LNK := 158);

     EXV_MV_0159         (LNK := 159);

     EXV_MV_0166         (LNK := 166);

     GT_D_1              (IN1 := EXV_MV_0157.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 80);

     GT_D_2              (IN1 := EXV_MV_0158.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 80);

     GT_D_3              (IN1 := EXV_MV_0159.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 80);

     LT_D_4              (IN1 := EXV_MV_0157.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 110);

     LT_D_5              (IN1 := EXV_MV_0158.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 110);

     LT_D_6              (IN1 := EXV_MV_0159.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 110);

     LT_D_7              (IN1 := EXV_MV_0157.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 40);

     LT_D_8              (IN1 := EXV_MV_0158.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 40);

     LT_D_9              (IN1 := EXV_MV_0159.VAL(* POSITION := -1*-1: SIZE := 41* -1:   *) ,
                          IN2 := 40);

     AND10_10            (X1 := GT_D_1.OUT,
                          X2 := GT_D_2.OUT,
                          X3 := GT_D_3.OUT,
                          X4 := LT_D_4.OUT,
                          X5 := LT_D_5.OUT,
                          X6 := LT_D_6.OUT,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     LT_D_11             (IN1 := EXV_MV_0166.VAL(* POSITION := -1*-1: SIZE := 38* -1:   *) ,
                          IN2 := 23);



     AND10_12            (X1 := LT_D_7.OUT,
                          X2 := LT_D_8.OUT,
                          X3 := LT_D_9.OUT,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_13            (X1 := AND10_10.Y,
                          X2 := LT_D_11.OUT,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_14            (X1 := AND10_12.Y,
                          X2 := LT_D_11.OUT,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     OR10_15             (X1 := 0,
                          X2 := AND10_13.Y,
                          X3 := 0,
                          X4 := 0,
                          X5 := 0,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0160        (LNK := 160,
                          VAL := AND10_12.Y(* POSITION := -1*-1: SIZE := 27* -1:   *) );
     EXV_SPS_0161        (LNK := 161,
                          VAL := AND10_10.Y(* POSITION := -1*-1: SIZE := 26* -1:   *) );
     EXV_SPS_0162        (LNK := 162,
                          VAL := LT_D_11.OUT(* POSITION := -1*-1: SIZE := 28* -1:   *) );
     EXV_SPS_0163        (LNK := 163,
                          VAL := OR10_15.Y(* POSITION := -1*-1: SIZE := 33* -1:   *) );
     EXV_SPS_0164        (LNK := 164,
                          VAL := AND10_14.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );
     EXV_SPS_0165        (LNK := 165,
                          VAL := AND10_13.Y(* POSITION := -1*-1: SIZE := 34* -1:   *) );

(* COMMENT_TEXT;{X=65,Y=2};{Width=23, Height=3};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Condición de barra muerta *)
(* COMMENT_TEXT;{X=59,Y=28};{Width=22, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Condición de barra viva *)
(* COMMENT_TEXT;{X=182,Y=26};{Width=22, Height=2};FontSize := 10,LineColor := 0,LineWidth := 0,Alignment := Near,AutoWrap := True,BackColor := -16711681,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;Lado 13,8 KV Muerto *)

END_PROGRAM

CONFIGURATION  PLC_CONTROL 
   RESOURCE PLANS { COMMENT := "Txt100_100";} ON CPU32
     TASK EVENT_SLOW     { TICKS := 1300;}(PRIORITY := INTERNAL);
     TASK EVENT_FAST     { TICKS := 255;}(PRIORITY := INTERNAL);
     TASK MEASUREMENT    { TICKS := 2536;}(PRIORITY := INTERNAL);
     TASK INTERLOCKING   { TICKS := 2173;}(PRIORITY := INTERNAL);

     PROGRAM FBI001 WITH EVENT_SLOW:  CHART_Alarmas;
     PROGRAM FBI002 WITH EVENT_FAST:  CHART_Arranque_50BF;
     PROGRAM FBI003 WITH EVENT_SLOW:  CHART_Disparo_por_Fases;
     PROGRAM FBI004 WITH EVENT_SLOW:  CHART_Falla_Goose;
     PROGRAM FBI005 WITH EVENT_SLOW:  CHART_Falla_PTs;
     PROGRAM FBI006 WITH EVENT_SLOW:  CHART_Interlocking;
     PROGRAM FBI007 WITH EVENT_SLOW:  CHART_Posiciones;
     PROGRAM FBI008 WITH EVENT_SLOW:  CHART_Synchrocheck;
     PROGRAM FBI009 WITH EVENT_SLOW:  CHART_Sincronismo;

   END_RESOURCE

 END_CONFIGURATION