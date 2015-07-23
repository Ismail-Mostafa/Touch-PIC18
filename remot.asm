
_config:

;remot.c,8 :: 		void config()
;remot.c,10 :: 		trisb5_bit=0;
	BCF         TRISB5_bit+0, 5 
;remot.c,11 :: 		trisb6_bit=0;
	BCF         TRISB6_bit+0, 6 
;remot.c,12 :: 		trisc0_bit=0;
	BCF         TRISC0_bit+0, 0 
;remot.c,13 :: 		trisc1_bit=0;
	BCF         TRISC1_bit+0, 1 
;remot.c,14 :: 		trisb7_bit=0;
	BCF         TRISB7_bit+0, 7 
;remot.c,15 :: 		trisa4_bit=0;
	BCF         TRISA4_bit+0, 4 
;remot.c,16 :: 		en1=0;
	BCF         RB5_bit+0, 5 
;remot.c,17 :: 		en2=0;
	BCF         RB6_bit+0, 6 
;remot.c,18 :: 		l1=0;
	BCF         RC0_bit+0, 0 
;remot.c,19 :: 		l2=0;
	BCF         RC1_bit+0, 1 
;remot.c,20 :: 		l3=0;
	BCF         RB7_bit+0, 7 
;remot.c,21 :: 		l4=0;
	BCF         RA4_bit+0, 4 
;remot.c,22 :: 		}
L_end_config:
	RETURN      0
; end of _config

_flash:

;remot.c,23 :: 		void flash()
;remot.c,25 :: 		en1=0;
	BCF         RB5_bit+0, 5 
;remot.c,26 :: 		en2=1;
	BSF         RB6_bit+0, 6 
;remot.c,27 :: 		l1=1;
	BSF         RC0_bit+0, 0 
;remot.c,28 :: 		l2=0;
	BCF         RC1_bit+0, 1 
;remot.c,29 :: 		l3=0;
	BCF         RB7_bit+0, 7 
;remot.c,30 :: 		l4=0;
	BCF         RA4_bit+0, 4 
;remot.c,31 :: 		delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_flash0:
	DECFSZ      R13, 1, 1
	BRA         L_flash0
	DECFSZ      R12, 1, 1
	BRA         L_flash0
	DECFSZ      R11, 1, 1
	BRA         L_flash0
	NOP
	NOP
;remot.c,32 :: 		l1=0;
	BCF         RC0_bit+0, 0 
;remot.c,33 :: 		l2=1;
	BSF         RC1_bit+0, 1 
;remot.c,34 :: 		l3=0;
	BCF         RB7_bit+0, 7 
;remot.c,35 :: 		l4=0;
	BCF         RA4_bit+0, 4 
;remot.c,36 :: 		delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_flash1:
	DECFSZ      R13, 1, 1
	BRA         L_flash1
	DECFSZ      R12, 1, 1
	BRA         L_flash1
	DECFSZ      R11, 1, 1
	BRA         L_flash1
	NOP
	NOP
;remot.c,37 :: 		l1=0;
	BCF         RC0_bit+0, 0 
;remot.c,38 :: 		l2=0;
	BCF         RC1_bit+0, 1 
;remot.c,39 :: 		l3=1;
	BSF         RB7_bit+0, 7 
;remot.c,40 :: 		l4=0;
	BCF         RA4_bit+0, 4 
;remot.c,41 :: 		delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_flash2:
	DECFSZ      R13, 1, 1
	BRA         L_flash2
	DECFSZ      R12, 1, 1
	BRA         L_flash2
	DECFSZ      R11, 1, 1
	BRA         L_flash2
	NOP
	NOP
;remot.c,42 :: 		l1=0;
	BCF         RC0_bit+0, 0 
;remot.c,43 :: 		l2=0;
	BCF         RC1_bit+0, 1 
;remot.c,44 :: 		l3=0;
	BCF         RB7_bit+0, 7 
;remot.c,45 :: 		l4=1;
	BSF         RA4_bit+0, 4 
;remot.c,46 :: 		delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_flash3:
	DECFSZ      R13, 1, 1
	BRA         L_flash3
	DECFSZ      R12, 1, 1
	BRA         L_flash3
	DECFSZ      R11, 1, 1
	BRA         L_flash3
	NOP
	NOP
;remot.c,47 :: 		en2=0;
	BCF         RB6_bit+0, 6 
;remot.c,48 :: 		en1=1;
	BSF         RB5_bit+0, 5 
;remot.c,49 :: 		l1=1;
	BSF         RC0_bit+0, 0 
;remot.c,50 :: 		l2=0;
	BCF         RC1_bit+0, 1 
;remot.c,51 :: 		l3=0;
	BCF         RB7_bit+0, 7 
;remot.c,52 :: 		l4=0;
	BCF         RA4_bit+0, 4 
;remot.c,53 :: 		delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_flash4:
	DECFSZ      R13, 1, 1
	BRA         L_flash4
	DECFSZ      R12, 1, 1
	BRA         L_flash4
	DECFSZ      R11, 1, 1
	BRA         L_flash4
	NOP
	NOP
;remot.c,54 :: 		l1=0;
	BCF         RC0_bit+0, 0 
;remot.c,55 :: 		l2=1;
	BSF         RC1_bit+0, 1 
;remot.c,56 :: 		l3=0;
	BCF         RB7_bit+0, 7 
;remot.c,57 :: 		l4=0;
	BCF         RA4_bit+0, 4 
;remot.c,58 :: 		delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_flash5:
	DECFSZ      R13, 1, 1
	BRA         L_flash5
	DECFSZ      R12, 1, 1
	BRA         L_flash5
	DECFSZ      R11, 1, 1
	BRA         L_flash5
	NOP
	NOP
;remot.c,59 :: 		l1=0;
	BCF         RC0_bit+0, 0 
;remot.c,60 :: 		l2=0;
	BCF         RC1_bit+0, 1 
;remot.c,61 :: 		l3=1;
	BSF         RB7_bit+0, 7 
;remot.c,62 :: 		l4=0;
	BCF         RA4_bit+0, 4 
;remot.c,63 :: 		delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_flash6:
	DECFSZ      R13, 1, 1
	BRA         L_flash6
	DECFSZ      R12, 1, 1
	BRA         L_flash6
	DECFSZ      R11, 1, 1
	BRA         L_flash6
	NOP
	NOP
;remot.c,64 :: 		l1=0;
	BCF         RC0_bit+0, 0 
;remot.c,65 :: 		l2=0;
	BCF         RC1_bit+0, 1 
;remot.c,66 :: 		l3=0;
	BCF         RB7_bit+0, 7 
;remot.c,67 :: 		l4=1;
	BSF         RA4_bit+0, 4 
;remot.c,68 :: 		delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_flash7:
	DECFSZ      R13, 1, 1
	BRA         L_flash7
	DECFSZ      R12, 1, 1
	BRA         L_flash7
	DECFSZ      R11, 1, 1
	BRA         L_flash7
	NOP
	NOP
;remot.c,69 :: 		}
L_end_flash:
	RETURN      0
; end of _flash

_touch:

;remot.c,71 :: 		unsigned int touch(char pin)
;remot.c,77 :: 		av=0;
	CLRF        touch_av_L0+0 
	CLRF        touch_av_L0+1 
;remot.c,78 :: 		count=0;
	CLRF        touch_count_L0+0 
	CLRF        touch_count_L0+1 
;remot.c,79 :: 		while(count<25)
L_touch8:
	MOVLW       128
	XORWF       touch_count_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__touch40
	MOVLW       25
	SUBWF       touch_count_L0+0, 0 
L__touch40:
	BTFSC       STATUS+0, 0 
	GOTO        L_touch9
;remot.c,81 :: 		adc_read(11);
	MOVLW       11
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
;remot.c,82 :: 		delay_ms(3);
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       228
	MOVWF       R13, 0
L_touch10:
	DECFSZ      R13, 1, 1
	BRA         L_touch10
	DECFSZ      R12, 1, 1
	BRA         L_touch10
	NOP
;remot.c,83 :: 		x[i]=adc_read(pin);
	MOVF        touch_i_L0+0, 0 
	MOVWF       R0 
	MOVF        touch_i_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       touch_x_L0+0
	ADDWF       R0, 0 
	MOVWF       FLOC__touch+0 
	MOVLW       hi_addr(touch_x_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FLOC__touch+1 
	MOVF        FARG_touch_pin+0, 0 
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVFF       FLOC__touch+0, FSR1
	MOVFF       FLOC__touch+1, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	MOVF        R1, 0 
	MOVWF       POSTINC1+0 
;remot.c,84 :: 		if(x[i]>10&&x[i]<900)
	MOVF        touch_i_L0+0, 0 
	MOVWF       R0 
	MOVF        touch_i_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       touch_x_L0+0
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVLW       hi_addr(touch_x_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__touch41
	MOVF        R1, 0 
	SUBLW       10
L__touch41:
	BTFSC       STATUS+0, 0 
	GOTO        L_touch13
	MOVF        touch_i_L0+0, 0 
	MOVWF       R0 
	MOVF        touch_i_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       touch_x_L0+0
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVLW       hi_addr(touch_x_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVLW       3
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__touch42
	MOVLW       132
	SUBWF       R1, 0 
L__touch42:
	BTFSC       STATUS+0, 0 
	GOTO        L_touch13
L__touch36:
;remot.c,86 :: 		av=x[i]+av;
	MOVF        touch_i_L0+0, 0 
	MOVWF       R0 
	MOVF        touch_i_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       touch_x_L0+0
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVLW       hi_addr(touch_x_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	ADDWF       touch_av_L0+0, 1 
	MOVF        POSTINC0+0, 0 
	ADDWFC      touch_av_L0+1, 1 
;remot.c,87 :: 		count++;
	INFSNZ      touch_count_L0+0, 1 
	INCF        touch_count_L0+1, 1 
;remot.c,88 :: 		}
L_touch13:
;remot.c,89 :: 		}
	GOTO        L_touch8
L_touch9:
;remot.c,90 :: 		av=av/25;
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        touch_av_L0+0, 0 
	MOVWF       R0 
	MOVF        touch_av_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_U+0, 0
	MOVF        R0, 0 
	MOVWF       touch_av_L0+0 
	MOVF        R1, 0 
	MOVWF       touch_av_L0+1 
;remot.c,91 :: 		return av;
;remot.c,92 :: 		}
L_end_touch:
	RETURN      0
; end of _touch

_get_touch:

;remot.c,94 :: 		char get_touch(unsigned int calepration[])
;remot.c,98 :: 		int max_v=0;
	CLRF        get_touch_max_v_L0+0 
	CLRF        get_touch_max_v_L0+1 
	MOVLW       0
	MOVWF       get_touch_min_v_L0+0 
	MOVLW       4
	MOVWF       get_touch_min_v_L0+1 
	CLRF        get_touch_min_n_L0+0 
;remot.c,102 :: 		calpin[0]=touch(0);
	CLRF        FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       get_touch_calpin_L0+0 
	MOVF        R1, 0 
	MOVWF       get_touch_calpin_L0+1 
;remot.c,103 :: 		calpin[1]=touch(1);
	MOVLW       1
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       get_touch_calpin_L0+2 
	MOVF        R1, 0 
	MOVWF       get_touch_calpin_L0+3 
;remot.c,104 :: 		calpin[2]=touch(2);
	MOVLW       2
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       get_touch_calpin_L0+4 
	MOVF        R1, 0 
	MOVWF       get_touch_calpin_L0+5 
;remot.c,105 :: 		calpin[3]=touch(3);
	MOVLW       3
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       get_touch_calpin_L0+6 
	MOVF        R1, 0 
	MOVWF       get_touch_calpin_L0+7 
;remot.c,106 :: 		calpin[4]=touch(8);
	MOVLW       8
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       get_touch_calpin_L0+8 
	MOVF        R1, 0 
	MOVWF       get_touch_calpin_L0+9 
;remot.c,107 :: 		calpin[5]=touch(9);
	MOVLW       9
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       get_touch_calpin_L0+10 
	MOVF        R1, 0 
	MOVWF       get_touch_calpin_L0+11 
;remot.c,108 :: 		calpin[6]=touch(10);
	MOVLW       10
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       get_touch_calpin_L0+12 
	MOVF        R1, 0 
	MOVWF       get_touch_calpin_L0+13 
;remot.c,109 :: 		calpin[7]=touch(12);
	MOVLW       12
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       get_touch_calpin_L0+14 
	MOVF        R1, 0 
	MOVWF       get_touch_calpin_L0+15 
;remot.c,110 :: 		for(i=0;i<8;i++)
	CLRF        get_touch_i_L0+0 
L_get_touch14:
	MOVLW       8
	SUBWF       get_touch_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_get_touch15
;remot.c,112 :: 		if(calpin[i]>max_v)
	MOVF        get_touch_i_L0+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       get_touch_calpin_L0+0
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVLW       hi_addr(get_touch_calpin_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       get_touch_max_v_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_touch44
	MOVF        R1, 0 
	SUBWF       get_touch_max_v_L0+0, 0 
L__get_touch44:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_touch17
;remot.c,113 :: 		max_v=calpin[i];
	MOVF        get_touch_i_L0+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       get_touch_calpin_L0+0
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVLW       hi_addr(get_touch_calpin_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       get_touch_max_v_L0+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       get_touch_max_v_L0+1 
L_get_touch17:
;remot.c,110 :: 		for(i=0;i<8;i++)
	INCF        get_touch_i_L0+0, 1 
;remot.c,114 :: 		}
	GOTO        L_get_touch14
L_get_touch15:
;remot.c,115 :: 		for(i=0;i<8;i++)
	CLRF        get_touch_i_L0+0 
L_get_touch18:
	MOVLW       8
	SUBWF       get_touch_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_get_touch19
;remot.c,117 :: 		if(calpin[i]<min_v)
	MOVF        get_touch_i_L0+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       get_touch_calpin_L0+0
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVLW       hi_addr(get_touch_calpin_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       R2, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       get_touch_min_v_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_touch45
	MOVF        get_touch_min_v_L0+0, 0 
	SUBWF       R1, 0 
L__get_touch45:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_touch21
;remot.c,119 :: 		min_v=calpin[i];
	MOVF        get_touch_i_L0+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       get_touch_calpin_L0+0
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVLW       hi_addr(get_touch_calpin_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       get_touch_min_v_L0+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       get_touch_min_v_L0+1 
;remot.c,120 :: 		min_n=i;
	MOVF        get_touch_i_L0+0, 0 
	MOVWF       get_touch_min_n_L0+0 
;remot.c,121 :: 		}
L_get_touch21:
;remot.c,115 :: 		for(i=0;i<8;i++)
	INCF        get_touch_i_L0+0, 1 
;remot.c,122 :: 		}
	GOTO        L_get_touch18
L_get_touch19:
;remot.c,123 :: 		test1=max_v-min_v;
	MOVF        get_touch_min_v_L0+0, 0 
	SUBWF       get_touch_max_v_L0+0, 0 
	MOVWF       get_touch_test1_L0+0 
	MOVF        get_touch_min_v_L0+1, 0 
	SUBWFB      get_touch_max_v_L0+1, 0 
	MOVWF       get_touch_test1_L0+1 
;remot.c,124 :: 		test2=calepration[min_n]-min_v;
	MOVF        get_touch_min_n_L0+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_get_touch_calepration+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_get_touch_calepration+1, 0 
	MOVWF       FSR0H 
	MOVF        get_touch_min_v_L0+0, 0 
	SUBWF       POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        get_touch_min_v_L0+1, 0 
	SUBWFB      POSTINC0+0, 0 
	MOVWF       R2 
;remot.c,125 :: 		if(test1=70&&test2>70)
	MOVLW       0
	MOVWF       R0 
	MOVF        R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_touch46
	MOVF        R1, 0 
	SUBLW       70
L__get_touch46:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_touch23
	MOVLW       1
	MOVWF       R0 
	GOTO        L_get_touch22
L_get_touch23:
	CLRF        R0 
L_get_touch22:
	MOVF        R0, 0 
	MOVWF       get_touch_test1_L0+0 
	MOVLW       0
	MOVWF       get_touch_test1_L0+1 
	MOVF        get_touch_test1_L0+0, 0 
	IORWF       get_touch_test1_L0+1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_get_touch24
;remot.c,127 :: 		return min_n;
	MOVF        get_touch_min_n_L0+0, 0 
	MOVWF       R0 
	GOTO        L_end_get_touch
;remot.c,128 :: 		}
L_get_touch24:
;remot.c,130 :: 		return 55;
	MOVLW       55
	MOVWF       R0 
;remot.c,131 :: 		}
L_end_get_touch:
	RETURN      0
; end of _get_touch

_led:

;remot.c,133 :: 		void led(char pin)
;remot.c,135 :: 		if(pin==0)
	MOVF        FARG_led_pin+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_led26
;remot.c,137 :: 		en1=1;
	BSF         RB5_bit+0, 5 
;remot.c,138 :: 		en2=0;
	BCF         RB6_bit+0, 6 
;remot.c,139 :: 		l1=0;
	BCF         RC0_bit+0, 0 
;remot.c,140 :: 		l2=0;
	BCF         RC1_bit+0, 1 
;remot.c,141 :: 		l3=1;
	BSF         RB7_bit+0, 7 
;remot.c,142 :: 		l4=0;
	BCF         RA4_bit+0, 4 
;remot.c,143 :: 		delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_led27:
	DECFSZ      R13, 1, 1
	BRA         L_led27
	DECFSZ      R12, 1, 1
	BRA         L_led27
	DECFSZ      R11, 1, 1
	BRA         L_led27
	NOP
	NOP
;remot.c,144 :: 		en1=1;
	BSF         RB5_bit+0, 5 
;remot.c,145 :: 		en2=1;
	BSF         RB6_bit+0, 6 
;remot.c,146 :: 		}
L_led26:
;remot.c,147 :: 		if(pin==1)
	MOVF        FARG_led_pin+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_led28
;remot.c,149 :: 		en1=0;
	BCF         RB5_bit+0, 5 
;remot.c,150 :: 		en2=1;
	BSF         RB6_bit+0, 6 
;remot.c,151 :: 		l1=0;
	BCF         RC0_bit+0, 0 
;remot.c,152 :: 		l2=0;
	BCF         RC1_bit+0, 1 
;remot.c,153 :: 		l3=1;
	BSF         RB7_bit+0, 7 
;remot.c,154 :: 		l4=0;
	BCF         RA4_bit+0, 4 
;remot.c,155 :: 		delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_led29:
	DECFSZ      R13, 1, 1
	BRA         L_led29
	DECFSZ      R12, 1, 1
	BRA         L_led29
	DECFSZ      R11, 1, 1
	BRA         L_led29
	NOP
	NOP
;remot.c,156 :: 		en1=1;
	BSF         RB5_bit+0, 5 
;remot.c,157 :: 		en2=1;
	BSF         RB6_bit+0, 6 
;remot.c,158 :: 		}
L_led28:
;remot.c,159 :: 		if(pin==2)
	MOVF        FARG_led_pin+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_led30
;remot.c,161 :: 		en1=1;
	BSF         RB5_bit+0, 5 
;remot.c,162 :: 		en2=0;
	BCF         RB6_bit+0, 6 
;remot.c,163 :: 		l1=0;
	BCF         RC0_bit+0, 0 
;remot.c,164 :: 		l2=0;
	BCF         RC1_bit+0, 1 
;remot.c,165 :: 		l3=0;
	BCF         RB7_bit+0, 7 
;remot.c,166 :: 		l4=1;
	BSF         RA4_bit+0, 4 
;remot.c,167 :: 		delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_led31:
	DECFSZ      R13, 1, 1
	BRA         L_led31
	DECFSZ      R12, 1, 1
	BRA         L_led31
	DECFSZ      R11, 1, 1
	BRA         L_led31
	NOP
	NOP
;remot.c,168 :: 		en1=1;
	BSF         RB5_bit+0, 5 
;remot.c,169 :: 		en2=1;
	BSF         RB6_bit+0, 6 
;remot.c,170 :: 		}
L_led30:
;remot.c,171 :: 		if(pin==3)
	MOVF        FARG_led_pin+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_led32
;remot.c,173 :: 		en1=0;
	BCF         RB5_bit+0, 5 
;remot.c,174 :: 		en2=1;
	BSF         RB6_bit+0, 6 
;remot.c,175 :: 		l1=0;
	BCF         RC0_bit+0, 0 
;remot.c,176 :: 		l2=0;
	BCF         RC1_bit+0, 1 
;remot.c,177 :: 		l3=0;
	BCF         RB7_bit+0, 7 
;remot.c,178 :: 		l4=1;
	BSF         RA4_bit+0, 4 
;remot.c,179 :: 		delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_led33:
	DECFSZ      R13, 1, 1
	BRA         L_led33
	DECFSZ      R12, 1, 1
	BRA         L_led33
	DECFSZ      R11, 1, 1
	BRA         L_led33
	NOP
	NOP
;remot.c,180 :: 		en1=1;
	BSF         RB5_bit+0, 5 
;remot.c,181 :: 		en2=1;
	BSF         RB6_bit+0, 6 
;remot.c,182 :: 		}
L_led32:
;remot.c,188 :: 		}
L_end_led:
	RETURN      0
; end of _led

_main:

;remot.c,195 :: 		void main() {
;remot.c,196 :: 		unsigned int x=0;
;remot.c,200 :: 		config();
	CALL        _config+0, 0
;remot.c,201 :: 		flash();
	CALL        _flash+0, 0
;remot.c,202 :: 		uart1_init(9600);
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       103
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;remot.c,203 :: 		uart1_write_text("hello");
	MOVLW       ?lstr1_remot+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr1_remot+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;remot.c,204 :: 		clpin[0]=touch(0);
	CLRF        FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       main_clpin_L0+0 
	MOVF        R1, 0 
	MOVWF       main_clpin_L0+1 
;remot.c,205 :: 		clpin[1]=touch(1);
	MOVLW       1
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       main_clpin_L0+2 
	MOVF        R1, 0 
	MOVWF       main_clpin_L0+3 
;remot.c,206 :: 		clpin[2]=touch(2);
	MOVLW       2
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       main_clpin_L0+4 
	MOVF        R1, 0 
	MOVWF       main_clpin_L0+5 
;remot.c,207 :: 		clpin[3]=touch(3);
	MOVLW       3
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       main_clpin_L0+6 
	MOVF        R1, 0 
	MOVWF       main_clpin_L0+7 
;remot.c,208 :: 		clpin[4]=touch(8);
	MOVLW       8
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       main_clpin_L0+8 
	MOVF        R1, 0 
	MOVWF       main_clpin_L0+9 
;remot.c,209 :: 		clpin[5]=touch(9);
	MOVLW       9
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       main_clpin_L0+10 
	MOVF        R1, 0 
	MOVWF       main_clpin_L0+11 
;remot.c,210 :: 		clpin[6]=touch(10);
	MOVLW       10
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       main_clpin_L0+12 
	MOVF        R1, 0 
	MOVWF       main_clpin_L0+13 
;remot.c,211 :: 		clpin[7]=touch(12);
	MOVLW       12
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
	MOVF        R0, 0 
	MOVWF       main_clpin_L0+14 
	MOVF        R1, 0 
	MOVWF       main_clpin_L0+15 
;remot.c,212 :: 		while(1)
L_main34:
;remot.c,215 :: 		uart1_write_text("pin=");
	MOVLW       ?lstr2_remot+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr2_remot+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;remot.c,216 :: 		x=touch(2);
	MOVLW       2
	MOVWF       FARG_touch_pin+0 
	CALL        _touch+0, 0
;remot.c,217 :: 		inttostr(x,txt);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       main_txt_L0+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(main_txt_L0+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;remot.c,218 :: 		uart1_write_text(txt);
	MOVLW       main_txt_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(main_txt_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;remot.c,219 :: 		uart1_write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;remot.c,220 :: 		uart1_write_text("pin=");
	MOVLW       ?lstr3_remot+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr3_remot+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;remot.c,221 :: 		pins=get_touch(clpin);
	MOVLW       main_clpin_L0+0
	MOVWF       FARG_get_touch_calepration+0 
	MOVLW       hi_addr(main_clpin_L0+0)
	MOVWF       FARG_get_touch_calepration+1 
	CALL        _get_touch+0, 0
	MOVF        R0, 0 
	MOVWF       main_pins_L0+0 
;remot.c,222 :: 		inttostr(pins,txt);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       main_txt_L0+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(main_txt_L0+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;remot.c,223 :: 		uart1_write_text(txt);
	MOVLW       main_txt_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(main_txt_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;remot.c,224 :: 		uart1_write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;remot.c,226 :: 		led(pins);
	MOVF        main_pins_L0+0, 0 
	MOVWF       FARG_led_pin+0 
	CALL        _led+0, 0
;remot.c,229 :: 		}
	GOTO        L_main34
;remot.c,234 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
