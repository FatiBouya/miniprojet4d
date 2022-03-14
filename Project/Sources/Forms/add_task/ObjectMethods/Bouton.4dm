$tasks:=ds:C1482.task.query("taskName = :1 and id_formation = :2"; \
Form:C1466.task; \
Form:C1466.function)

If ($tasks.length#0)
	ALERT:C41("This e is alreaday in your tasks")
Else 
	ACCEPT:C269
End if 