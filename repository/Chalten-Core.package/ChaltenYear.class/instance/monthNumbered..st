accessing months
monthNumbered: aNumber

	| month |
	month := type monthNumbered: aNumber in: calendar.
	^month ofYear: self