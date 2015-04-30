test
testAddYearRule

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addYearRule: 2004 asGregorianYear.

	self assert: (timeLineFilter includes: January third, 2004).
	self assert: (timeLineFilter includes: June third, 2004).
	self deny: (timeLineFilter includes: February third, 2005)