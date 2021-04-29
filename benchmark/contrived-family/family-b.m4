dnl usage m4 -DPARAM_N=Y
dnl it corresponds to the Büchi automata B_n 
dnl Initial state
(0)
dnl We always have the following transitions
a,(0)->qn
b,(0)->qn
a,qn->qn
b,qn->qn
dnl A VIP extra transition 
b,(0)->(1)
dnl Transitions in the loop
define(`loopbetween', `a,($1)->(incr($1)) 
ifelse(eval(incr($1) < $2), 1, `loopbetween(incr($1),$2)', `a,($2)->(0)')')dnl
define(`loopupto', `loopbetween(0,$1)')dnl
loopupto(PARAM_N)
dnl Accepting
qn
