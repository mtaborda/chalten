versions
version311: spec
	<version: '3.1.1' imports: #('3.1.1-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec description: '3.1.1 final'.
			spec author: 'MaximilianoTaborda'.
			spec
				package: 'Chalten-Core' with: 'Chalten-Core-MaximilianoTaborda.3.1.18';
				package: 'Chalten-Tests' with: 'Chalten-Tests-MaximilianoTaborda.3.1.16';
				postLoadDoIt: #postLoadInitialization ]