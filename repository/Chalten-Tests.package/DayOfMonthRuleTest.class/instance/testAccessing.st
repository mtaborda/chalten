test
testAccessing

	| rule decoratedRule |

	decoratedRule := ObjectInclusionRule for: January first.
	rule := DayOfMonthRule rule: decoratedRule.
	self assert: rule dayOfMonth = January first.
	self assert: rule decoratedRule = decoratedRule.
	self assert: rule printString = decoratedRule printString