# Alice

# Generate random bit
a=$(($RANDOM%2));
# Security parameter
k=10;

# Generate randomness
r=$(($RANDOM%2));for (( i = 1; i <= $k-1; i++ )); do r=$r$(($RANDOM%2)); done;

# Compute commitment
h=$(echo -n $a$r | sha256sum);

echo "a = $a";
echo "r = $r"
echo "h(a|r) = $h";

echo "";
echo "Alice ---h(a|r)---> Bob";
echo "";

# Bob

b=$(($RANDOM%2));
echo "b = $b";

echo "";
echo "Alice <-----b------ Bob";
echo "";

# Alice again

echo "";
echo "Alice -----a,r----> Bob";
echo "";

# Bob again

# Verify commitment
received_a=$a;
received_r=$r;

if [[ $h == $(echo -n $received_a$received_r | sha256sum) ]]; then
    echo "h = h(received_a,received_r) -> Commitment is valid";
else
    echo "h != h(received_a,received_r) -> Commitment is not valid";
fi

echo "";

# Both Alice and Bob

coin_toss=$(((a+b)%2));
echo "coin_toss = (a + b) % 2 = $coin_toss";
