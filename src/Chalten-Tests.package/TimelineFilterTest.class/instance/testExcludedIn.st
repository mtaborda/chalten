test
testExcludedIn

	| timeLineFilter excluded january4Of2004 january11Of2004 |

	january4Of2004 := January fourth, 2004.
	january11Of2004 := January eleventh, 2004.
	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	excluded := timeLineFilter excludedIn: (january4Of2004 to: january11Of2004).

	self assert: excluded size = 7.
	self assert: (excluded includes: january4Of2004).
	self assert: (excluded includes: January fifth, 2004).
	self assert: (excluded includes: January sixth, 2004).
	self assert: (excluded includes: January seventh, 2004).
	self assert: (excluded includes: January eighth, 2004).
	self assert: (excluded includes: January ninth, 2004).
	self assert: (excluded includes: january11Of2004)