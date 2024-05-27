testWords=(
    '--reverse examples/example00.txt'
    '--reverse=examples/example00.txt'
    '--reverse=examples/example01.txt'
    '--reverse=examples/example02.txt'
    '--reverse=examples/example03.txt'
    '--reverse=examples/example04.txt'
    '--reverse=examples/example05.txt'
    '--reverse=examples/example06.txt'
    '--reverse=examples/example07.txt'


)
rm testScript.sh
for ((i = 0; i < ${#testWords[@]}; i++))
do
    echo "echo 'TEST IS : ${testWords[$i]}'" >> testScript.sh
    echo "echo  \"--------------------------\" " >> testScript.sh
    echo "go run .  ${testWords[$i]}" >> testScript.sh
    echo "echo  \"--------------------------\" " >> testScript.sh
done
chmod +x testScript.sh