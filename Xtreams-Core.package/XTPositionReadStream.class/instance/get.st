accessing
get
	| object |
	buffer hasDataToRead ifTrue: [^buffer get].
	object := source get.
	buffer put: object.
	buffer readSkip: 1.
	^object