Extension { #name : 'Number' }

{ #category : '*Chalten-Gregorian-Calendar' }
Number >> asGregorianYear [

	^ ChaltenYear
		  number: self
		  calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar)
]
