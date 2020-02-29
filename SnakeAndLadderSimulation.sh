#!/bin/bash -x
echo "Welcome to snake and ladder simulator"
player=0
countDice1=0
countDice2=0
dicePosition1=0
dicePosition2=0
function snakeAndLadder ()
{
	player=$1
	#PLAYER1 STARTING POSITION
	#PREVIOUS POSITION
	previousPosition=$player
	#GENERATING RANDOM VALUE 1 TO 6
	dice=$((RANDOM%6+1))
	countDice=$(($countDice+1))
	#GENERATING RANDOM VALUE TO CHECK IF 1 THEN SAME POSITION 2 THEN LADDER AND 3 THEN SNAKE
	checkOption=$((RANDOM%3+1))
	case $checkOption in
		1)
			#NO PLAYER
			player=$player
			;;
		2)
			#PLAYER MOVES AHEAD
			player=$(($player+$dice))
			if(($player>100))
			then
				player=$previousPosition
			fi
			;;
		3)
			#PLAYER MOVES BEHIND
			player=$(($player-$dice))
			#WHEN PLAYER IS LESS THEN 0
			if(($player<0))
			then
				player=0
			fi
			;;
	esac
	echo $player
}
printf "Enter 1 for single player\n"
printf "Enter 2 for double player\n"
read userInput
case $userInput in
	1)
		while(($dicePosition1<100))
		do
			dicePosition1="$(snakeAndLadder $dicePosition1)"            #CALLING FUNCTION
			countDice1=$(($countDice1+1))
			printf "Player $countDice1 : Position $dicePosition1\n"
		done
		printf "\t\t\t\t\t***Congratulations Player Won***\n"
		;;
	2)
		while(($dicePosition1 < 100 && $dicePosition2 < 100))
		do
		dicePosition1="$(snakeAndLadder $dicePosition1)"  				#CALLING FUNCTION
		countDice1=$(($countDice1+1))
		printf "Player1 $countDice1 : Position $dicePosition1\n"
		dicePosition2="$(snakeAndLadder $dicePosition2)"				#CALLING FUNCTION
		countDice2=$(($countDice2+1))
		printf "Player2 $countDice2 : Position $dicePosition2\n"
		done
		if(($dicePosition1==100))
		then
			printf "\t\t\t\t\t***Congratulations Player1 Won***\n"
			printf "\t\t\t\t\tPlayer1 roll the diece for $countDice1 times\n"
		else
			printf "\t\t\t\t\t***Congratulations Player2 Won***\n"
			printf "\t\t\t\\t\tPlayer2 roll the diece for $countDice2 times\n"
		fi
		;;
esac
