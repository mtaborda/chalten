test
testAccessing

	| rule decoratedRule |

	decoratedRule := ObjectInclusionRule for: GregorianCalendar friday.
	rule := DayRule rule: decoratedRule.
	self assert: rule day = Friday.
	self assert: rule decoratedRule = decoratedRule.
	self assert: rule printString = decoratedRule printString