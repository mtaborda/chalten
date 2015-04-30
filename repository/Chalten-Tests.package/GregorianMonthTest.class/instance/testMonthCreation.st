test creation
testMonthCreation

	| otherJanuary otherFebruary otheMarch otherApril otherMay otherJune otherJuly otherAugust
	  otherSeptember ohterOctober otherNovember otherDecember |

	otherJanuary := calendar createJanuary.
	otherFebruary := calendar createFebruary.
	otheMarch := calendar createMarch.
	otherApril := calendar createApril.
	otherMay := calendar createMay.
	otherJune := calendar createJune.
	otherJuly := calendar createJuly.
	otherAugust := calendar createAugust.
	otherSeptember := calendar createSeptember.
	ohterOctober := calendar createOctober.
	otherNovember := calendar createNovember.
	otherDecember := calendar createDecember.

	self assert: january name = otherJanuary name.
	self assert: january number = otherJanuary number.
	self assert: february name = otherFebruary name.
	self assert: february number = otherFebruary number.
	self assert: march name = otheMarch name.
	self assert: march number = otheMarch number.
	self assert: april name = otherApril name.
	self assert: april number = otherApril number.
	self assert: may name = otherMay name.
	self assert: may number = otherMay number.
	self assert: june name = otherJune name.
	self assert: june number = otherJune number.
	self assert: july name = otherJuly name.
	self assert: july number = otherJuly number.
	self assert: august name = otherAugust name.
	self assert: august number = otherAugust number.
	self assert: september name = otherSeptember name.
	self assert: september number = otherSeptember number.
	self assert: october name = ohterOctober name.
	self assert: october number = ohterOctober number.
	self assert: november name = otherNovember name.
	self assert: november number = otherNovember number.
	self assert: december name = otherDecember name.
	self assert: december number = otherDecember number