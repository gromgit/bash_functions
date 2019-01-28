# bash_functions
My collection of bash functions, mostly inspired by Reddit interactions, including:

* `shift_array`: `shift` for arrays
  * first published in [\[QuickTip\] Shifting arrays](https://www.reddit.com/r/bash/comments/aj0xm0/quicktip_shifting_arrays/)
```
$ source shift_array.bash
$ a=({1..10})
$ declare -p a
=> declare -a a=([0]="1" [1]="2" [2]="3" [3]="4" [4]="5" [5]="6" [6]="7" [7]="8" [8]="9" [9]="10")
$ shift_array a 4
$ declare -p a
=> declare -a a=([0]="5" [1]="6" [2]="7" [3]="8" [4]="9" [5]="10")
```
