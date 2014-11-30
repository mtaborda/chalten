test
testAccessing

	| rule decoratedRule |

	decoratedRule := ObjectInclusionRule for: (GregorianCalendar january of: 2014).
	rule := MonthOfYearRule rule: decoratedRule.
	self assert: rule decoratedRule = decoratedRule.
	self assert: rule monthOfYear = (January, 2014).
	self assert: rule printString = decoratedRule printString