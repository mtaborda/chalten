test creation
testDayCreation

	| otherSunday otherMonday otherTuesday otherWednesday otherThursday otherFriday otherSaturday |

	otherSunday := calendar createSunday.
	otherMonday := calendar createMonday.
	otherTuesday := calendar createTuesday.
	otherWednesday := calendar createWednesday.
	otherThursday := calendar createThursday.
	otherFriday := calendar createFriday.
	otherSaturday := calendar createSaturday.

	self assert: otherSunday name = sunday name.
	self assert: otherSunday positionInWeek = sunday positionInWeek.
	self assert: otherMonday name = monday name.
	self assert: otherMonday positionInWeek = monday positionInWeek.
	self assert: otherThursday name = thursday name.
	self assert: otherThursday positionInWeek = thursday positionInWeek.
	self assert: otherWednesday name = wednesday name.
	self assert: otherWednesday positionInWeek = wednesday positionInWeek.
	self assert: otherTuesday name = tuesday name.
	self assert: otherTuesday positionInWeek = tuesday positionInWeek.
	self assert: otherFriday name = friday name.
	self assert: otherFriday positionInWeek = friday positionInWeek.
	self assert: otherSaturday name = saturday name.
	self assert: otherSaturday positionInWeek = saturday positionInWeek