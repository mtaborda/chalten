test
testIncludes

	| rule includedDate |

	includedDate := January first, 2006.
	rule := DayRule day:  Sunday.
	self
		assert: (rule includes: includedDate);
		deny: (rule includes: includedDate next)