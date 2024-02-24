
### Make this a bash script that can be executed by putting
### a "shebang" at the top of the file

echo "It works!"


### (1) In your home directory make a directory called RAW_DATA
mkdir -p "$HOME/RAW_DATA"
### (2) Copy all .fna fasta files  
###     from home directory into RAW_DATA (must work from any directory.)
find "$HOME" -name "*.fna" -type f -exec cp {} "$HOME/RAW_DATA/" \;
### (3) Do the same with all primer files ending with .csv
find "$HOME" -name "*.csv" -type f -exec cp {} "$HOME/RAW_DATA/" \;
### (4) In your home directory, make 2 directories: P_DATA and RESULTS
mkdir -p "$HOME/P_DATA" "$HOME/RESULTS"
### (5) Add all three directories to your $PATH: ~/RAW_DATA, ~/P_DATA
###     and ~/RESULTS
export PATH="$HOME/RAW_DATA:$HOME/P_DATA:$HOME/RESULTS:$PATH"
### (6) Write your entire $PATH, the text string RAW_DATA and the 
###    contents of this directory (the names of the files) into a new file 
###    called 'readme.txt' in your home directory
echo "PATH: $PATH" > "$HOME/readme.txt"
echo "RAW_DATA:" >> "$HOME/readme.txt"
ls "$HOME/RAW_DATA" >> "$HOME/readme.txt"
### (7) The last command should output the contents of readme.txt
###     to the terminal.
cat "$HOME/readme.txt"
