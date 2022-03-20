import strutils

var file = readFile("test_file.txt")

echo "Contents of 'test_file.txt':"
echo file
echo file.splitLines()
# 'strip' removes empty lines at the end
echo file.strip().splitLines()