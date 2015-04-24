test
testAddDateRule

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDateRule: January third, 2004.

	self assert: (timeLineFilter includes: January third, 2004).
	self deny: (timeLineFilter includes: January fourth, 2004)