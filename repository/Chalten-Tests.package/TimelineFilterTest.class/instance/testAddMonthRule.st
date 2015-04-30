test
testAddMonthRule

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addMonthRule: January.

	self assert: (timeLineFilter includes: January third, 2004).
	self assert: (timeLineFilter includes: January third, 2005).
	self deny: (timeLineFilter includes: February third, 2005)