test interval protocol
testToByYearsDo

	| yearNumber |

	yearNumber := 5768.
	(Nisan, 5768 to: AdarII, 5774 by: twelveMonths) do: [:month |
		self assert: (month monthNumber = 1 or: [ month monthNumber = 12 or: [ month monthNumber = 13 ]]).
		self assert: month year number = yearNumber.
		yearNumber := yearNumber + 1].
	self assert: yearNumber = 5775