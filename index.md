% What I Wish I Knew When Learning HoTT (Version 0.1)
% Auke Booij
% October 2017

Auke Booij

Changelog
---------

**0.1**

First sections:

* ???

<hr/>

Variants of HoTT
===

Book HoTT
---

Cubical type theory
---

* interval cannot be a type
* univalence inhabited, but normal form big

HoTT as an DSL
---

Impredicative prop
---

HoTT as an approach to MLTT
---

Proof assistants
===

Coq
---

* tactic language is just a way to construct type-theoretical terms:
  can get term out of proof by tactics

cubicaltt
---

* interval is abstract (as opposed to, say, an interval of reals):
  cubical set (though necessarily *not* Kan, see semantics section)

Normalization
---

General confusion about topology, homotopy, paths, and continuity
===

Topology
---

HoTT is *not* a internal language for topology.  TODO: say something
about modalities that is correct.

Homotopy
---

Within the HoTT community, "homotopy theory" refers to abstract
homotopy theory in the sense of, for example, Quillen model
categories, or more generally homotopy categories.  The category of
topological spaces and continuous maps is one such model category.
However, it is not clear if HoTT is an internal language for *all*
model categories.  In particular, the "homotopy" of HoTT does not
(necessarily) refer to the homotopies of point-set topology.

Paths and continuity
---

* continuity of functions on the reals or other metric spaces

Types as spaces
---

* typal circle versus subset of $R^2$

Type-theoretical features
===

Higher-inductive types
---

{induction,recursion}-{induction,recursion}
---

Initial algebras
---

Coinduction
---

Category theory
===

Topos logic versus HoTT
---

* toposes as models for types of h-level 0
* impredicativity

Formalising categories
---

Semantics
===

Fibrations
---

Categories with families
---

* necessary to provide set of types, since necessarily cannot make all
  maps types: extensionality.

Simplicial sets
---

* presentation in terms of coface and codegeneracy maps is equivalent
  to saying "take all order-preserving morphisms"
