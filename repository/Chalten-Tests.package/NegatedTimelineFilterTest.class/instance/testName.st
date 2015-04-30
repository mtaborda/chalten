test
testName

	| timeLineFilter |

	timeLineFilter := TimelineFilter named: 'K Lendar'.
	self assert: timeLineFilter negated name = 'K Lendar'.
	self assert: timeLineFilter negated negated name = 'K Lendar'