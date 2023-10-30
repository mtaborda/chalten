Extension { #name : 'Number' }

{ #category : '*Chalten-Islamic-Calendar' }
Number >> asIslamicYear [

	^ ChaltenYear
		  number: self
		  calendar: (ChaltenEnvironment calendarNamed: #IslamicCalendar)
]
