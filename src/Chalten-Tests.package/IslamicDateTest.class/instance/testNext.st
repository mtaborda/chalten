test enumerating
testNext

	| date |

	date := Muharram first, 1428.
	self assert: date next = (Muharram second, 1428).
	
	date := Safar twentyeighth, 1428.
	self assert: date next = (Safar twentyninth, 1428).
	self assert: date next next = (RabiI first, 1428).
	
	date := DhuAlHijja thirtieth, 1428.
	self assert: date next = (Muharram first, 1429)