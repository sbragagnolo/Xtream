seeking
++ anInteger
	| skipped |
	anInteger < 0 ifTrue: [ ^self -- anInteger negated ].
	skipped := buffer readSkip: anInteger.
	skipped = anInteger ifTrue: [^anInteger].
	[super ++ (anInteger - skipped)] on: Incomplete do: [:incomplete |
		(Incomplete count: incomplete count + skipped) raise].
	^anInteger