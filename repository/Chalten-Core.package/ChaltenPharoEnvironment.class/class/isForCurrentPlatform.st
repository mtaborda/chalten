testing
isForCurrentPlatform

	^(Smalltalk at: #SystemVersion) current type = 'Pharo'