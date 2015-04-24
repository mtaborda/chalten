test
testInstanceCreation

	self assert: (IntervalConstrainedInclusionRule on: (1 to: 10) apply: self) interval = (1 to: 10).
	self assert: (IntervalConstrainedInclusionRule from: 1 to: 10 apply: self) interval = (1 to: 10).

	self assert: (IntervalConstrainedInclusionRule on: (1 to: 10) apply: self) decoratedRule = self.
	self assert: (IntervalConstrainedInclusionRule from: 1 to: 10 apply: self) decoratedRule = self