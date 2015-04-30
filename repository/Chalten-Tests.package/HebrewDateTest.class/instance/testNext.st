test enumerating
testNext

	| date |

	date := Nisan first, 5767.
	self assert: date next = (Nisan second, 5767).
	
	date := Iyyar twentyeighth, 5767.
	self assert: date next = (Iyyar twentyninth, 5767).
	self assert: date next next = (Sivan first, 5767).
	
	date := Elul twentyninth, 5767.
	self assert: date next = (Tishri first, 5768)