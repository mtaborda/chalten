test querying
testIsLeap
	self assert: 3 asHebrewYear isLeap.
	self assert: 6 asHebrewYear isLeap.
	self assert: 8 asHebrewYear isLeap.
	self assert: 11 asHebrewYear isLeap.
	self assert: 14 asHebrewYear isLeap.
	self assert: 17 asHebrewYear isLeap.
	self assert: 19 asHebrewYear isLeap.
	self assert: 22 asHebrewYear isLeap.
	self assert: 25 asHebrewYear isLeap.
	self assert: 27 asHebrewYear isLeap.
	self assert: 30 asHebrewYear isLeap.
	self assert: 5765 asHebrewYear isLeap.
	self assert: 5768 asHebrewYear isLeap.
	self deny: 1 asHebrewYear isLeap.
	self deny: 2 asHebrewYear isLeap.
	self deny: 4 asHebrewYear isLeap.
	self deny: 23 asHebrewYear isLeap.
	self deny: 5766 asHebrewYear isLeap.
	self deny: 5769 asHebrewYear isLeap