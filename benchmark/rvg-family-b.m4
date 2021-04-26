dnl it corresponds to the Büchi automata PARAM_N=0 -> B2 PARAM_N=1 -> B3 …
dnl `i` is `s(0)`
dnl <> means the diamond structure between s(i) and s(i+1)
dnl Transitions
define(`between', `ifelse(eval($1 < $2), 1, `a,s($3)->pl($3)
a,s($3)->pr($3)
a,pl($3)->s(incr($3))
b,pr($3)->s(incr($3))
b,s($3)->p 
between(incr(incr($1)),$2,incr($3))', `ifelse(eval($2 % 2), 0, `a,s($3)->pl($3)
a,s($3)->pr($3)
a,pl($3)->p
b,pr($3)->p
b,s($3)->p', `a,s($3)->p
b,s($3)->p')')')dnl
define(`upto', `between(0,$1,0)')dnl
upto(PARAM_N)
dnl These transitions are always there
a,p->p
b,p->p
dnl Accepting states
define(`odd', `ifelse(eval($1 < $2), 1, `s($3) 
ifelse(eval($3 % 2),0, pl($3), pr($3)) 
odd(incr(incr($1)),$2,incr($3))', `p')')dnl
define(`even', `ifelse(eval($1 < $2), 1, `ifelse(eval($3 % 2),0, pl($3), pr($3)) 
even(incr(incr($1)),$2,incr($3))', `p')')dnl
ifelse(eval(PARAM_N % 2), 0,`even(0,PARAM_N,0)', `odd(0,PARAM_N,0)')
