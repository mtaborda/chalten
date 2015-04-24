test days accessing
testTomorrow

	| today |

	today := calendar today.
	self assert: calendar tomorrow = today next