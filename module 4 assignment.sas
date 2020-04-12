/* runniung first sas code on sas studio
effect of turoring on sutdents
*/
/*
 starting data steps
 */
data TestScores;
input TScore_before TScore_after @@;
/*
 entering the before tutoring score and after tutoting score as testscores
*/
datalines;
123 133 135 136 129 135 117 137 120 142 138 135
140 121 145 147 136 168 140 152 146 129 137 145
;
run;
/* 
starting PROC Step
*/
proc print data=TestScores;
run;
/*
producing plot for exploratory data analysis
*/
ods graphics on;
proc ttest;
paired TScore_before*TScore_after;
run;
ods graphics off;
