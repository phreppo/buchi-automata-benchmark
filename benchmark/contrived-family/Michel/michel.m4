dnl usage m4 -DPARAM_N=Y
dnl it corresponds to the Büchi automata from M. Michel (as given by Wolfgang Thomas)
dnl Initial state
L
dnl Transitions in the loop
define(`loopbetween', `$1,($3)->($3)
ifelse(eval($1 < $2), 1, `loopbetween(incr($1),$2,$3)')')dnl
define(`between', `$1,L->($1)
loopbetween(0,PARAM_N,$1)ifelse(eval($1 < $2), 1,`incr($1),(incr($1))->L
between(incr($1),$2)')')dnl
between(0, PARAM_N)dnl
dnl Accepting state
L
