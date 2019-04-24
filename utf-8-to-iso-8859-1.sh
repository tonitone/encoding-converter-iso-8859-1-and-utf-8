#!/bin/bash
echo "running UTF-8 to ISO-8859-1"

while IFS= read -r file
do
    newFile=${file}.converted-to-iso.html
    iconv -c -f UTF-8 -t ISO-8859-1//TRANSLIT "$file" > "$newFile"
    rm "$file"
    mv "$newFile" "$file"
    file "$file"
    #echo "$file is converted and saved to $newFile"
done < "file-list-utf-8-to-iso-8859-1.txt"