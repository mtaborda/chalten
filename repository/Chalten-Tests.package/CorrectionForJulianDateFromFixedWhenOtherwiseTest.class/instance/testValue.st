test
testValue

	| correction |

	correction := CorrectionForDateFromFixedBehavior for: 2007 fixed: 733110 using: JulianCalendar.
	self assert: correction value = 2