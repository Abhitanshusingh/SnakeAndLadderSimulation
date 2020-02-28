#!/bin/bash -x
echo "Welcome to snake and ladder simulator"
#PLAYER1 STARTING POSITION
player1=0
countDice=0
while(($player1<100))
do
	#PREVIOUS POSITION
	previous_position=$player1
	#GENERATING RANDOM VALUE 1 TO 6
	dice=$((RANDOM%6+1))
	countDice=$(($countDice+1))
	#GENERATING RANDOM VALUE TO CHECK
	checkOption=$((RANDOM%3+1))
	case $checkOption in
		1)
			#NO PLAYER
			player1=$player1
			echo "Dice position after role : $dice"
			echo "Player in same position: $player1"
			;;
		2)
			#PLAYER MOVES AHEAD
			player1=$(($player1+$dice))
			if(($player1>100))
			then
				player1=$previous_position
			fi
			echo "Dice position after role : $dice"
			echo "Player move ahead  in position: $player1"
			;;
		3)
			#PLAYER MOVES BEHIND
			player1=$(($player1-$dice))
			echo "Dice position after role : $dice"
			echo "Player move behind in position: $player1"
			#WHEN PLAYER IS LESS THEN 0
			if(($player1<0))
			then
				player1=0
			fi
			;;

	esac

done
echo "Number of time the dice was played $countDice"
