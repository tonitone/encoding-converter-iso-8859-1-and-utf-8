#!/bin/bash
echo "running ISO-8859-1 to UTF-8"

while IFS= read -r file
do
    newFile=${file}.converted-to-utf8.html
    iconv -c -f ISO-8859-1 -t UTF-8 "$file" > "$newFile"
    rm "$file"
    mv "$newFile" "$file"
    file "$file"
    #echo "$file is converted and saved to $newFile"
done < "file-list-iso-8859-1-to-utf-8.txt"
