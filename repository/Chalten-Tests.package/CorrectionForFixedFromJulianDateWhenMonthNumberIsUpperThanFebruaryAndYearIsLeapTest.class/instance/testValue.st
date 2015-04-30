test
testValue

	| correction |

	correction := CorrectionForFixedFromDateBehavior for: JulianMarch fifteenth, 2008.
	self assert: correction value = 1