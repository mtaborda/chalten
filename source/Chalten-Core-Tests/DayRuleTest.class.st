Class {
	#name : 'DayRuleTest',
	#superclass : 'TestCase',
	#category : 'Chalten-Core-Tests-Filter',
	#package : 'Chalten-Core-Tests',
	#tag : 'Filter'
}

{ #category : 'test' }
DayRuleTest >> testAccessing [

	| rule decoratedRule |
	decoratedRule := ObjectInclusionRule for:
		                 (ChaltenEnvironment calendarNamed:
			                  #GregorianCalendar) friday.
	rule := DayRule rule: decoratedRule.
	self assert: rule day = Friday.
	self assert: rule decoratedRule = decoratedRule.
	self assert: rule printString = decoratedRule printString
]

{ #category : 'test' }
DayRuleTest >> testIncludes [

	| rule includedDate |

	includedDate := January first, 2006.
	rule := DayRule day:  Sunday.
	self
		assert: (rule includes: includedDate);
		deny: (rule includes: includedDate next)
]
