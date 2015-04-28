versions
version310: spec
	<version: '3.1.0' imports: #('3.1.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec description: '3.1.0 final'.
			spec author: 'MaximilianoTaborda'.
			spec
				package: 'Chalten-Core' with: 'Chalten-Core-MaximilianoTaborda.3.1.18';
				package: 'Chalten-Tests' with: 'Chalten-Tests-MaximilianoTaborda.3.1.15';
				postLoadDoIt: #postLoadInitialization ]