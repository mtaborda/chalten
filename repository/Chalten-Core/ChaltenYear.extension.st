Extension { #name : #ChaltenYear }

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> adar [

	^MonthOfYear year: self month: calendar adar
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> adarI [

	^MonthOfYear year: self month: calendar adarI
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> adarII [

	^MonthOfYear year: self month: calendar adarII
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> april [

	^MonthOfYear year: self month: calendar april
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> august [

	^MonthOfYear year: self month: calendar august
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> av [

	^MonthOfYear year: self month: calendar av
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> december [

	^MonthOfYear year: self month: calendar december
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> dhuAlHijja [

	^MonthOfYear year: self month: calendar dhuAlHijja
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> dhuAlQada [

	^MonthOfYear year: self month: calendar dhuAlQada
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> elul [

	^MonthOfYear year: self month: calendar elul
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> february [

	^MonthOfYear year: self month: calendar february
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> ifLongMarheshvanDo: aBlock else: anotherBlock [

	^calendar
		ifLongMarheshvanIn: self
		do: aBlock
		else: anotherBlock
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> ifShortKislevDo: aBlock else: anotherBlock [

	^calendar
		ifShortKislevIn: self
		do: aBlock
		else: anotherBlock
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> iyyar [

	^MonthOfYear year: self month: calendar iyyar
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> january [

	^MonthOfYear year: self month: calendar january
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> july [

	^MonthOfYear year: self month: calendar july
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> jumadaI [

	^MonthOfYear year: self month: calendar jumadaI
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> jumadaII [

	^MonthOfYear year: self month: calendar jumadaII
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> june [

	^MonthOfYear year: self month: calendar june
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> kislev [

	^MonthOfYear year: self month: calendar kislev
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> march [

	^MonthOfYear year: self month: calendar march
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> marheshvan [

	^MonthOfYear year: self month: calendar marheshvan
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> may [

	^MonthOfYear year: self month: calendar may
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> muharram [

	^MonthOfYear year: self month: calendar muharram
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> nisan [

	^MonthOfYear year: self month: calendar nisan
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> november [

	^MonthOfYear year: self month: calendar november
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> october [

	^MonthOfYear year: self month: calendar october
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> rabiI [

	^MonthOfYear year: self month: calendar rabiI
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> rabiII [

	^MonthOfYear year: self month: calendar rabiII
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> rajab [

	^MonthOfYear year: self month: calendar rajab
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> ramadan [

	^MonthOfYear year: self month: calendar ramadan
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> safar [

	^MonthOfYear year: self month: calendar safar
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> september [

	^MonthOfYear year: self month: calendar september
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> shaban [

	^MonthOfYear year: self month: calendar shaban
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> shawwal [

	^MonthOfYear year: self month: calendar shawwal
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> shevat [

	^MonthOfYear year: self month: calendar shevat
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> sivan [

	^MonthOfYear year: self month: calendar sivan
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> tammuz [

	^MonthOfYear year: self month: calendar tammuz
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> tevet [

	^MonthOfYear year: self month: calendar tevet
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> tishri [

	^MonthOfYear year: self month: calendar tishri
]
