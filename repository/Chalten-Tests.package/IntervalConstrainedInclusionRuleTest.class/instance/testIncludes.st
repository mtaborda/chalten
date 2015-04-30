test
testIncludes

	| rule |
	
	rule := IntervalConstrainedInclusionRule on: (1 to: 10) apply: self.
	(2 to: 10 by: 2) do: [ :aNumber | self assert: (rule includes: aNumber) ].
	
	self deny: (rule includes: 1).
	self deny: (rule includes: 0).
	self deny: (rule includes: 11).
	self deny: (rule includes: 12).
	
