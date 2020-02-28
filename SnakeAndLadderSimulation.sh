#!/bin/bash -x
echo "Welcome to snake and ladder simulator"
#CONSTANT VARIABLE
#PLAYER1 STARTING POSITION
PLAYER1=0
while(($PLAYER1<100))
do
	#GENERATING RANDOM VALUE 1 TO 6
	dice=$((RANDOM%6+1))
	#GENERATING RANDOM VALUE TO CHECK
	CheckOption=$((RANDOM%3+1))
	case $CheckOption in
		1)
			#NO PLAYER
			PLAYER1=$PLAYER1
			echo "Player in same position: $PLAYER1"
			;;

		2)
			#PLAYER MOVES AHEAD
			PLAYER1=$(($PLAYER1+$dice))
			echo "Player move ahead  in position: $PLAYER1"
			;;
		3)
			#PLAYER MOVES BEHIND
			PLAYER1=$(($PLAYER1-$dice))
			echo "Player move behind in position: $PLAYER1"
			#WHEN PLAYER IS LESS THEN 0
			if(($PLAYER1<0))
      	then
         	PLAYER1=0
			fi
			;;
	esac

done
