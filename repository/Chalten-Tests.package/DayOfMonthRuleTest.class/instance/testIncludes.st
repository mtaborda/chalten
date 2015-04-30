test
testIncludes

	| rule includedDate |

	includedDate := January first, 2006.
	rule := DayOfMonthRule dayOfMonth: January first.
	self
		assert: (rule includes: includedDate);
		deny: (rule includes: includedDate next)