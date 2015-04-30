test
testRemoveAllRules

	| timeLineFilter date anotherDate |

	date := January third. 2004.
	anotherDate := January fourth, 2004.
	timeLineFilter := TimelineFilter new.
	timeLineFilter addDateRule: date.
	timeLineFilter addDateRule: anotherDate.
	self assert: (timeLineFilter includes: date).
	self assert: (timeLineFilter includes: anotherDate).
	timeLineFilter removeAllRules.
	self deny: (timeLineFilter includes: date).
	self deny: (timeLineFilter includes: anotherDate).
	self assert: timeLineFilter rules isEmpty