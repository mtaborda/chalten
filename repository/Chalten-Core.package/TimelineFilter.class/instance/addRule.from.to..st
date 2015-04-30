rules - adding specific rules
addRule: aRule from: aDate to: anotherDate

	^self addRule: (self rule: aRule from: aDate to: anotherDate)