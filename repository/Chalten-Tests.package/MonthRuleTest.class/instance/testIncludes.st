test
testIncludes

	| rule includedDate |

	includedDate := January first, 2006.
	rule := MonthRule month: January.
	self
		assert: (rule includes: includedDate);
		assert: (rule includes: includedDate next);
		deny: (rule includes: (includedDate next: 1 monthMeasure))