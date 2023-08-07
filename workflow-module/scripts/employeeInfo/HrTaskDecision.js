// read user task information
var lastUserTask1 = $.usertasks.usertask1.last.decision;

if(lastUserTask1 == 'Approve'){
	$.context.hr.taskdecion = 1;
}else{
	$.context.hr.taskdecion = 0;
}


