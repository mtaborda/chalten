Extension { #name : #FixedDate }

{ #category : #'*Chalten-Core-GregorianModel' }
FixedDate >> asGregorian [

	^calendar convertToGregorianDate: self
]

{ #category : #'*Chalten-Core-HebrewModel' }
FixedDate >> asHebrew [

	^calendar convertToHebrewDate: self
]

{ #category : #'*Chalten-Core-IslamicModel' }
FixedDate >> asIslamic [

	^calendar convertToIslamicDate: self
]

{ #category : #'*Chalten-Core-JulianModel' }
FixedDate >> asJulian [

	^calendar convertToJulianDate: self
]
