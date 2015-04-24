test
testIncludes

	| rule includedDate |

	includedDate := January first, 2006.
	rule := YearRule year: 2006 asGregorianYear.
	self
		assert: (rule includes: includedDate);
		assert: (rule includes: includedDate next);
		deny: (rule includes: (includedDate next: 1 yearMeasure))