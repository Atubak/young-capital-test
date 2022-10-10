#! /bin/sh

file="tel-nummers.txt"
lines=$(cat $file)

echo "$lines"

echo "voer het netnummer in"
read netnummer

for line in $lines ; do
    echo "($netnummer) $line"
done