#!/bin/bash

copies=0
prix=0

echo "quel est le nombres de copies ? "
read copies
echo $copies


if [ $copies -lt 10 ]
then
    echo "boucle1"
	let "prix=copies/10" | bc

elif [ $copies -gt 10 ] && [ $copies -lt 20 ];
then
    echo "boucle2"
    let "prix=copies*9/100" | bc

elif [ $copies -gt 20 ];
then
    echo "boucle3"
    let "prix=copies*8/100" | bc
fi

echo "le prix total est $prix "


