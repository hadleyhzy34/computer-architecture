(LOOP)
	@SCREEN
	D=A
	@i
	M=D

	@KBD
	D=M
	@BLACKEN
	D;JNE
	
	(WHITEN)
		@i
		A=M
		M=0
		@i
		M=M+1
		@i
		D=M
		@24575
		D=D-A
		@LOOP
		D;JGT
		@WHITEN
		D;JLE
	
	

	(BLACKEN)
		@i
		A=M
		M=-1
		@i
		M=M+1
		@i
		D=M
		@24575
		D=D-A
		@LOOP
		D;JGT
		@BLACKEN
		D;JLE