#!/bin/bash -x
echo "Welcome to snake and ladder simulator"
#CONSTANT VARIABLE
#PLAYER1 STARTING POSITION
PLAYER1=0
#GENERATING RANDOM VALUE 1 TO 6
dice=$((RANDOM%6+1))
START_POSITION=0
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
		#PLAYUER MOVES BEHIND
		PLAYER1=$(($PLAYER-$dice))
		echo "Player move behind in position: $PLAYER1"
		;;
esac
