Class {
	#name : #CorrectionForGregorianDateFromFixedWhenNumberIsLowerThanMarchFirstTest,
	#superclass : #TestCase,
	#category : 'Chalten-Tests-GregorianModel'
}

{ #category : #test }
CorrectionForGregorianDateFromFixedWhenNumberIsLowerThanMarchFirstTest >> testValue [

	| correction |

	correction := CorrectionForDateFromFixedBehavior for: 2007 fixed: 31 using: GregorianCalendar.
	self assert: correction value = 0
]
