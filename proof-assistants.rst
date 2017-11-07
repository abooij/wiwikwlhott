Proof assistants
================

Coq
---

Coq consists of several layers of programming language. The most famous
one is the tactic language that is used to prove theorems. But since
theorems are interpreted by types, really tactics just construct terms.
For example:

::

    Definition logeq_both_false {X Y : UU} : ¬X -> ¬Y -> (X <-> Y).
    Proof.
      intros ? ? nx ny.
      split.
      - intros x. induction (nx x).
      - intros y. induction (ny y).
    Defined.

    Print logeq_both_false.

prints:

::

    logeq_both_false =
    λ (X Y : UU) (nx : ¬ X) (ny : ¬ Y),
    (λ (x : X) (e:=nx x), empty_rect (λ _ : ∅, Y) e),, (λ (y : Y) (e:=ny y), empty_rect (λ _ : ∅, X) e)
         : ∏ X Y : UU, ¬ X → ¬ Y → X <-> Y

(``empty_rect`` is the induction principle for :math:`\mathbf{0}`.)

Agda
----

cubicaltt
---------

-  interval is abstract (as opposed to, say, an interval of reals):
   cubical set (though necessarily *not* Kan, see semantics section)
-  earlier iteration: cubical

Normalization
-------------

-  minor gotcha: even if your particular flavor of hott is strongly
   normalizing (so that all terms reduce to a unique normal form), there
   are still types without decidable equality, because there is no map
   inside type theory that computes normal forms of arbitrary terms.
   find a way to say this without hopping back and forth between
   meta-theoretical and internal statements.

Libraries
---------

-  UniMath
-  HoTT/HoTT coq library
-  HoTT-Agda
-  cubical agda library
-  examples/ directory in cubicaltt repository
-  lean
-  various scientists' personal libraries
-
