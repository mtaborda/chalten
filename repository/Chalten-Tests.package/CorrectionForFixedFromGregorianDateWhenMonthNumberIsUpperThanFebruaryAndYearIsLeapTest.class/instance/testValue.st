test
testValue

	| correction |

	correction := CorrectionForFixedFromDateBehavior for: March fifteenth, 2008.
	self assert: correction value = 1