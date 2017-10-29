% What I Wish I Knew When Learning HoTT (Version 0.1)
% Auke Booij
% October 2017

Auke Booij

This document is intended to refer to concepts one may not be aware of
on a first reading of the HoTT book, and give a crude, possible
unhelpful intuition for them.

**Warning**: I did not check for correctness.  This document may be
counterproductive.  You didn't get these things from me.


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

The principle that there is only one type $\Omega$ of propositions,
and it is a member of $\mathcal{U}_0$: so all types of propositions
$\mathsf{Prop}_i$ are equal, and it is a type in the lowest universe.

Assuming this principle, the set of types of any universe is a topos.

Assuming this principle, some HITs become definable by impredicative
encoding: e.g. truncation as $\prod_{P:\Omega}(X\to P)\to P$.

UniMath uses propositional resizing in the foundational files
`Foundations/PartA.v` and `Foundations/PartB.v` to avoid depending on
univalence early.

HoTT as an approach to MLTT
---

Parts of HoTT can be developed in intensional MLTT, that is, without
assuming univalence, function extensionality, propositional
extensionality, or the existence of any HITs.  For example:

* The fact that h-levels are cumulative (if $A$ is an $n$-type then it
is also an $n+1$-type) does not require univalence.
* The groupoid laws of identity types and iterated identity types can
be proved by simple path inductions.
* Some propositional truncations exist without assuming the existence
of any HITs or propositional resizing, such as the type of
fixed-points of any constant endomap $f$ on $X$.

Proof assistants
===

Coq
---

* tactic language is just a way to construct type-theoretical terms:
  can get term out of proof by tactics

Agda
---

cubicaltt
---

* interval is abstract (as opposed to, say, an interval of reals):
  cubical set (though necessarily *not* Kan, see semantics section)
* earlier iteration: cubical

Normalization
---

Libraries
---

* UniMath
* HoTT/HoTT coq library
* HoTT-Agda
* cubical agda library
* examples/ directory in cubicaltt repository
* lean
* various scientists' personal libraries
*

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

To say that something is a _constructor_ of a type $A$ means that the
type $A$ was defined inductively, and that you are picking one of the
options specifying its datatype.  For example, $\mathbf{N}$ has
exactly _two_ constructors: $0$ and $S$.  But since, for example, $S$
has type $\mathbf{N}\to\mathbf{N}$, constructors of a type are not
always elements of that type.

To say that something is an _element_ of a type $A$ means that it is a
variable or expression whose type is $A$.  But that means that, in
some non-trivial context, you can have an element of type
$\mathbf{0}$: for example in the context $x:\mathbf{0}$, we have the
element $x$ of type $\mathbf{0}$.

Confusingly, even in the context $x:\mathbf{0}$, where we have the
element $x$ of type $\mathbf{0}$, we can show that $\mathbf{0}$ does
not have any elements, because the claim "$A$ does not have any
elements" is formalised as $\neg A$, that is, $A\to\mathbf{0}$, and
$\mathbf{0}\to\mathbf{0}$ is indeed inhabited (by the identity
function).

_Point_ is a synonym for _element_.

Finally, _term_ is a strictly syntactic notion.  As a first
approximation, something is a term if it is a string of characters
that, when inserted in a proof assistant, would parse, and have a
certain type.  There are no terms of type $\mathbf{0}$ (unless HoTT
turns out to be inconsistent).

Translating claims in natural language to type theory
---

* there seems to be some miscommunication regarding which statements
  by HoTTist are internal and which ones are metatheoretical, but I
  can't find the right words to make this precise right now.

Types as spaces
---

There are (at least) two different notion of "space" and (at least)
two different "circles".

First of all, every type is _thought of_ as a space: and so the HIT
$S^1$ freely generated by a basepoint and a path on that basepoint is
thought of as a homotopical circle.  The space-like behavior is given
by the type theory, and can be probed using identity types.

Secondly, there is a certain subset of the real plane $\mathbf{R}^2$
(taking $\mathbf{R}$ to be, for example, the dedekind reals) that
represents a circle, namely the subtype of points with radius 1.  The
space-like behavior of such spaces _internal to the theory_ is given
by whatever notion of space we are interested in: for example,
$\mathbf{R}^2$ is often studies as a metric space with a metric
$d:\mathbf{R}^2\times\mathbf{R}^2\to\mathbf{R}$.

These two circles are completely unrelated, unless you add extra
syntax or axioms, such as in real-cohesive HoTT.

This can be terribly confusing.  For example, the fact that every map
in HoTT lifts to a map on the identity types (expressing that if two
inputs to a function are equal, then we can prove the outputs are
equal) is explained in the HoTT book by saying that this means the
function is continuous.  So from the HoTT point of view, all functions
are "continuous" in that sense.  But in the context of constructive
analysis _inside_ HoTT, it is not provable that all functions are
continuous, and in fact it need not be true, for example if one has
the principle of excluded middle.

Even though the link between types and, say, topolgoical spaces (as
defined _inside_ HoTT) is broken, the intuition of the internal theory
of those spaces is still used to prove the impossibility of
type-theoretical proofs.  For example, it is not provable that any two
points on the higher-inductive circle are equal, which is somewhat odd
since in any drawing of a circle there are at least two obvious paths
between any two points $x$ and $y$.  As a topological
counter-argument, it is said that the path from $x$ to $y$ cannot be
chosen in a "continuous" way, in the sense that if you rotate $x$
along the circle one full rotation, you'll have to make a "jump" in
your choice of path at some point.  But this counter-argument is
topological in nature, rather than type-theoretic (although there is a
way to make it precise type-theoretically).

Indeed, proofs about types such as the higher-inductive circle look
nothing like their counterparts in topology.  Even still, they satisfy
_some_ of the same properties: if we define the "homotopy group" of a
pointed type correctly, then there is some evidence that the
higher-inductive circles have the same homotopy groups as their
topological counterparts in classical mathematics.  However, some
properties are fundamentally different in a seemingly unfixable way:
as a theorem stated inside type theory, there is only one map $S^1\to
S^2$, and it is the constant map.

Sets
---

There are (at least) three notions of sets:

* The objects studied by a theory such as ZFC.  We can take
  intersections of any two such sets, even if this does not make sense
  from an extensional point of view: for example, we can take the
  intersection of $\pi$ with the graph of $x\mapsto x^2$, as both
  objects are sets.
* 0-types.  The behavior of 0-types is very close to ZFC sets.  For
  example, for a map $f$ between two 0-types (but not between arbitrary types), the following are equivalent:
* A cumulative hierarchy of sets as in e.g. chapter 10.5 of the HoTT book, as an attempt to find a model of an axiomatic set theory like ZFC (although this will likely require choice).

Type-theoretical features
===

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

Categories with families
---

* necessary to provide set of types, since necessarily cannot make all
  maps types: extensionality.

So we want to pick out a certain subset of our maps to represent types
over contexts.  One naive approach is to just take any category and
ask for extra data, so that we can tell types apart from arbitrary
maps.  There are various definitions one can make here, and most of
them are unsatisfying since they are __not__ invariant under
equivalence of the underlying category.  For example, there is no
contextual category on the 1-object 1-morphism category, but there
_is_ a contextual category in which all objects are terminal.

Fibrations
---

(NB: In category theory, there is the notion of Grothendieck
fibration, which is sometimes referred to plainly as a fibration.  It
is not the same as this concept.)

In categorical semantics of HoTT, we need to distinguish arbitrary
maps between the objects (namely _context morphisms_ or
_substitutions_, since the objects represent contexts) from maps that
represent types _over_ a context (as types in a context are
represented by maps into that context).

Usually, we specify this by saying which maps are _fibrations_, and
more generally we show that the category is a model category.  So what
it means for a certain semantic object to be a fibration depends on
the chosen model category structure.  For example, in simplicial sets,
a map is defined to be a fibration if it is Kan.  Because of the
importance of the Kan condition, in semantics of type theory, we
sometimes refer to the fibrations as _Kan fibrations_.

So we say which maps are fibrations, so that we can define a
corresponding (say) CwF out of the model category, which has as the
types exactly the _fibrations_ into the context.

Simplicial sets
---

* presentation in terms of coface and codegeneracy maps is equivalent
  to saying "take all order-preserving morphisms"

Cubical sets
---

* various iterations
