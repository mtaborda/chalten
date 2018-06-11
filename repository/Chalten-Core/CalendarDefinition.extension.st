Extension { #name : #CalendarDefinition }

{ #category : #'*Chalten-Core-GregorianModel' }
CalendarDefinition >> convertToGregorianDate: aDate [

	^GregorianCalendar dateFromDays: aDate dayNumberFromEpoch
]

{ #category : #'*Chalten-Core-GregorianModel' }
CalendarDefinition >> convertToGregorianDateTime: aDateTime [

	^DateTime
		date: (self convertToGregorianDate: aDateTime date)
		timeOfDay: aDateTime timeOfDay
]

{ #category : #'*Chalten-Core-HebrewModel' }
CalendarDefinition >> convertToHebrewDate: aDate [

	^HebrewCalendar dateFromDays: aDate dayNumberFromEpoch
]

{ #category : #'*Chalten-Core-HebrewModel' }
CalendarDefinition >> convertToHebrewDateTime: aDateTime [

	^DateTime
		date: (self convertToHebrewDate: aDateTime date)
		timeOfDay: aDateTime timeOfDay
]

{ #category : #'*Chalten-Core-IslamicModel' }
CalendarDefinition >> convertToIslamicDate: aDate [

	^IslamicCalendar dateFromDays: aDate dayNumberFromEpoch
]

{ #category : #'*Chalten-Core-IslamicModel' }
CalendarDefinition >> convertToIslamicDateTime: aDateTime [

	^DateTime
		date: (self convertToIslamicDate: aDateTime date)
		timeOfDay: aDateTime timeOfDay
]

{ #category : #'*Chalten-Core-JulianModel' }
CalendarDefinition >> convertToJulianDate: aDate [

	^JulianCalendar dateFromDays: aDate dayNumberFromEpoch
]

{ #category : #'*Chalten-Core-JulianModel' }
CalendarDefinition >> convertToJulianDateTime: aDateTime [

	^DateTime
		date: (self convertToJulianDate: aDateTime date)
		timeOfDay: aDateTime timeOfDay
]
