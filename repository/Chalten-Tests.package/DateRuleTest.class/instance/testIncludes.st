test
testIncludes

	| rule includedDate |

	includedDate := January first, 2006.
	rule := DateRule date: includedDate.
	self
		assert: (rule includes: includedDate);
		deny: (rule includes: includedDate next)