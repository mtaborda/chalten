test
testValue

	| correction |

	correction := CorrectionForDateFromFixedBehavior for: 2008 fixed: 733110 using: GregorianCalendar.
	self assert: correction value = 1