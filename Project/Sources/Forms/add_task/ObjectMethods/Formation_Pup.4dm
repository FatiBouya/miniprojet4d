Case of 
	: (FORM Event:C1606.code=On Load:K2:1)
		ARRAY TEXT:C222(at_formation; 0)
		LIST TO ARRAY:C288("FormationName"; at_formation)
		
	: (FORM Event:C1606.code=On Data Change:K2:15)
		$position:=at_formation
		Form:C1466.function:=at_formation{$position}
End case 