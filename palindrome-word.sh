is_palindrome () { 
    local word=$1
    local len=$((${#word} - 1))
    local i
    for ((i=0; i <= (len/2); i++)); do
        [[ ${word:i:1} == ${word:len-i:1} ]] || return 1
    done
    return 0
}

for word in $1; 
    do
    if is_palindrome $word; then
        echo $word is a PALINDROME
    else
        echo $word is NOT a palindrome
    fi
done
