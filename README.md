# buchi-automata-benchmark

A collection of Büchi automata (BA) for language inclusion benchmarking.
The BAs contained in this repository have been used to benchmark the
[bait](https://github.com/parof/bait) tool.
The automata are represented using the `.ba` format, and its official
description, written by its authors, can be found at
[http://languageinclusion.org/doku.php?id=tools#the_ba_format](http://languageinclusion.org/doku.php?id=tools#the_ba_format).
Other tools, for example [RABIT](http://languageinclusion.org/doku.php?id=tools#rabit_and_reduce_v25),
accept the same format.
The automata are contained in the `benchmark` folder, and we collected them
from various sources.
Here's a brief description of the `benchmark` folder:

* `benchmark/contrived-family`: contains the scripts to generate families
  of automata.
* `benchmark/rabit`: verification tasks as defined by the
  [RABIT](http://languageinclusion.org/doku.php?id=tools#rabit_and_reduce_v25)
  tool.
  The BAs are models of mutual exclusion algorithms where in each benchmark
  one BA is the result of translating a set of guarded commands defining the
  protocol while the other BA translates a modified set of guarded commands,
  typically obtained by randomly weakening or strengthening some guards.
  The resulting BAs are on the binary alphabet `{0,1}` and their sizes range
  from 20 to 7963 states.
  The automata can be downloaded from
  [http://languageinclusion.org/doku.php?id=tools#rabit_and_reduce_v25](http://languageinclusion.org/doku.php?id=tools#rabit_and_reduce_v25).
* `benchmark/pecan`: logical implication tasks in word combinatorics as
  defined by the [Pecan theorem prover](https://arxiv.org/abs/2102.01727).
  BAs encode sets of solutions of predicates, hence logical implication
  between predicates reduces to a language inclusion problem between BAs.
  The benchmarks correspond to theorems of type `∀ x, P(X) ⟹ Q(X)` about
  Sturmian words.
* `benchmark/UltimateAutomizer`: termination tasks as defined by
  [Ultimate Automizer](https://doi.org/10.1007/978-3-642-39799-8_2).
  Ultimate Automizer is a well-known software model checker that verifies
  program correctness using automata-based reasoning and that reduces
  termination problems to inclusion problems between BAs.
  The automata can be found at
  [https://github.com/ultimate-pa/automata-benchmarks](https://github.com/ultimate-pa/automata-benchmarks).
