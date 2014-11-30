testing
testAccessing

	| rule |
	
	rule := ObjectInclusionRule for: 1.
	
	self assert: rule object=1.
