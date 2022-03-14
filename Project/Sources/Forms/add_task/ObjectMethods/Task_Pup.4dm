Case of 
	: (FORM Event:C1606.code=On Load:K2:1)
		ARRAY TEXT:C222(at_task; 0)
		ARRAY LONGINT:C221(al_task_id; 0)
		For each ($task; ds:C1482.Task.all().orderBy("taskName"))
			APPEND TO ARRAY:C911(at_task; $task.taskName)
			APPEND TO ARRAY:C911(al_task_id; $task.ID)
		End for each 
		at_task:=0
		
	: (FORM Event:C1606.code=On Data Change:K2:15)
		$position:=at_task
/*Form.User:=New object
Form.User.Id_task:=at_task{$position}*/
		Form:C1466.task:=at_task{$position}
End case 