filepath="Czech.foma"
name=$(basename $filepath .foma)
binary=$name.bin
foma -e "source $name.foma" -e "push $name" -e "save stack $binary" -e "sigma" -e "exit"
echo "Created Foma binary $binary."
flookup -s " ← " -b $binary < input.txt > output.txt
python evaluate.py
