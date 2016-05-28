initialize - release
initializeRepositories

	repositories := Dictionary new.
	repositories at: #pharo40 put: Dictionary new.
	(repositories at: #pharo40)
		at: #aconcagua put: #'github://mtaborda/aconcagua:v4.1.0/repository';
		at: #chalten put: #'github://mtaborda/chalten:v4.1.0/repository'.
	repositories at: #pharo50 put: Dictionary new.
	(repositories at: #pharo50)
		at: #aconcagua put: #'github://mtaborda/aconcagua:v5.0.0/repository';
		at: #chalten put: #'github://mtaborda/chalten:v5.0.0/repository'