test
testAddArgentineLaw23555Rule

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addArgentineLaw23555Rule: September fifteenth.

	self assert: (timeLineFilter includes: September nineteenth, 2005).
	self deny: (timeLineFilter includes: September fifteenth, 2005)