test
testAddDayOfMonthRule

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayOfMonthRule: January third.

	self assert: (timeLineFilter includes: January third, 2004).
	self assert: (timeLineFilter includes: January third, 2005).
	self deny: (timeLineFilter includes: January fourth, 2004)