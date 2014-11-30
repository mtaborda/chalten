test
testValue

	| correction |

	correction := CorrectionForFixedFromDateBehavior for: January fifteenth, 2005.
	self assert: correction value = 0