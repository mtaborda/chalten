test
testValue

	| correction |

	correction := CorrectionForDateFromFixedBehavior for: 2008 fixed: 733120 using: JulianCalendar.
	self assert: correction value = 1