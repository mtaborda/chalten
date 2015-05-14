versions
version400: spec
	<version: '4.0.0'>
	
	spec for: #common do: [ 
		spec blessing: #release.
		spec description: '- Chalten final for 4.x images'.
		spec author: 'MaximilianoTaborda'.
		spec
			baseline: 'Chalten'
			with: [ spec repository: 'github://mtaborda/chalten:master/repository' ].
		spec import: 'Chalten'.
		spec postLoadDoIt: #postLoadInitialization ]