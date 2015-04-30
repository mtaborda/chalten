test
testIncludes

	| rule includedDate |

	includedDate := January first, 2006.
	rule := MonthOfYearRule monthOfYear: January, 2006.
	self
		assert: (rule includes: includedDate);
		assert: (rule includes: includedDate next);
		deny: (rule includes: (includedDate next: 1 monthMeasure));
		deny: (rule includes: (includedDate next: 1 yearMeasure))