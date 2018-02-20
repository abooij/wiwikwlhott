General FAQ
====================================================

Will HoTT help me with my higher-dimensional zoggblobs?
----------------------------------------------------------

There is a widespread misconception that doing proofs and computations
for arbitrary higher-dimensional mathematical objects is easier in
HoTT, supposedly because HoTT supports higher-dimensional structures
natively.  The reality is more involved than this, because there are
many kinds of higher-dimensional structure, and HoTT implements one of
them.

Higher-dimensional variants of mathematical objects are often
specified by data in countably many dimensions, together with
coherence conditions in all those dimensions.  Still, some
higher-dimensional can be described finitely and very succinctly in
HoTT.  We give some notable examples.

If one interprets **equivalences** of types (as defined in
e.g. chapter 2.4 of the HoTT book) in homotopical semantics, such as
simplicial sets, one obtains weak homotopy equivalences.  Normally, a
weak homotopy equivalence is a continuous map, satisfying the
condition that all its induced maps on homotopy groups are
isomorphisms.  The fact that all this is expressed by the concise
definitions of chapter 2.4 is an example of the expressive power of
HoTT.

Similarly, we can define when a type is :math:`n`-**truncated**,
without having to state any requirements above dimension :math:`n`.
Namely, if a type is :math:`n`-truncated, it is also automatically
:math:`(n+1)`-truncated.  Just like the previous example, this claim
about truncatedness is true both as a statement in HoTT, and as a
claim about the homotopical semantics of HoTT.

Univalence tells us that predicates on objects are invariant under
equivalences.  A predicate that holds for a type :math:`A`
automatically also holds :math:`B` if there is an equivalence from
:math:`A` to :math:`B`.

Suppose you naively translate the widely-known definition of
higher-dimensional zoggblobs from classical mathematics into HoTT.  It
is unlikely you'll have such automatic invariance of predicates along
zoggblobs that are considered equivalent [#breaks]_.  It is unlikely
you are automatically able to make use of the higher-dimensional
structure of types of MLTT.

And it may not even be obvious how to translate certain structures
into HoTT.  If one wants to consider e.g. the Poincaré conjecture
(which says that if you have a space homotopic to :math:`S^n`, then,
under some conditions, it is diffeomorphic to :math:`S^n`), one wants
to have a notion of differential structure that is compatible with the
homotopical structure.  But the obvious choice of homotopical
structure - types - requires adding syntax (modalities) to obtain a
differential structure.  And there are different ways to use
modalities to add differential structures to types.  Under some given
choice, a statement like the Poincaré conjecture may be true, it may
require choice, it may be unprovable, and it may be provably
false (not all at the same time).

.. todo:: cross-ref to cohesive type theory

You can ask what kind of universal properties a space :math:`X` has
when interpreted as an object of various categories of spaces.
Similarly, you can ask what kind of universal properties :math:`X` has
as a type.  These are all different questions, possibly with different
answers.

HoTT won't automatically help you with higher-dimensional reasoning.
In fact, a lot of research is about which definitions give you which
kind of help.

.. todo::
   Think about some examples.

   - :math:`(\infty,1)`-categories
   - double categories

     - give a def of lax double functors and coherence for them.  if
       hott claims that it comes with an infty-categorical structure,
       then it should automatically give the higher coherence axioms.
     - double category of cobordisms

   - knot theory
   - semi-simplicial types

   - 2-category theory

     - there are different notions of functors: lax, strict, pseudo.
       not all of these (e.g. strict) are invariant under equivalence
       of 2-categories.  if you define 2-categories so that they
       typally equal iff they are equivalent (as 2-categories), then
       you won't be able to define strict functors on these
       2-categories.
     - this is good and bad at the same time.

   - sometimes HoTT *does* do a better job: e.g. claims about
     (infty-)groupoids are automatically invariant. but depends on the
     way you state this.

See also: :ref:`types_as_spaces`.

.. rubric:: footnotes

.. [#breaks] This tends to break for essentially the same reasons that
             you didn't used to have the invariance in classical
             mathematics in the first place.

How are open sets / continuity / ... defined in HoTT?
-----------------------------------------------------

As a rule of thumb, the answer to such questions relating to
topological definitions is "they aren't".  But confusingly, there are
a few exceptions to this.  So really the answer is that this is
(usually) the wrong question.

See also: :ref:`types_as_spaces`.

:ref:`book_hott` is *not* a theory of topological spaces, or about any
kind of space.  It is a type theory that can be used as a *neutral*
foundations of mathematics.  Because of this, it is often called
*univalent type theory* or *univalent mathematics* instead, as
homotopy theory is, from a logician's point of view, secondary to
HoTT: it just so happens [#htpy_accident]_ that it admits semantics in
certain Quillen model categories, and that allows us to use the
intuition of types as spaces.

If you are trained in topos logic, and you are asking a HoTT expert
when a map in HoTT is closed, then *you* have the obligation to first
define, in the internal language of a topos, when a map between two
objects in a topos is closed.  HoTT does not give new expressive
power.  If it would give new expressive power, it would not be a
neutral foundations of mathematics.

.. todo:: write something on the homotopy hypothesis, and
          cross-reference here.

The confusion starts with the exceptions: because some concepts from
homotopy theory *can* be interpreted by the syntax of type theory.
*In some sense*, types behave like certain *kinds* of spaces.  *In
some sense*, we can compute homotopy groups of spheres inside HoTT,
when homotopy groups are defined in a certain way.  *In some sense*,
equivalences of types behave like weak equivalences in homotopy
theory.

Indeed, already such concepts could be interpreted in other
foundations of mathematics, such as constructive set theories.  The
reason that nobody did this, is that such foundations, by virtue of
being *set* theories, exhibit no behavior that reminds of
higher-dimensional homotopy theory: after all, all the objects are
0-dimensional.  HoTT shows you the types that you have been missing
before.

*Certain* constructions in homotopy theory have analogues that can be
expressed very succinctly in HoTT.  These constructions have in common
that they are always invariant under equivalences of types.  And we
think of such equivalences as weak equivalences of the spaces of
homotopy theory: so by univalence, such constructions are thought of
as invariant under weak equivalences of spaces, which rules out many
definitions from point-set topology.

.. rubric:: footnotes

.. [#htpy_accident]

   Well, this is not fair, of course:

   - Historically, HoTT was designed to admit semantics in appropriate
     categories of spaces.
   - Most semantics of HoTT are found in categories of spaces.
   - There is a lot of research on what parts of homotopy theory can
     be developed within HoTT.


What is the point of constructive mathematics?
----------------------------------------------------------------------------------------

Classical mathematicians are concerned with the truth or falsity of
statements, whereas type theory is usually about constructions.
Geometric questions such as the bisection of an angle are answered by
construction using ruler and compass, but it is neither true nor
false.  In the same way, constructive logic offers aspects on
mathematical questions that classical logic cannot provide.

.. epigraph::

   Constructive mathematics is in its infancy.  According to some, it
   is doomed to the role of scavenger.  These people conceive of
   classical mathematics as establishing the grand design and the
   imaginative insight, leaving the constructivists to add whatever
   embellishments their credos demand.  Although totally wrong, this
   viewpoint hints at a truth: The most urgent task of the
   constructivist is to give predictive embodiment to the ideas and
   techniques of classical mathematics.  Classical mathematics is not
   totally divorced from reality.  On the contrary, most of it has a
   strongly constructive cast.  Much of the constructivization of
   classical mathematics is therefore routine; constructive versions
   of many standard results are readily at hand.  This makes it easy
   to miss the point, which is *not* to find a constructive version of
   this or that, or even of every, classical result.  The point is not
   even to find elegant substitutes for whole classical theories.  The
   point rather is to use classical mathematics, at least initially,
   as a guide.  Much will be of little value to the constructivist,
   much will be constructive per se, and much will raise fundamental
   questions which classically are trivial or perhaps do not even make
   sense. The emphasis will be on the discovery of useful and incisive
   numerical information.  It is the incisiveness and scope of the
   information, not the elegencae of the format, that is relevant.

   -- Bishop :cite:`bishop:numerical:language`

An accessible and entertaining introduction to constructive
mathematics is Andrej Bauer's 2013 lecture "Five stages of accepting
constructive mathematics", available on `youtube
<https://www.youtube.com/watch?v=zmhd8clDd_Y>`_.  This talk was turned
into a paper published in 2016 :cite:`bauer:five:stages`.  The five phases are:

1. Denial: various misconceptions about constructivism, and what is
   and isn't considered constructive mathematics. Topics include:

   - Excluded Middle: false or not?
   - The difference between "proof *by* a contradiction" and "proof
     *of* a contradiction".
   - Choice axioms, and how to spot them.

2. Anger: how constructivism may seem bizarre from a classical point
   of view.
3. Bargaining: where constructive logic and mathematics occur
   naturally. Topics include:

   - Constructive mathematics as a generalization of classical
     mathematics.
   - Realizability (i.e. computability) models.
   - Sheaf models, topos theory, and continuity.

4. Depression: an interpretation of how the relevance of
   constructivism may be changing over time.
5. Acceptance: ways to adapt to constructive mathematics, and make use
   of its power. Topics include:

   - How mathematics may be adapted to do away with excluded middle.
   - How mathematics may be adapted to do away with choice.

Truncation: classical or constructive?
-------------------------------------------------

One understanding of the term "constructivism" is that the logic
should always pass around explicit constructions, which may in general
not be unique.  So existential quantifiers are understood to always be
proved by constructing :term:`points <point>`, and logical disjunctions are
understood to always give a choice of a disjunct.

From this point of view, the truncation operation seems to be
non-constructive: namely, it allows us to pass around a notion of
truth without passing around the underlying witnesses.  There are (at
least) two problems with the conclusion that truncation is
non-constructive.

- This understanding of constructivism is correct only for certain
  variants of constructive logic.
- Perhaps more importantly, witnesses *are* passed around, and this
  can be observed [#proofirrelevance]_.

For the latter, :ref:`define <translating_natural>` the type :math:`P`
of primes numbers that are the sum of two consecutive primes.  So
:math:`P` is a :math:`\Sigma`-type.  Then it can be shown that
:math:`P` is a proposition: any two of its elements are equal.  The
proof of this is essentially the same as the proof that there is at
most one prime that is the sum of two consecutive primes.  Moreover,
the type :math:`P` is inhabited.  One constructs an element of
:math:`P` by pairing the number 5 with a proof that 5 is the sum of 2
and 3, which are also primes.  But any proof of the *proposition*
:math:`P` is indeed very informative: for example, the first
projection of *any* proof of :math:`P` (recall that :math:`P` is a
:math:`\Sigma`-type, and as such we can take the first and second
projections of its elements) will yield the number 5.

Another striking example of elements of truncated types carrying data
is given by Nicolai Kraus' function that undoes the truncation map
:math:`|\_|:\mathbb{N}\to\|\mathbb{N}\|`
:cite:`kraus:truncation:invertible` [#truncnotation]_.  In this construction, for any
natural :math:`n:\mathbb{N}`, we consider the type

.. math::
   \operatorname{pathto}(\mathbb{N},n)
   :=
   \sum_{Y:\sum_{X:\mathcal{U}}X}(Y=(\mathbb{N},n))

of :term:`pointed types <pointed type>` that are equal to the pointed
type :math:`(\mathbb{N},n)`.  We can show that
:math:`\operatorname{pathto}(\mathbb{N},n)` is a proposition.  This
allows us to extract the incoming point :math:`n`, even if it was
hidden by the truncation map :math:`|\_|`.  This construction
shows that elements of truncated types can carry so much information
that we can, in this case, undo the truncation, in a certain sense.

.. rubric:: footnotes

.. [#truncnotation] Note that :math:`|\_|` is the *truncation map*,
                    that sends a point :math:`x:X` to its *truncation*
                    :math:`|x|`, an element of the *truncated type*
                    :math:`\|X\|`.

.. [#proofirrelevance] The fact that witnesses are important also for
                       propositions shows that the logic of
                       propositions is not *proof irrelevant*.

What is the difference between a type and its propositional truncation?
-----------------------------------------------------------------------

For any type :math:`X`, its truncation :math:`\|X\|` is inhabited
(i.e. has elements) if and only if :math:`X` is.  However, by
definition, :math:`\|X\|` is a proposition.

This means that any two elements :math:`x,y:X` give rise to elements
:math:`|x|,|y|:\|X\|`.  However, since :math:`\|X\|` is a proposition,
we also have a proof that the identity type :math:`|x|=_{\|X\|}|y|` is
inhabited.  So you can think of :math:`\|X\|` as the type :math:`X`,
but with extra identities added, as well as higher identities, so that
it becomes a proposition.

What is the killer application of univalence?
------------------------------------------------

This is the wrong question in the same sense that one shouldn't ask
"What is the killer application of the extensionality axiom in ZFC?"
Univalence is an :term:`extensionality` :term:`axiom` in the same
sense that ZFC's extensionality axiom is one.  The ZFC axiom says that
if two sets have the same elements, then they are equal as sets.
Univalence, similarly, characterizes equality of types in terms of
equivalences.

In the end, foundations of mathematics are to be used to prove
mathematical theorems.  Univalence helps us to phrase and prove
theorems in a certain style, namely that of univalent mathematics.  It
is often possible to obtain intuition from univalence, and make an
initial estimate whether some claim is going to be provable or not.
Even if your entire theory can be built in MLTT, univalence can guide
you.  It allows us to phrase and prove theorems that are natural and
correspond very well with informal mathematics.

Why isn't there an induction principle for the universe?
--------------------------------------------------------

All the basic types of the type theory seem to come with an induction
or coinduction principle, so why not the universe?

Induction principles are a form of *pattern matching*.  That means
that if a type :math:`X` has an induction principle, and you have a
point :math:`x:X`, then you may, under various conditions, assume that
:math:`x` is of a certain form.  In other words, all induction
principles limit possibilities.

Having any kind of induction principle on the universe is undesirable
because we think of the universe as being *open*, in the sense that we
don't want to intentionally restrict the types that our theory can
handle.  For example, in a given univalent type theory, we may
introduce additional type constructors, such as certain homotopical
constructors, after a body of theory has already been formalized in
that type theory.  We want our existing theory to stay valid even if
new type constructors are introduced.

On top of induction principles for the universe being undesirable, it
can be a constructive taboo to have one.  Namely, if we could tell the
empty type :math:`\mathbf{0}` and the unit type :math:`\mathbf{1}`
apart, that is, if we could use the induction principle to obtain a
function :math:`f:\mathcal{U}\to\mathbf{2}` from the universe to the
booleans that outputs :math:`\mathsf{false}` for :math:`\mathbf{0}`
and :math:`\mathsf{true}` for :math:`\mathbf{1}`, then using
univalence we could prove :term:`weak excluded middle`.

If your language has a feature such as :ref:`induction-recursion
<induction_recursion>`, you are always free to define your own
universe of *codes* for types.  So this allows you to seemingly do
case analysis on a selection of types.
