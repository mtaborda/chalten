test
testPrintString

	self assert: (IntervalConstrainedInclusionRule on: (1 to: 10) apply: self) printString = 'From: 1 to: 10 -> IntervalConstrainedInclusionRuleTest>>#testPrintString'