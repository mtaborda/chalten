rules - adding specific rules
addRule: aRule from: aDate

	^self addRule: (self rule: aRule from: aDate to: TheEndOfTime)