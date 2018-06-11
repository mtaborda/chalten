Extension { #name : #Number }

{ #category : #'*Chalten-Core-GregorianModel' }
Number >> asGregorianYear [

	^ChaltenYear number: self calendar: GregorianCalendar
]

{ #category : #'*Chalten-Core-HebrewModel' }
Number >> asHebrewYear [

	^ChaltenYear number: self calendar: HebrewCalendar
]

{ #category : #'*Chalten-Core-IslamicModel' }
Number >> asIslamicYear [

	^ChaltenYear number: self calendar: IslamicCalendar
]

{ #category : #'*Chalten-Core-JulianModel' }
Number >> asJulianYear [

	^ChaltenYear number: self calendar: JulianCalendar
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> centuriesMeasure [

	^TimeUnits century with: self
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> centuryMeasure [

	^self centuriesMeasure
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> dayMeasure [

	^self daysMeasure
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> daysMeasure [

	^TimeUnits day with: self
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> decadeMeasure [

	^self decadesMeasure
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> decadesMeasure [

	^TimeUnits decade with: self
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> hourMeasure [

	^self hoursMeasure
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> hoursMeasure [

	^TimeUnits hour with: self
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> millenniumMeasure [

	^self millenniumsMeasure
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> millenniumsMeasure [

	^TimeUnits millennium with: self
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> millisecondMeasure [

	^self millisecondsMeasure
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> millisecondsMeasure [

	^TimeUnits millisecond with: self
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> minuteMeasure [

	^self minutesMeasure
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> minutesMeasure [

	^TimeUnits minute with: self
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> monthMeasure [

	^self monthsMeasure
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> monthsMeasure [

	^TimeUnits month with: self
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> secondMeasure [

	^self secondsMeasure
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> secondsMeasure [

	^TimeUnits second with: self
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> weekMeasure [

	^self weeksMeasure
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> weeksMeasure [

	^TimeUnits week with: self
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> yearMeasure [

	^self yearsMeasure
]

{ #category : #'*Chalten-Core-TimeModel' }
Number >> yearsMeasure [

	^TimeUnits year with: self
]
