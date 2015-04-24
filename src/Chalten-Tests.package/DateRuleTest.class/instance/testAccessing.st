test
testAccessing

	| rule decoratedRule |

	decoratedRule := ObjectInclusionRule for: May fourth, 2014.
	rule := DateRule rule: decoratedRule.
	self assert: rule date = (May fourth, 2014).
	self assert: rule decoratedRule = decoratedRule.
	self assert: rule printString = decoratedRule printString