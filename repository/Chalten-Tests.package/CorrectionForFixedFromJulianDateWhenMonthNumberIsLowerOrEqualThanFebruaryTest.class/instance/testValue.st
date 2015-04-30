test
testValue

	| correction |

	correction := CorrectionForFixedFromDateBehavior for: JulianJanuary fifteenth, 2005.
	self assert: correction value = 0