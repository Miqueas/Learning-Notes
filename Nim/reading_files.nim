import strutils

var file = "test_file.txt".readfile()

echo """Contents of "test_file.txt":"""
echo file
echo file.splitlines()
# 'strip' removes empty lines at the end
echo file.strip().splitlines()