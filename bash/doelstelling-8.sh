#! /bin/sh

echo "welkom bij je nieuwe profiel op BashBook"
echo "vul hier je naam in "
read naam

echo "vul hier je geboortejaar in "
read bday

echo "vul hier je woonplaats in "
read plaats

echo "dankjewel!"

echo "
    ::::::::::::$naam's profiel::::::::::::
   
   
    ~~~~~~~~~~~~~~~~
    $((2022 - bday)) jaar oud
    woonachtig in het prachtige $plaats
    ~~~~~~~~~~~~~~~~
" > ./profiles/"$naam".txt


echo "zie alle gebruikers: "

for filename in profiles/*; do 
   echo $(basename $filename .txt)
done

echo "::::::::::::::::::::::::::::::::::"


see=1

while [ "$see" -gt 0 ]; do
    echo "wiens profiel wil je bekijken? type de naam in"
    read input
    cat ./profiles/$input.txt

    echo "\n \n wil je nog een profiel zien? type ja of nee"
    read janee

    if [ "$janee" = "ja" ]; then
        continue
    fi

    if [ "$janee" = "nee" ]; then
        see=$(($see - 1))
    fi
done

    



