
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





                                                  (* ---------- Program : CHART_c0a54037_4128_461a_9ad2_95c18c47a68d ----------  *)

PROGRAM CHART_c0a54037_4128_461a_9ad2_95c18c47a68d
{COMMENT := "Lógico 50BF";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 37,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=       *)
VAR



     (* IO_IOVISIBILITY;AND10_1;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_1;1  *)
AND10_1         { COMMENT := 'and10_1'; POSITION := 56,16; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_2;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_2'; POSITION := 56,23; SIZE := 12, 12; } :AND10;        

               
     (* PartitionInfo;PartitionID FF_SR_MEM_3;1  *)
FF_SR_MEM_3     { COMMENT := 'ff_sr_mem_1'; POSITION := 67,4; SIZE := 12, 12; } :FF_SR_MEM;    


     (* IO_IOVISIBILITY;OR10_4;X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID OR10_4;1  *)
OR10_4          { COMMENT := 'or10_1'; POSITION := 80,16; SIZE := 12, 12; } :OR10;         

     (* 0003 - F06_F004.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpEx.ACTGeneral *)
     EXV_SPS_0003   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.OpEx.ACTGeneral";DESC := "0##Application#Interruptor LV#50BF#Trip T2#general##1";}:IEXV_SPS_BO;

     (* 0004 - F06_F004.Application.FG1_UserDef.FB2_Universal.RsOpEx *)
     EXV_SPS_0004   {COMMENT := "F06_F004.Application.FG1_UserDef.FB2_Universal.RsOpEx";DESC := "0##Application#Usuario#GGIO1#Reset 86BF##1";}:IEXV_SPS_BO;

     (* 0005 - F06_F004.Application.FG1_UserDef.FB2_Universal.OpEx86BU1 *)
     EXV_SPS_0005   {COMMENT := "F06_F004.Application.FG1_UserDef.FB2_Universal.OpEx86BU1";DESC := "0##Application#Usuario#GGIO1#Opero 86BF##1";}:OEXV_BO_SPS;

     (* 0006 - F06_F004.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Initiation *)
     EXV_SPS_0006   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_RBRF_Adv_3pol.Initiation";DESC := "0##Application#Interruptor LV#50BF#>Start##1";}:OEXV_BO_SPS;

     (* 0007 - F06_F004.Application.FG1_UserDef.FB3_Universal.Init3p *)
     EXV_SPS_0007   {COMMENT := "F06_F004.Application.FG1_UserDef.FB3_Universal.Init3p";DESC := "0##Application#Usuario#GOOSE#Arranque 50BF LV F002##1";}:IEXV_SPS_BO;

     (* 0008 - F06_F004.Application.FG1_UserDef.FB3_Universal.Init3p1 *)
     EXV_SPS_0008   {COMMENT := "F06_F004.Application.FG1_UserDef.FB3_Universal.Init3p1";DESC := "0##Application#Usuario#GOOSE#Arranque 50BF LV F003##1";}:IEXV_SPS_BO;

     (* 0009 - F06_F004.Application.FG1_UserDef.FB1_Universal.SPS1 *)
     EXV_SPS_0009   {COMMENT := "F06_F004.Application.FG1_UserDef.FB1_Universal.SPS1";DESC := "0##Application#Usuario#Entradas#1BI-3_Opero 86T##1";}:IEXV_SPS_BO;

     (* 0010 - F06_F004.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB1_PTOC_3ph_IOCP_3pol_Bas.Op.ACTGeneral *)
     EXV_SPS_0010   {COMMENT := "F06_F004.Application.FG1_StandardUI.FN1_3ph_overcurrent_3pol_Bas.FB1_PTOC_3ph_IOCP_3pol_Bas.Op.ACTGeneral";DESC := "0##Application#Transformador LV#51L#Inverse-T 1#Operate#general##1";}:IEXV_SPS_BO;

     (* 0011 - F06_F004.Application.FG1_StandardUI.FN1_Gnd_overcurrent_Bas.FB1_PTOC_Gnd_IOCP_Bas.Op.ACTGeneral *)
     EXV_SPS_0011   {COMMENT := "F06_F004.Application.FG1_StandardUI.FN1_Gnd_overcurrent_Bas.FB1_PTOC_Gnd_IOCP_Bas.Op.ACTGeneral";DESC := "0##Application#Transformador LV#51NL#Inverse-T 1#Operate#general##1";}:IEXV_SPS_BO;

     (* 0012 - F06_F004.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB1_LGOS.Health.Health_Ok *)
     EXV_SPS_0012   {COMMENT := "F06_F004.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB1_LGOS.Health.Health_Ok";DESC := "0##Application#Com. supervision#GOOSE supervis.#Subscription_F002#Health#ok##1";}:IEXV_SPS_BO;

     (* 0013 - F06_F004.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB2_LGOS.Health.Health_Ok *)
     EXV_SPS_0013   {COMMENT := "F06_F004.Application.FG1_ComSupervision.FN1_GOOSESupervision.FB2_LGOS.Health.Health_Ok";DESC := "0##Application#Com. supervision#GOOSE supervis.#Subscription_F003#Health#ok##1";}:IEXV_SPS_BO;
END_VAR

     EXV_SPS_0003        (LNK := 3);

     EXV_SPS_0004        (LNK := 4);

     EXV_SPS_0007        (LNK := 7);

     EXV_SPS_0008        (LNK := 8);

     EXV_SPS_0009        (LNK := 9);

     EXV_SPS_0010        (LNK := 10);

     EXV_SPS_0011        (LNK := 11);

     EXV_SPS_0012        (LNK := 12);

     EXV_SPS_0013        (LNK := 13);

     AND10_1             (X1 := EXV_SPS_0007.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0012.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_2             (X1 := EXV_SPS_0008.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          X2 := EXV_SPS_0013.VAL(* POSITION := -1*-1: SIZE := 43* -1:   *) ,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     FF_SR_MEM_3         (S := EXV_SPS_0003.VAL(* POSITION := -1*-1: SIZE := 31* -1:   *) ,
                          R := EXV_SPS_0004.VAL(* POSITION := -1*-1: SIZE := 25* -1:   *) );

     OR10_4              (X1 := AND10_1.Y,
                          X2 := AND10_2.Y,
                          X3 := EXV_SPS_0009.VAL(* POSITION := 19*31: SIZE := 29* -1:   *) ,
                          X4 := EXV_SPS_0010.VAL(* POSITION := 11*33: SIZE := 37* -1:   *) ,
                          X5 := EXV_SPS_0011.VAL(* POSITION := 10*35: SIZE := 38* -1:   *) ,
                          X6 := 0,
                          X7 := 0,
                          X8 := 0,
                          X9 := 0,
                          X10 := 0);

     EXV_SPS_0005        (LNK := 5,
                          VAL := FF_SR_MEM_3.OUT(* POSITION := -1*-1: SIZE := 25* -1:   *) );
     EXV_SPS_0006        (LNK := 6,
                          VAL := OR10_4.Y(* POSITION := -1*-1: SIZE := 26* -1:   *) );

(* COMMENT_TEXT;{X=60,Y=1};{Width=26, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;OPERO 86BF Q0 LV *)
(* COMMENT_TEXT;{X=58,Y=12};{Width=30, Height=2};FontSize := 20,LineColor := 0,LineWidth := 0,Alignment := Center,AutoWrap := True,BackColor := -16738588,Background := False,TextColor := 0,WallpaperGamma := 100,PartitionID := 1,;ARRANQUE 50BF *)

END_PROGRAM

                                                  (* ---------- Program : CHART_54bc3a75_2cd3_401a_9f40_bee50fa2d408 ----------  *)

PROGRAM CHART_54bc3a75_2cd3_401a_9f40_bee50fa2d408
{COMMENT := "Lógica de cierre emergente";DESC := "";}
(* ChartLayout;PageSize := A4,Rows := 3,Columns := 2,MarginMode := WithoutMargins,MarginSize := 24,MarginLines := 1 *)
(* PartitionInfo;Id := 1,Name := Partition_1,Comment :=   *)
VAR


               
     (* PartitionInfo;PartitionID AND10_1;1  *)
AND10_1         { COMMENT := 'and10_1'; POSITION := 138,55; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_2;X10: *)
               
     (* PartitionInfo;PartitionID AND10_2;1  *)
AND10_2         { COMMENT := 'and10_3'; POSITION := 157,69; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_3;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_3;1  *)
AND10_3         { COMMENT := 'and10_2'; POSITION := 140,99; SIZE := 12, 12; } :AND10;        


     (* IO_IOVISIBILITY;AND10_4;X3:X4:X5:X6:X7:X8:X9:X10: *)
               
     (* PartitionInfo;PartitionID AND10_4;1  *)
AND10_4         { COMMENT := 'and10_4'; POSITION := 140,106; SIZE := 12, 12; } :AND10;        

     (* 0014 - F06_F004.Application.FG1_UserDef.FB1_Universal.SPS *)
     EXV_SPS_0014   {COMMENT := "F06_F004.Application.FG1_UserDef.FB1_Universal.SPS";DESC := "0##Application#Usuario#Entradas#1BI-2_9T7-Q0 Cerrado##1";}:IEXV_SPS_BO;

     (* 0015 - F06_F004.Application.FG1_UserDef.FB1_Universal.SPS1 *)
     EXV_SPS_0015   {COMMENT := "F06_F004.Application.FG1_UserDef.FB1_Universal.SPS1";DESC := "0##Application#Usuario#Entradas#1BI-3_Opero 86T##1";}:IEXV_SPS_BO;

     (* 0016 - F06_F004.Application.FG1_UserDef.FB1_Universal.SPS3 *)
     EXV_SPS_0016   {COMMENT := "F06_F004.Application.FG1_UserDef.FB1_Universal.SPS3";DESC := "0##Application#Usuario#Entradas#1BI-5_MCB operado 13.8kV -F205##1";}:IEXV_SPS_BO;

     (* 0017 - F06_F004.Application.FG1_UserDef.FB1_Universal.SPS4 *)
     EXV_SPS_0017   {COMMENT := "F06_F004.Application.FG1_UserDef.FB1_Universal.SPS4";DESC := "0##Application#Usuario#Entradas#1BI-6_9L3-Q0 abierto##1";}:IEXV_SPS_BO;

     (* 0018 - F06_F004.Application.FG1_UserDef.FB1_Universal.SPS5 *)
     EXV_SPS_0018   {COMMENT := "F06_F004.Application.FG1_UserDef.FB1_Universal.SPS5";DESC := "0##Application#Usuario#Entradas#1BI-7_9L4-Q0 abierto##1";}:IEXV_SPS_BO;

     (* 0019 - F06_F004.Application.FG1_UserDef.FB1_Universal.SPS6 *)
     EXV_SPS_0019   {COMMENT := "F06_F004.Application.FG1_UserDef.FB1_Universal.SPS6";DESC := "0##Application#Usuario#Entradas#1BI-8_MCB operado 69kV -F209##1";}:IEXV_SPS_BO;

     (* 0020 - F06_F004.Application.FG1_UserDef.FB1_Universal.SPS7 *)
     EXV_SPS_0020   {COMMENT := "F06_F004.Application.FG1_UserDef.FB1_Universal.SPS7";DESC := "0##Application#Usuario#Entradas#2BI-3_MCB operado 13.8kV patio##1";}:IEXV_SPS_BO;

     (* 0021 - F06_F004.Application.FG1_UserDef.FB2_Universal.OpCls0 *)
     EXV_SPS_0021   {COMMENT := "F06_F004.Application.FG1_UserDef.FB2_Universal.OpCls0";DESC := "0##Application#Usuario#GGIO1#Cierre Manual##1";}:IEXV_SPS_BO;

     (* 0022 - F06_F004.Application.FG1_Breaker_3pol.FB1_CILO.EnaCls *)
     EXV_SPS_0022   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_CILO.EnaCls";DESC := "0##Application#Interruptor LV#Interlocking#>Enable closing##1";}:OEXV_BO_SPS;

     (* 0023 - F06_F004.Application.FG_BinaryIO.BinaryOutputs.FB4_BinaryOutput.InVal *)
     EXV_SPS_0023   {COMMENT := "F06_F004.Application.FG_BinaryIO.BinaryOutputs.FB4_BinaryOutput.InVal";DESC := "0##Application#Binary IO#Binary outputs#Binary output4#Value##1";}:OEXV_BO_SPS;

     (* 0024 - F06_F004.Application.FG_BinaryIO.BinaryOutputs.FB8_BinaryOutput.InVal *)
     EXV_SPS_0024   {COMMENT := "F06_F004.Application.FG_BinaryIO.BinaryOutputs.FB8_BinaryOutput.InVal";DESC := "0##Application#Binary IO#Binary outputs#Binary output8#Value##1";}:OEXV_BO_SPS;

     (* 0025 - F06_F004.Application.FG1_Breaker_3pol.FB1_ResetRoutings.SPS *)
     EXV_SPS_0025   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_ResetRoutings.SPS";DESC := "0##Application#Interruptor LV#Reset LED Group#MCB PT 13.8kV patio##1";}:OEXV_BO_SPS;

     (* 0026 - F06_F004.Application.FG1_Breaker_3pol.FB1_ResetRoutings.SPS1 *)
     EXV_SPS_0026   {COMMENT := "F06_F004.Application.FG1_Breaker_3pol.FB1_ResetRoutings.SPS1";DESC := "0##Application#Interruptor LV#Reset LED Group#MCB PT 13.8kV PCyM##1";}:OEXV_BO_SPS;
END_VAR

     EXV_SPS_0014        (LNK := 14);

     EXV_SPS_0015        (LNK := 15);

     EXV_SPS_0016        (LNK := 16);

     EXV_SPS_0017        (LNK := 17);

     EXV_SPS_0018        (LNK := 18);

     EXV_SPS_0019        (LNK := 19);

     EXV_SPS_0020        (LNK := 20);

     EXV_SPS_0021        (LNK := 21);

     AND10_1             (X1 := 1,
                          X2 := NOT EXV_SPS_0015.VAL(* POSITION := -1*-1: SIZE := 29* -1:   *) ,
                          X3 := EXV_SPS_0016.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X4 := EXV_SPS_0017.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
                          X5 := EXV_SPS_0018.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
                          X6 := EXV_SPS_0019.VAL(* POSITION := -1*-1: SIZE := 36* -1:   *) ,
                          X7 := EXV_SPS_0020.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);


     AND10_2             (X1 := NOT EXV_SPS_0014.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
                          X2 := NOT EXV_SPS_0015.VAL(* POSITION := -1*-1: SIZE := 29* -1:   *) ,
                          X3 := EXV_SPS_0016.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X4 := EXV_SPS_0017.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
                          X5 := EXV_SPS_0018.VAL(* POSITION := -1*-1: SIZE := 32* -1:   *) ,
                          X6 := EXV_SPS_0019.VAL(* POSITION := -1*-1: SIZE := 36* -1:   *) ,
                          X7 := EXV_SPS_0020.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X8 := 1,
                          X9 := EXV_SPS_0021.VAL(* POSITION := -1*-1: SIZE := 27* -1:   *) ,
                          X10 := 1);

     AND10_3             (X1 := NOT EXV_SPS_0020.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X2 := 1,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     AND10_4             (X1 := NOT EXV_SPS_0016.VAL(* POSITION := -1*-1: SIZE := 37* -1:   *) ,
                          X2 := 1,
                          X3 := 1,
                          X4 := 1,
                          X5 := 1,
                          X6 := 1,
                          X7 := 1,
                          X8 := 1,
                          X9 := 1,
                          X10 := 1);

     EXV_SPS_0022        (LNK := 22,
                          VAL := AND10_1.Y(* POSITION := -1*-1: SIZE := 35* -1:   *) );
     EXV_SPS_0023        (LNK := 23,
                          VAL := AND10_2.Y(* POSITION := -1*-1: SIZE := 38* -1:   *) );
     EXV_SPS_0024        (LNK := 24,
                          VAL := AND10_1.Y(* POSITION := -1*-1: SIZE := 38* -1:   *) );
     EXV_SPS_0025        (LNK := 25,
                          VAL := AND10_3.Y(* POSITION := -1*-1: SIZE := 38* -1:   *) );
     EXV_SPS_0026        (LNK := 26,
                          VAL := AND10_4.Y(* POSITION := -1*-1: SIZE := 38* -1:   *) );


END_PROGRAM

CONFIGURATION  PLC_CONTROL 
   RESOURCE PLANS { COMMENT := "Txt100_100";} ON CPU32
     TASK EVENT_SLOW     { TICKS := 1300;}(PRIORITY := INTERNAL);
     TASK EVENT_FAST     { TICKS := 255;}(PRIORITY := INTERNAL);
     TASK MEASUREMENT    { TICKS := 2536;}(PRIORITY := INTERNAL);
     TASK INTERLOCKING   { TICKS := 2173;}(PRIORITY := INTERNAL);

     PROGRAM FBI001 WITH EVENT_SLOW:  CHART_c0a54037_4128_461a_9ad2_95c18c47a68d;
     PROGRAM FBI002 WITH EVENT_SLOW:  CHART_54bc3a75_2cd3_401a_9f40_bee50fa2d408;

   END_RESOURCE

 END_CONFIGURATION