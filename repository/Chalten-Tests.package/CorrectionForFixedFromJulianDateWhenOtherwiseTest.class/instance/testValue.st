test
testValue

	| correction |

	correction := CorrectionForFixedFromDateBehavior for: JulianMay fifteenth, 2005.
	self assert: correction value = 2