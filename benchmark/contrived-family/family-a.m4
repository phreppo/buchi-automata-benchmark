dnl usage m4 -DPARAM_N=Y
dnl it corresponds to the Büchi automata A_n 
dnl Initial state
q(0)
dnl Transitions
define(`layerbetween', `a,q($1)->q(incr($1)) 
a,q′($1)->q′(incr($1))
b,q($1)->q′($1)
a,q′($1)->pn
ifelse(eval(incr($1) < $2), 1, `layerbetween(incr($1),$2)', `a,q′($2)->pn
b,q($2)->q′($2)')')dnl
define(`layerupto', `layerbetween(0,$1)')dnl
layerupto(PARAM_N)
b,pn->pn
dnl Accepting
pn
