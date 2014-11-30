test days accessing
testToday

	| tomorrow yesterday |

	tomorrow := calendar tomorrow.
	yesterday := calendar yesterday.

	self assert: calendar today = yesterday next.
	self assert: calendar today = tomorrow previous