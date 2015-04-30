test
testPrintOn

	| timeLineFilterUnnamed timeLineFilterNamed negatedTimeLineFilterUnnamed
	  negatedTimeLineFilterNamed |

	timeLineFilterUnnamed := TimelineFilter new.
	timeLineFilterNamed := TimelineFilter named: 'Argentino'.
	negatedTimeLineFilterUnnamed := timeLineFilterUnnamed negated.
	negatedTimeLineFilterNamed := timeLineFilterNamed negated.

	self assert: negatedTimeLineFilterUnnamed printString = 'Unnamed'.
	self assert: negatedTimeLineFilterNamed printString = 'Argentino'