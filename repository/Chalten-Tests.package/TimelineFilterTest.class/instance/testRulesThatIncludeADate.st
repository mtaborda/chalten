test
testRulesThatIncludeADate

	| timeLineFilter rule1 rule2 rule3 september14Of2005 september15Of2005 september16Of2005 |

	september14Of2005 := September fourteenth, 2005.
	september15Of2005 := September fifteenth, 2005.
	september16Of2005 := September sixteenth, 2005.
	timeLineFilter := TimelineFilter new.
	rule1 := timeLineFilter dateRule: september14Of2005.
	rule2 := timeLineFilter dateRule: september15Of2005.
	rule3 := timeLineFilter dateRule: september16Of2005.
	timeLineFilter addRules: (OrderedCollection with: rule1 with: rule2 with: rule3).

	self assert: (timeLineFilter rulesThatInclude: september14Of2005) asOrderedCollection = (OrderedCollection with: rule1).
	self deny: (timeLineFilter rulesThatInclude: september15Of2005) asOrderedCollection = (OrderedCollection with: rule1).
	self deny: (timeLineFilter rulesThatInclude: september16Of2005) asOrderedCollection = (OrderedCollection with: rule1).
	self deny: (timeLineFilter rulesThatInclude: september14Of2005) asOrderedCollection = (OrderedCollection with: rule2).
	self assert: (timeLineFilter rulesThatInclude: september15Of2005) asOrderedCollection = (OrderedCollection with: rule2).
	self deny: (timeLineFilter rulesThatInclude: september16Of2005) asOrderedCollection = (OrderedCollection with: rule2).
	self deny: (timeLineFilter rulesThatInclude: september14Of2005) asOrderedCollection = (OrderedCollection with: rule3).
	self deny: (timeLineFilter rulesThatInclude: september15Of2005) asOrderedCollection = (OrderedCollection with: rule3).
	self assert: (timeLineFilter rulesThatInclude: september16Of2005) asOrderedCollection = (OrderedCollection with: rule3)