*-----------------------------------------------------------
* Title      : Homework Set #1, Q4.3
* Written by : Dwina Solihin
* Date       : April 10, 2017
* Description: A program to add two hexadecimal numbers. 
*-----------------------------------------------------------

*-- Beginning of EQUates section (similar to #define in C)--
*-----------------------------------------------------------
addr1           EQU     $5000

*inputs are in hexadecimal format
data1           EQU     $FF9A           *hexadecimal of -102
data2           EQU     $FFA9           *hexadecimal of -87

*Beginning of code segment. This is the assembly language instructions.
*-----------------------------------------------------------
                ORG     $1000
    
START:          MOVE.L  #data1,D2
                MOVE.L  #data2,D3

                MOVEA.W #addr1,A0

                ADD.L   D2,D3           *adding hex value in D2 to D3 (D3 will contain sum)
                MOVE    D3,Result       *D3 will hold the sum of D3 (FF9A + FFA9)
            
                MOVE.L  D3,(A0)+        *puts the result in memory address 5000

            
                MOVE    Result,D1       *Puts the results in R into data register D1
                EXT.L   D1              *Extends sign bit to preserve the sign
                CMP     #1,D1
                
                MOVE    #3,D0           *Assigns task number to D0
                TRAP    #15             *Computer will perform the task              


                SIMHALT                 ; halt simulator
*-----------------------------------------------------------

*Below is the assembly language to output the decimal result
*-----------------------------------------------------------
Result          DS.W    1   int Result; *prints out the data saved in results in decimal format
Overflow_msg    DS.W    1   "Overflow has occurred!"  

                END    START        ; last line of source






*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
