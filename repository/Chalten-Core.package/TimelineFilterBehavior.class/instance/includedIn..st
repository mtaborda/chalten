querying - included
includedIn: anInterval

	^anInterval select: [:each | self includes: each]