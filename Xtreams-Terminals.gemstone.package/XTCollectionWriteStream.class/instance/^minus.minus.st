seeking
-- anInteger
	| count |
	anInteger < 0 ifTrue: [ ^self ++ anInteger negated ].
	count := position min: anInteger.
	position := position - count.
	count = anInteger ifTrue: [^anInteger].
	(Incomplete count: count) raise