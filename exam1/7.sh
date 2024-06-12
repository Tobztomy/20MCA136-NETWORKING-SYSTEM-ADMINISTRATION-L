read -p "Enter the file name: " file_name
if [ -f "$file_name" ];
then
lowercase_file="${file_name%.*}_lowercase.txt"
tr '[:upper:]' '[:lower:]' < "$file_name" > "$lowercase_file"
lines=$(wc -l < "$lowercase_file")
words=$(wc -w < "$lowercase_file")
characters=$(wc -m < "$lowercase_file")
echo "Number of lines: $lines"
echo "Number of words: $words"
echo "Number of characters: $characters"
echo "File contents in descending order:"
sort -r "$lowercase_file"
else
echo "File not found."
fi

