months accessing
monthNamed: aString

	| lowercaseString |

	lowercaseString := aString asLowercase.
	^self months
		detect: [:aMonth | aMonth name asLowercase = lowercaseString]
		ifNone: [InvalidMonthNameException signalName: aString]