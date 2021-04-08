# coin-tossing

An essential Bash script to highlight coin tossing functioning.

## Example of output

```console
(base) user@host:~$ ./coin_tossing.sh 
a = 0
r = 0010110110
h(a|r) = b5640717a4e6874df1a4ccc84c4ee5f62437716deeaf78c49700f4bae1638ede  -

Alice ---h(a|r)---> Bob

b = 1

Alice <-----b------ Bob


Alice -----a,r----> Bob

h = h(received_a,received_r) -> Commitment is valid

coin_toss = (a + b) % 2 = 1
```
