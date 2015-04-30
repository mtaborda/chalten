test
testValue

	| correction |

	correction := CorrectionForFixedFromDateBehavior for: May fifteenth, 2005.
	self assert: correction value = 2