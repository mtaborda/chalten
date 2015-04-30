test enumerating
testPrevious

	| day |

	day := Nisan first, 5767.
	self assert: day previous = (Adar twentyninth, 5767).

	day := Sivan first, 5767.
	self assert: day previous = (Iyyar twentyninth, 5767)