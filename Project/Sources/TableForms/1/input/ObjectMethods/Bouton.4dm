Case of 
	: (FORM Event:C1606.code=On Clicked:K2:4)
		$form:=New object:C1471()
		$refWindow:=Open form window:C675("add_task"; Sheet form window:K39:12)
		DIALOG:C40("add_task")
		CLOSE WINDOW:C154($refWindow)
End case 
If (ok=1)
	$task:=ds:C1482.Task.new()
	$task.taskName:=$form.task
	$task.save()
	Form:C1466.task1:=Form:C1466.task1.add($task)
/*$formation:=ds.Task.new()
$formation.name:=$form.function*/
End if 

