test
testRules

	| timeLineFilter rule1 rule2 rule3 rulesCollection |

	timeLineFilter := TimelineFilter new.
	rule1 := timeLineFilter dateRule: September fourteenth, 2005.
	rule2 := timeLineFilter dateRule: September fifteenth, 2005.
	rule3 := timeLineFilter dateRule: September sixteenth, 2005.
	rulesCollection := OrderedCollection with: rule1 with: rule2 with: rule3.
	timeLineFilter addRules: rulesCollection.
	self assert: (timeLineFilter includesAll: (rulesCollection collect: [ :rule | rule date ]))