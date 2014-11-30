test creation
testDayCreation

	| otherYomRishon otherYomSheni otherYomShelishi otherYomRevii otherYomHamishi otherYomShishi otherYomShabbat |

	otherYomRishon := calendar createYomRishon.
	otherYomSheni := calendar createYomSheni.
	otherYomShelishi := calendar createYomShelishi.
	otherYomRevii := calendar createYomRevii.
	otherYomHamishi := calendar createYomHamishi.
	otherYomShishi := calendar createYomShishi.
	otherYomShabbat := calendar createYomShabbat.

	self assert: otherYomRishon name = yomRishon name.
	self assert: otherYomRishon positionInWeek = yomRishon positionInWeek.
	self assert: otherYomSheni name = yomSheni name.
	self assert: otherYomSheni positionInWeek = yomSheni positionInWeek.
	self assert: otherYomShelishi name = yomShelishi name.
	self assert: otherYomShelishi positionInWeek = yomShelishi positionInWeek.
	self assert: otherYomRevii name = yomRevii name.
	self assert: otherYomRevii positionInWeek = yomRevii positionInWeek.
	self assert: otherYomHamishi name = yomHamishi name.
	self assert: otherYomHamishi positionInWeek = yomHamishi positionInWeek.
	self assert: otherYomShishi name = yomShishi name.
	self assert: otherYomShishi positionInWeek = yomShishi positionInWeek.
	self assert: otherYomShabbat name = yomShabbat name.
	self assert: otherYomShabbat positionInWeek = yomShabbat positionInWeek