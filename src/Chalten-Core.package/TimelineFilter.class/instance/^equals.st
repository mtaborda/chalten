comparing
= anObject

	^self == anObject or: [
		self class = anObject class and: [
			self name = anObject name
		]
	]