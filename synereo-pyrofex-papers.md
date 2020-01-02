# Papers to write as part of Synereo/Pyrofex contract

## Conference papers


* Required

    * arXiv (~30 pages)

        * Stuff from journal paper below except for history, deep dives into type refinement, modal formulae, & models of theories & quivers.

    * ETAPS/FoSSaCS 2017 (Oct 14 2016 deadline, present in Uppsala, Sweden in April, 15 pages)
    http://www.etaps.org/index.php/2017/call-for-papers

        * BACAT presentation Oct 28 2016

        * Extended abstract for arXiv paper

        * Almost no discussion of why we use reified contexts

        * No discussion of intrinsic vs extrinsic types

        * LADL, one example

            * Need to work out details of names in RHO calculus

        * Obvious formulae

    * LICS 2017 (Jan 2017 deadline, present in Reykjavik in June, 10 pages)
    http://lics.rwth-aachen.de/lics17/cfp.html

        * Modal formulae

* Nice to have

    * CONCUR 2017
      https://www.concur2017.tu-berlin.de 13p Apr 24, 2017
      https://www.concur2017.tu-berlin.de/express_sos.html 15p

        * Type refinement

        * How does the Mèllies and Zeiberger notion of refinement play out in a concurrency setting?

        * Compare to notorious concurrency-inheritance phenomenon


## Journal paper

* Either TAC or LMCS.  LMCS has 50 page limit, TAC has none.  Expect to submit at end of year after other papers are written.

    * RAG Seely's suggestion of using 2-categories for modeling computation

        * models: extensional -> intensional -> domain-theoretic -> syntactic as limit of this process
        
        * vs directly model syntax

    * 2-categories with finite products as presentations of configurations

        * problem with 2-morphisms as rewrites

            * normal order evaluation

            * pi calculus

        * reduction contexts as morphisms

            * linear use of reduction contexts in rewrites = number of processors

            * if reduction contexts are consumed, get a notion similar to Ethereum's gas

        * models in Cat

            * monad T

            * free model in Cat on empty category gives a quiver of terms & rewrites

    * Interpretation of formulae as sets of terms satisfying the formulae

        * set aside what formulae are for the moment

        * data structures have only invertible 2-morphisms

            * e.g. sets are lists mod permutation and duplicate idempotence

        * set comprehension as monad

        * generalize from sets to arbitrary collection, so "sets of terms" is CT

    * Formulae are (T+C)*

    * distributive law

        * (T+C)* -> CT

            * T -> CT via unit of C

            * C -> TC via unit of T

            * TT->T, CC->C via multiplications

            * TC -> CT via distributive law

                * e.g. ({S, K} {a, b, c}) ↦ {(S a), (S b), (S c), (K a), (K b), (K c)}

    * Add modal operators to formulae

        * K is collection of 2-hole contexts using same collection monad

            * A <K> B = { t | ∃u ∈ [| A |], v ∈ [| B |], ρ: K(t, u) -> v}

                * e.g. in SKI or lambda, 
                  A => B = { t | ∃u ∈ [| A |], v ∈ [| B |], ρ: (t u) -> v} = A <( )> B

                    * Need to think about reduction contexts here: are all t of the form Rt'?  I guess we can express sets of terms that do not involve R.

                * e.g. in pi calc
                  A ▷ B = { t | ∃u ∈ [| A |], v ∈ [| B |], ρ: t | u -> v} = A <|> B

                    * Ditto for COMM

            * Stuff from LICS paper above

    * Examples of interesting formulae

        * primes in a monoid

        * deadlock-free (both kinds)

        * datalock-free? http://erights.org/elang/concurrency/epimenides.html

        * deniability from paper with Drossopolou

        * more?

    * Type refinement

        * Intrinsic vs extrinsic typing

            * Model of SKI in Cat & Set, 

            * Lambek & Scott, 

            * Mellies & Zeilberger & oidification

                * in their view, universe of values V is a Scott domain and (eq. classes of) terms are functions.  Intrinsic typing has (S ⊂ V), refinement is U(S ⊂ V) = V.

        * How does the Mèllies and Zeiberger notion of refinement play out in a concurrency setting?  We have a universe of 
        terms, since our propositions are about terms.

        * Compare to notorious concurrency-inheritance phenomenon

    * Models of theory in 2-categories other than Cat
    
        * 2-Hilb: ETQFT-like model
        
            * Objects are 2-Hilbert spaces
            
            * Term constructors are linear functors
            
            * Rewrites are linear natural transformations

    * Models of quiver

        * Quantum: take functor from quiver of terms and rewrites to Hilb

        * Graphs: terms map to object graphs, rewrites should obey Granovetter rules for ocap security



