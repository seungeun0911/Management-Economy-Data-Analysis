/* 엑셀 파일 가져오기 */
%web_drop_table(WORK.IMPORT);

FILENAME REFFILE '/home/u47249635/PROJECT/data.xlsx';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;

%web_open_table(WORK.IMPORT);

/* 데이터셋 만들기 */
DATA PROJECT.DATA1;
	SET WORK.IMPORT;
RUN;

PROC PRINT DATA= PROJECT.DATA1;
RUN;




/* 그래프 해석*/
DATA WORK.DATAGRAPH;
   SET project.data1;
   
   DIF_DRINKING = DIF(DRINKING);
    DIF_SMOKING = DIF(SMOKING);
    DIF_AEROBIC = DIF(AEROBIC);
    DIF_MUSCLE = DIF(MUSCLE);
    DIF_SLEEPING = DIF(SLEEPING);
    DIF_STRESS = DIF(STRESS);
    DIF_CANCER = DIF(CANCER);

    IF area = '강원도' THEN DO
   DIF_DRINKING1 = DIF(DRINKING);
    DIF_SMOKING1 = DIF(SMOKING);
    DIF_AEROBIC1 = DIF(AEROBIC);
    DIF_MUSCLE1 = DIF(MUSCLE);
    DIF_SLEEPING1 = DIF(SLEEPING);
    DIF_STRESS1 = DIF(STRESS);
    DIF_CANCER1 = DIF(CANCER);
    END;
    
    IF area = '경기도' THEN DO
   DIF_DRINKING2 = DIF(DRINKING);
    DIF_SMOKING2 = DIF(SMOKING);
    DIF_AEROBIC2 = DIF(AEROBIC);
    DIF_MUSCLE2 = DIF(MUSCLE);
    DIF_SLEEPING2 = DIF(SLEEPING);
    DIF_STRESS2 = DIF(STRESS);
    DIF_CANCER2 = DIF(CANCER);
    END;
    
    IF area = '서울특별시' THEN DO
   DIF_DRINKING3 = DIF(DRINKING);
    DIF_SMOKING3 = DIF(SMOKING);
    DIF_AEROBIC3 = DIF(AEROBIC);
    DIF_MUSCLE3 = DIF(MUSCLE);
    DIF_SLEEPING3 = DIF(SLEEPING);
    DIF_STRESS3 = DIF(STRESS);
    DIF_CANCER3 = DIF(CANCER);
    END;
    
     IF area = '부산광역시' THEN DO
   DIF_DRINKING4 = DIF(DRINKING);
    DIF_SMOKING4 = DIF(SMOKING);
    DIF_AEROBIC4 = DIF(AEROBIC);
    DIF_MUSCLE4 = DIF(MUSCLE);
    DIF_SLEEPING4 = DIF(SLEEPING);
    DIF_STRESS4 = DIF(STRESS);
    DIF_CANCER4 = DIF(CANCER);
    END;

    IF area = '대구광역시' THEN DO
   DIF_DRINKING5 = DIF(DRINKING);
    DIF_SMOKING5 = DIF(SMOKING);
    DIF_AEROBIC5 = DIF(AEROBIC);
    DIF_MUSCLE5 = DIF(MUSCLE);
    DIF_SLEEPING5 = DIF(SLEEPING);
    DIF_STRESS5 = DIF(STRESS);
    DIF_CANCER5 = DIF(CANCER);
    END;
    
    IF area = '인천광역시' THEN DO
   DIF_DRINKING6 = DIF(DRINKING);
    DIF_SMOKING6 = DIF(SMOKING);
    DIF_AEROBIC6 = DIF(AEROBIC);
    DIF_MUSCLE6 = DIF(MUSCLE);
    DIF_SLEEPING6 = DIF(SLEEPING);
    DIF_STRESS6 = DIF(STRESS);
    DIF_CANCER6 = DIF(CANCER);
    END;
 
    IF area = '광주광역시' THEN DO
   DIF_DRINKING7 = DIF(DRINKING);
    DIF_SMOKING7 = DIF(SMOKING);
    DIF_AEROBIC7 = DIF(AEROBIC);
    DIF_MUSCLE7 = DIF(MUSCLE);
    DIF_SLEEPING7 = DIF(SLEEPING);
    DIF_STRESS7 = DIF(STRESS);
    DIF_CANCER7 = DIF(CANCER);
    END;

    IF area = '대전광역시' THEN DO
   DIF_DRINKING8 = DIF(DRINKING);
    DIF_SMOKING8 = DIF(SMOKING);
    DIF_AEROBIC8 = DIF(AEROBIC);
    DIF_MUSCLE8 = DIF(MUSCLE);
    DIF_SLEEPING8 = DIF(SLEEPING);
    DIF_STRESS8 = DIF(STRESS);
    DIF_CANCER8 = DIF(CANCER);
    END;
    
    IF area = '울산광역시' THEN DO
   DIF_DRINKING9 = DIF(DRINKING);
    DIF_SMOKING9 = DIF(SMOKING);
    DIF_AEROBIC9 = DIF(AEROBIC);
    DIF_MUSCLE9 = DIF(MUSCLE);
    DIF_SLEEPING9 = DIF(SLEEPING);
    DIF_STRESS9 = DIF(STRESS);
    DIF_CANCER9 = DIF(CANCER);
    END;
    
    IF area = '충청북도' THEN DO
   DIF_DRINKING10 = DIF(DRINKING);
    DIF_SMOKING10 = DIF(SMOKING);
    DIF_AEROBIC10 = DIF(AEROBIC);
    DIF_MUSCLE10 = DIF(MUSCLE);
    DIF_SLEEPING10 = DIF(SLEEPING);
    DIF_STRESS10 = DIF(STRESS);
    DIF_CANCER10 = DIF(CANCER);
    END;
    
    IF area = '충청남도' THEN DO
   DIF_DRINKING11 = DIF(DRINKING);
    DIF_SMOKING11 = DIF(SMOKING);
    DIF_AEROBIC11 = DIF(AEROBIC);
    DIF_MUSCLE11 = DIF(MUSCLE);
    DIF_SLEEPING11 = DIF(SLEEPING);
    DIF_STRESS11 = DIF(STRESS);
    DIF_CANCER11 = DIF(CANCER);
    END;
    
    IF area = '전라북도' THEN DO
   DIF_DRINKING12 = DIF(DRINKING);
    DIF_SMOKING12 = DIF(SMOKING);
    DIF_AEROBIC12 = DIF(AEROBIC);
    DIF_MUSCLE12 = DIF(MUSCLE);
    DIF_SLEEPING12 = DIF(SLEEPING);
    DIF_STRESS12 = DIF(STRESS);
    DIF_CANCER12 = DIF(CANCER);
    END;
    
    IF area = '전라남도' THEN DO
   DIF_DRINKING13 = DIF(DRINKING);
    DIF_SMOKING13 = DIF(SMOKING);
    DIF_AEROBIC13 = DIF(AEROBIC);
    DIF_MUSCLE13 = DIF(MUSCLE);
    DIF_SLEEPING13 = DIF(SLEEPING);
    DIF_STRESS13 = DIF(STRESS);
    DIF_CANCER13 = DIF(CANCER);
    END;
    
    IF area = '경상북도' THEN DO
   DIF_DRINKING14 = DIF(DRINKING);
    DIF_SMOKING14 = DIF(SMOKING);
    DIF_AEROBIC14 = DIF(AEROBIC);
    DIF_MUSCLE14 = DIF(MUSCLE);
    DIF_SLEEPING14 = DIF(SLEEPING);
    DIF_STRESS14 = DIF(STRESS);
    DIF_CANCER14 = DIF(CANCER);
    END;

    IF area = '경상남도' THEN DO
   DIF_DRINKING15 = DIF(DRINKING);
    DIF_SMOKING15 = DIF(SMOKING);
    DIF_AEROBIC15 = DIF(AEROBIC);
    DIF_MUSCLE15 = DIF(MUSCLE);
    DIF_SLEEPING15 = DIF(SLEEPING);
    DIF_STRESS15 = DIF(STRESS);
    DIF_CANCER15 = DIF(CANCER);
    END;

    IF area = '제주특별자치도' THEN DO
   DIF_DRINKING16 = DIF(DRINKING);
    DIF_SMOKING16 = DIF(SMOKING);
    DIF_AEROBIC16 = DIF(AEROBIC);
    DIF_MUSCLE16 = DIF(MUSCLE);
    DIF_SLEEPING16 = DIF(SLEEPING);
    DIF_STRESS16 = DIF(STRESS);
    DIF_CANCER16 = DIF(CANCER);
    END;
    
    IF area = '세종특별자치시' THEN DO
   DIF_DRINKING17 = DIF(DRINKING);
    DIF_SMOKING17 = DIF(SMOKING);
    DIF_AEROBIC17 = DIF(AEROBIC);
    DIF_MUSCLE17 = DIF(MUSCLE);
    DIF_SLEEPING17 = DIF(SLEEPING);
    DIF_STRESS17 = DIF(STRESS);
    DIF_CANCER17 = DIF(CANCER);
    END;
RUN;

PROC GPLOT DATA= WORK.DATAGRAPH;
   PLOT (DIF_DRINKING1 DIF_SMOKING1 DIF_AEROBIC1 DIF_MUSCLE1 DIF_SLEEPING1 DIF_STRESS1) * YEAR / OVERLAY;
RUN; QUIT;

PROC GPLOT DATA= WORK.DATAGRAPH;
   PLOT CANCER * YEAR;
RUN; QUIT;

PROC GPLOT DATA= WORK.DATAGRAPH;
   PLOT DIF_CANCER * YEAR / OVERLAY;
RUN; QUIT;

PROC AUTOREG DATA=WORK.DATAGRAPH;
/*  SOC: MODEL SOC= YEAR WAGE; */
 CANCER: MODEL CANCER= YEAR DRINKING;
RUN;

/* 예시 */
proc gplot data=work.datagraph;
	/*where area='인천광역시';*/
	plot drinking*year;
run;quit;




/* 각 변수의 상자그림 */
ods graphics / reset width=6.4in height=4.8in imagemap;

proc sgplot data=WORK.IMPORT;
	vbox drinking;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT;
	vbox smoking;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT;
	vbox aerobic;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT;
	vbox muscle;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT;
	vbox sleeping;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT;
	vbox stress;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT;
	vbox cancer;
	yaxis grid;
run;
ods graphics / reset;




/* 각 변수의 산점도 */
proc sgplot data=WORK.IMPORT;
	scatter x=drinking y=cancer /;
	xaxis grid;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT;
	scatter x=smoking y=cancer /;
	xaxis grid;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT;
	scatter x=aerobic y=cancer /;
	xaxis grid;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT;
	scatter x=muscle y=cancer /;
	xaxis grid;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT;
	scatter x=sleeping y=cancer /;
	xaxis grid;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT;
	scatter x=stress y=cancer /;
	xaxis grid;
	yaxis grid;
run;
ods graphics / reset;




/* 각 변수의 평균, 표준편차 계산 */
proc means data=PROJECT.DATA1 mean std;
    var drinking smoking aerobic muscle sleeping stress cancer;
    by year;
run;

/* 그래프로 구현 */
SYMBOL1 I=join;
PROC GPLOT DATA= project.data1;
   PLOT smoking * YEAR ;
RUN; QUIT;



/* 상관계수를 활용한 다중공선성 진단 */
proc corr data=PROJECT.DATA1 nosimple;
    var drinking smoking aerobic muscle sleeping stress cancer;
run;

proc corr data=PROJECT.DATA1 nosimple plots(only)=scatter;
    var drinking smoking aerobic muscle sleeping stress cancer;
	with cancer;
run;

proc corr data=PROJECT.DATA1 nosimple plots(only)=matrix(nvar=all histogram);
    var drinking smoking aerobic muscle sleeping stress cancer;
run;




/* 데이터를 시도별로 정렬 */
PROC SORT DATA=PROJECT.data1 OUT=PROJECT;
BY area;
RUN;

/* OLS 추정 회귀분석 - 전체 */
PROC REG DATA=project;
	MODEL cancer= drinking smoking aerobic muscle sleeping stress/p clm cli dw vif collin r stb;
	plot residual. * (predicted. drinking smoking aerobic muscle sleeping stress);
	test drinking=0, smoking=0, aerobic=0, muscle=0, sleeping=0, stress=0;
	output out = work.outlier P=predict R=residual rstudent =rstudent;
RUN;
QUIT;

/* 회귀계수 B1에 대한 유의성 검정(유의수준 0.05), residual*x는 독립변수에 대한 잔차의 산점도, 
rstudent*predict 오차항의 등분산성이 성립하는지 보기 위한 산점도 (0을 중심으로 랜덤하게 나타나나, 어느 한쪽으로 쏠려서 나타나지 않는가) */
PROC PLOT DATA=outlier HPERCENT=30 VPERCENT=30;
	PLOT residual*(drinking smoking aerobic muscle sleeping stress) rstudent*predict;
RUN;

/* 정규성의 검정: 샤피로-윌크 통계량 W는 p값을 나타냄. p값이 유의수준보다 작으면 h0를 기각함. 즉, 오차항은 정규분포를 따른다. */
PROC univariate DATA=outlier NORMAL PLOT;
	VAR residual;
RUN;




/* Mallow CP를 이용한 독립변수 선택 */
PROC REG DATA=project;
	MODEL cancer= drinking smoking aerobic muscle sleeping stress/selection=cp;
RUN;
QUIT;




/* muscle, sleeping 변수 제거 후 재분석 */
PROC REG DATA=project;
	MODEL cancer= drinking smoking aerobic stress/p clm cli dw r vif stb;
	plot residual. * (predicted. drinking smoking aerobic stress);
	test drinking=0, smoking=0, aerobic=0, stress=0;
	output out = work.outlier P=predict R=residual rstudent =rstudent;
RUN;
QUIT;

/* 회귀계수 B1에 대한 유의성 검정(유의수준 0.05), residual*x는 독립변수에 대한 잔차의 산점도, 
rstudent*predict 오차항의 등분산성이 성립하는지 보기 위한 산점도 (0을 중심으로 랜덤하게 나타나나, 어느 한쪽으로 쏠려서 나타나지 않는가) */
PROC PLOT DATA=outlier HPERCENT=30 VPERCENT=30;
	PLOT residual*(drinking smoking aerobic stress) rstudent*predict;
RUN;

/* 정규성의 검정: 샤피로-윌크 통계량 W는 p값을 나타냄. p값이 유의수준보다 작으면 h0를 기각함. 즉, 오차항은 정규분포를 따른다. */
PROC univariate DATA=outlier NORMAL PLOT;
	VAR residual;
RUN;




/* 데이터를 연도별로 정렬 */
PROC SORT DATA=PROJECT OUT=PROJECT;
BY year;
RUN;

/* OLS 추정 회귀분석 - 연도별 */
PROC REG DATA=project;
	MODEL cancer=drinking smoking aerobic muscle sleeping stress/p clm cli dw vif collin r stb;
	BY year;
	plot residual. * (predicted. drinking smoking aerobic muscle sleeping stress);
	test drinking=0, smoking=0, aerobic=0, muscle=0, sleeping=0, stress=0;
	output out = work.outlier rstudent =rstudent;
RUN;
QUIT;




/* 시도별 더미변수 */
DATA dummy;
	set project.data1;
	if area in ('경기도', '서울특별시', '인천광역시') then do; D1=1; D2=0; D3=0; D4=0; D5=0; end;
	  else if area='강원도' then do; D1=0; D2=1; D3=0; D4=0; D5=0; end;
		 else if area in ('대구광역시', '부산광역시', '울산광역시', '경상남도', '경상북도') then do; D1=0; D2=0; D3=1; D4=0; D5=0; end;
		    else if area in ('전라남도', '전라북도', '광주광역시', '제주특별자치도') then do; D1=0; D2=0; D3=0; D4=1; D5=0; end;
			   else if area in ('세종특별자치시', '대전광역시', '충청남도', '충청북도') then do; D1=0; D2=0; D3=0; D4=0; D5=1; end;	
run;

proc reg data=dummy;
	model cancer= drinking smoking aerobic muscle sleeping stress D1 D2 D3 D4/p clm cli dw vif collin r stb; 
	plot residual. * (predicted. drinking smoking aerobic muscle sleeping stress);
	test drinking=0, smoking=0, aerobic=0, muscle=0, sleeping=0, stress=0;
	output out = work.outlier R=residual rstudent =rstudent;
run;

/* 정규성의 검정: 샤피로-윌크 통계량 W는 p값을 나타냄. p값이 유의수준보다 작으면 h0를 기각함. 즉, 오차항은 정규분포를 따른다. */
PROC univariate DATA=outlier NORMAL PLOT;
	VAR residual;
RUN;




/* 연도별 더미변수 */
DATA dummy2;
	set project.data1;
	if year=2015 then do; D1=1; D2=0; D3=0; D4=0; D5=0; end;
	  else if year=2016 then do; D1=0; D2=1; D3=0; D4=0; D5=0; end;
		 else if year=2017 then do; D1=0; D2=0; D3=1; D4=0; D5=0; end;
		    else if year=2018 then do; D1=0; D2=0; D3=0; D4=1; D5=0; end;
			   else if year=2019 then do; D1=0; D2=0; D3=0; D4=0; D5=1; end;	
run;

proc reg data=dummy2;
	model cancer= drinking smoking aerobic muscle sleeping stress D1 D2 D3 D4/p clm cli dw vif collin r stb; 
	plot residual. * (predicted. drinking smoking aerobic muscle sleeping stress);
	test drinking=0, smoking=0, aerobic=0, muscle=0, sleeping=0, stress=0;
	output out = work.outlier rstudent =rstudent;
run;

/* sleeping 변수 제외 */
proc reg data=dummy2;
	model cancer= drinking smoking aerobic muscle stress D1 D2 D3 D4/p clm cli dw vif collin r stb; 
	plot residual. * (predicted. drinking smoking aerobic muscle stress);
	test drinking=0, smoking=0, aerobic=0, muscle=0, stress=0;
	output out = work.outlier rstudent =rstudent;
run;

/* muscle 변수 제외 */
proc reg data=dummy2;
	model cancer= drinking smoking aerobic stress D1 D2 D3 D4/p clm cli dw vif collin r stb; 
	plot residual. * (predicted. drinking smoking aerobic stress);
	test drinking=0, smoking=0, aerobic=0, stress=0;
	output out = work.outlier rstudent =rstudent;
run;




/* white 검정 */
proc model data=project;
	parms b0 b1 b2 b3 b4 b5 b6;
	cancer=b0+b1*drinking+b2*smoking+b3*aerobic+b4*muscle+b5*sleeping+b6*stress;
	fit cancer/white;
run;




/* GLS 추정 */
PROC REG DATA = project;
MODEL CANCER = DRINKING SMOKING AEROBIC MUSCLE SLEEPING STRESS;
OUTPUT OUT=GLS1 P=YHAT;
RUN;

DATA GLS2;
   SET GLS1;
   W=1/YHAT**2;
RUN;

PROC REG DATA=GLS2;
   WEIGHT W;
   MODEL CANCER= DRINKING SMOKING AEROBIC MUSCLE SLEEPING STRESS/p clm cli dw vif collin r stb;
   output out = work.outlier P=predict R=residual rstudent =rstudent;
   RUN;
 
/* 정규성의 검정: 샤피로-윌크 통계량 W는 p값을 나타냄. p값이 유의수준보다 작으면 h0를 기각함. 즉, 오차항은 정규분포를 따른다. */
PROC univariate DATA=outlier NORMAL PLOT;
	VAR residual;
RUN;
 


/* muscle, sleeping 제거 후 재분석 */
PROC REG DATA=GLS2;
   WEIGHT W;
   MODEL CANCER= DRINKING SMOKING AEROBIC STRESS/p clm cli dw vif collin r stb;
   output out = work.outlier P=predict R=residual rstudent =rstudent;
   RUN; 

PROC univariate DATA=outlier NORMAL PLOT;
	VAR residual;
RUN;