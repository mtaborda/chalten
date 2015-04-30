test
testPrintOn

	| timeLineFilterUnnamed timeLineFilterNamed |

	timeLineFilterUnnamed := TimelineFilter new.
	timeLineFilterNamed := TimelineFilter named: 'Argentino'.

	self assert: timeLineFilterUnnamed printString = 'Unnamed'.
	self assert: timeLineFilterNamed printString = 'Argentino'