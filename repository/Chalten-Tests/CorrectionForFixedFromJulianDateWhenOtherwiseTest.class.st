Class {
	#name : #CorrectionForFixedFromJulianDateWhenOtherwiseTest,
	#superclass : #TestCase,
	#category : 'Chalten-Tests-JulianModel'
}

{ #category : #test }
CorrectionForFixedFromJulianDateWhenOtherwiseTest >> testValue [

	| correction |

	correction := CorrectionForFixedFromDateBehavior for: JulianMay fifteenth, 2005.
	self assert: correction value = 2
]
