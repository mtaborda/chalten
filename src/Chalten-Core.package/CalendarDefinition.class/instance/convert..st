converting
convert: aDateOrDateTime

	(aDateOrDateTime isKindOf: FixedDate)
		ifTrue: [ ^self convertToDate: aDateOrDateTime ].
	(aDateOrDateTime isKindOf: DateTime)
		ifTrue: [ ^self convertToDateTime: aDateOrDateTime ].
	self error: ('<1p> can`t be converted to Date nor DateTime' expandMacrosWith: aDateOrDateTime)