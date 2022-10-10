#! /bin/sh

touch dingen.txt

echo "hoi vul maar iets in"
read iets
echo "je hebt $iets ingevuld, bedankt!"
echo "$iets" >> dingen.txt

cp dingen.txt andere-dingen.txt
rm dingen.txt
mv andere-dingen.txt alle-dingen.txt

echo "zoek in alle-dingen.txt"
read invoer
grep "$invoer" alle-dingen.txt


# alias text="cat alle-dingen.txt"