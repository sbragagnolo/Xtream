private
streamingWrite: anInteger from: aReadStream
	| count |
	count := 0.
	[[count < anInteger and: [substreamAtEnd not]] whileTrue:
		[count := count + (self gobble: aReadStream get)]]
			on: Incomplete do: [:incomplete |
				destinationAtEnd := substreamAtEnd := true.
				(Incomplete count: count) raise].
	count < anInteger ifTrue:
		[substreamAtEnd := true.
		(Incomplete count: count) raise].
	^anInteger