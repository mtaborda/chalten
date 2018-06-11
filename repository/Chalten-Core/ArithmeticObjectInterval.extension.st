Extension { #name : #ArithmeticObjectInterval }

{ #category : #'*Chalten-Core-TimeModel' }
ArithmeticObjectInterval >> asTimeSpan [

	^TimeSpan fromInterval: self
]
