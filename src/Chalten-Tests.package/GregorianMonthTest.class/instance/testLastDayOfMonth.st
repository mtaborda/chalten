test accessing
testLastDayOfMonth

	self assert: january lastDayOfMonth = January thirtyfirst.
	self assert: february lastDayOfMonth = February twentyninth.
	self assert: march lastDayOfMonth = March thirtyfirst.
	self assert: april lastDayOfMonth = April thirtieth.
	self assert: may lastDayOfMonth = May thirtyfirst.
	self assert: june lastDayOfMonth = June thirtieth.
	self assert: july lastDayOfMonth = July thirtyfirst.
	self assert: august lastDayOfMonth = August thirtyfirst.
	self assert: september lastDayOfMonth = September thirtieth.
	self assert: october lastDayOfMonth = October thirtyfirst.
	self assert: november lastDayOfMonth = November thirtieth.
	self assert: december lastDayOfMonth = December thirtyfirst