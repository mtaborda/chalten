test testing
testIs

	self assert: (sunday is: Sunday).
	self assert: (monday is: Monday).
	self assert: (tuesday is: Tuesday).
	self assert: (wednesday is: Wednesday).
	self assert: (thursday is: Thursday).
	self assert: (friday is: Friday).
	self assert: (saturday is: Saturday).
	
	self deny: (sunday is: Monday).
	self deny: (monday is: Tuesday).
	self deny: (tuesday is: Wednesday).
	self deny: (wednesday is: Thursday).
	self deny: (thursday is: Friday).
	self deny: (friday is: Saturday).
	self deny: (saturday is: Sunday)