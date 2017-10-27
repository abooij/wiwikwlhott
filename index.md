% What I Wish I Knew When Learning HoTT (Version 0.1)
% Auke Booij
% October 2017

Auke Booij

This document is intended to refer to concepts one may not be aware of
on a first reading of the HoTT book, and give a crude, possible
unhelpful intuition for them.

**Warning**: I did not check for correctness.  This document may be
counterproductive.  I did not tell you these things.

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

Book HoTT is the type theory described in the HoTT book.  It is
intensional MLTT with a hierarchy of universes indexed by positive
numerals, and additionally:

* univalence as an axiom (and function extensionality as a theorem),
* $n$-truncation,
* suspension types,
* pushouts,
* set quotients,
* the free Cauchy completion of the rationals $\mathbf{R}_C$,

where the computation rules for HITs is given definitionally for
points but propositionally for higher constructors.

Cubical type theory
---

Cubical type theory is a type theory for which univalence is a
theorem.  It adds an interval _pretype_ which is used to define
identity types.  This interval is necessarily not a type.

Cubical type theory was implemented in the __cubicaltt__ proof
assistant and the agda __--cubical__ mode.

Although univalence is a theorem, the normal form is huge (megabytes),
although it is argued that this is due to the proof rather than the
design of cubical type theory.

HoTT as an DSL
---

Dan Licata argues we should think of HoTT as a language to which we
add features depending on how we plan to use it, in the same way that
we write specialized programming languages for specific use-cases.
For example, cubical type theory is a domain-specific language for
programming with Kan cubical sets, and real-cohesive HoTT is a
language for programming topological spaces.  Schulman and Riehl have
a language for programming $(\infty,1)$-categories.

Impredicative prop / propositional resizing
---

The principle that there is only one type of propositions, and it is a
member of $\mathcal{U}_0$: so all types of propositions are equal, and
it is a type in the lowest universe.

Assuming this principle, the set of types of any universe is a topos.

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

Meta-theory
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

General confusion arising from names of definitions
===

Constructors versus elements versus terms
---

To say that something is a _constructor_ of a type means that the type
was defined inductively, and that you are picking one of the options
specifying its datatype.  For example, $\mathbf{N}$ has exactly _two_
constructors: $0$ and $S$.

To say that something is an _element_ of a type means that it is a
variable or expression whose type is $\mathbf{N}$.  But that means
that, in a certain context, you can have an element of type
$\mathbf{0}$: for example in the context $x:\mathbf{0}$.

Finally, _term_ is a strictly syntactic notion.  As a first
approximation, something is a term if it is a string of characters
that, when inserted in a proof assistant, would parse, and have a
certain type.

Translating claims in natural language to type theory
---

* there seems to be some miscommunication regarding which statements
  by HoTTist are internal and which ones are metatheoretical, but I
  can't make this precise right now.

Types as spaces
---

* typal circle versus subset of $R^2$

Sets
---

* Sets as 0-types
* hierarchies of sets inside types

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
