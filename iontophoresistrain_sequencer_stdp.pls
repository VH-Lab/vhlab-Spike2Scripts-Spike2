;iontophoresis.pls
			SET		0.1000 1 0     	;Run with 1 ms clock tics

			VAR    	V1 ; peak
			VAR    	V2 ; delay between pulses
			VAR     V3 ; pulse width
			VAR     V4 ; number of pulses

			DAC0	0
			DAC1	0

WTE:	'E  DAC0   	V1
            DELAY  	V3
            DAC0   	0
	    DELAY       150
	    DAC1	V1
            DELAY       V3
            DAC1        0
	    DELAY       V2
	    DBNZ	V4,WTE
	    HALT

WTI:	'I  DAC1   	V1
            DELAY  	V3
            DAC1   	0
			DELAY   V2
			DBNZ	V4,WTE
			HALT

