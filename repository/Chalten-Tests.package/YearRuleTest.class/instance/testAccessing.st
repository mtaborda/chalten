test
testAccessing

	| rule decoratedRule |

	decoratedRule := ObjectInclusionRule for: 2014 asGregorianYear.
	rule := YearRule rule: decoratedRule.
	self assert: rule decoratedRule = decoratedRule.
	self assert: rule year = 2014 asGregorianYear.
	self assert: rule printString = decoratedRule printString