test
testAccessing

	| rule decoratedRule |

	decoratedRule := ObjectInclusionRule for: GregorianCalendar january.
	rule := MonthRule rule: decoratedRule.
	self assert: rule decoratedRule = decoratedRule.
	self assert: rule month = January.
	self assert: rule printString = decoratedRule printString