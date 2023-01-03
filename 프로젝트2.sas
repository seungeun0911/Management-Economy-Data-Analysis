/* 엑셀 파일 가져오기 */
%web_drop_table(WORK.IMPORT1);

FILENAME REFFILE '/home/u47249635/PROJECT/data2.xlsx';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.IMPORT1;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT1; RUN;

%web_open_table(WORK.IMPORT1);

/* 데이터셋 만들기 */
DATA PROJECT.DATA2;
	SET WORK.IMPORT1;
RUN;

PROC PRINT DATA= PROJECT.DATA2;
RUN;




/* 각 변수의 상자그림 */
ods graphics / reset width=6.4in height=4.8in imagemap;

proc sgplot data=WORK.IMPORT1;
	vbox drinking;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT1;
	vbox smoking;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT1;
	vbox aerobic;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT1;
	vbox muscle;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT1;
	vbox sleeping;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT1;
	vbox stress;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT1;
	vbox cancer;
	yaxis grid;
run;
ods graphics / reset;




/* 각 변수의 산점도 */
proc sgplot data=WORK.IMPORT1;
	scatter x=drinking y=cancer /;
	xaxis grid;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT1;
	scatter x=smoking y=cancer /;
	xaxis grid;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT1;
	scatter x=aerobic y=cancer /;
	xaxis grid;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT1;
	scatter x=muscle y=cancer /;
	xaxis grid;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT1;
	scatter x=sleeping y=cancer /;
	xaxis grid;
	yaxis grid;
run;
proc sgplot data=WORK.IMPORT1;
	scatter x=stress y=cancer /;
	xaxis grid;
	yaxis grid;
run;
ods graphics / reset;




/* 데이터를 시도별로 정렬 */
PROC SORT DATA=PROJECT.data2 OUT=PROJECT2;
BY area;
RUN;

/* OLS 추정 회귀분석 - 전체 */
PROC REG DATA=project2;
	MODEL cancer= drinking smoking aerobic muscle sleeping stress/p clm cli dw vif collin r stb;
	plot residual. * (predicted. drinking smoking aerobic muscle sleeping stress);
	test drinking=0, smoking=0, aerobic=0, muscle=0, sleeping=0, stress=0;
	output out = work.outlier2 P=predict R=residual rstudent =rstudent;
RUN;
QUIT;

proc reg data=project2;
	model cancer= drinking smoking aerobic muscle sleeping stress/acov spec;
run;