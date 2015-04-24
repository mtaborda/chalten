test enumerating
testPrevious

	| day |

	day := Muharram first, 1428.
	self assert: day previous = (DhuAlHijja twentyninth, 1427).

	day := RabiI first, 1428.
	self assert: day previous = (Safar twentyninth, 1428)