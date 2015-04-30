test
testAddMonthOfYearRule

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addMonthOfYearRule: (January of: 2004).

	self assert: (timeLineFilter includes: January third, 2004).
	self deny: (timeLineFilter includes: January third, 2005)