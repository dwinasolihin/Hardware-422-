*-----------------------------------------------------------
* Title      : Homework Set #1, Q3
* Written by : Dwina Solihin    
* Date       : April 10, 2017
* Description: Question 3 of Homework
*-----------------------------------------------------------

*-- Beginning of EQUates section (similar to #define in C)--
*-----------------------------------------------------------
addr1       EQU     $4000
addr2       EQU     $4001
data2       EQU     $A7FF
data3       EQU     $5555
data4       EQU     $0000
data5       EQU     4678
data6       EQU     %01001111
data7       EQU     %00010111

*------------------------------------------------------------

*Beginning of code segment. This is the assembly language instructions.
*-----------------------------------------------------------
            ORG     $400            *This psudo op code tells the assembler here
                                    *that the program will run in memory. 
       
start       MOVE.W      #data2,D0   *Load D0
            MOVE.B      #data6,D1   *Load D1
            MOVE.B      #data7,D2   *Load D2
            MOVE.W      #data3,D3   *Load D3
            
            MOVEA.W     #addr1,A0   *Load address register 
               
            MOVE.B      D1,(A0)+    *Transfer byte to memory
            MOVE.B      D2,(A0)+    *Transfer second byte to memory
            
            MOVEA.W     #addr1,A1   *Load address
            
            AND.W       D3,(A1)     *Logical AND
    
*-----------------------------------------------------------

*------ Next instruction shows how a label is used. --------
*-----------------------------------------------------------
            JMP         start       *This instruction keeps the program
                                    *looping forever. 

            END         $400        *This pseudo op-code tells tells the assembler 
                                    *where the program source code ends and 
                                    *where to load the program in memory.
*last line of source
*-----------------------------------------------------------






*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
