test days accessing
testYesterday

	| today |

	today := calendar today.
	self assert: calendar yesterday = today previous