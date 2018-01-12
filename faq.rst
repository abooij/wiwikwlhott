General FAQ
====================================================

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
   totally divorced from reality.  On the contrayr, most of it has a
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
into a paper published in 2016 :cite:`bauer:five:stages`.

Truncation: classical or constructive?
-------------------------------------------------

One understanding of the term "constructivism" is that the logic
should always pass around explicit constructions, which may in general
not be unique.  So existential quantifiers are understood to always be
proved by constructing :term:`points <point>`, and logical disjunctions are
understood to always give a choice of a disjunct.

From this point of view, the truncation operation seems to be
non-constructive: indeed, it allows us to pass around a notion of
truth without passing around the underlying witnesses.  There are (at
least) two problems with this conclusion.

- This understanding of constructivism is correct only for certain
  variants of constructivism.
- Perhaps more importantly, witnesses *are* passed around.

For the latter, :ref:`define <translating_natural>` the type :math:`P` of primes numbers that are
the sum of two consecutive primes.  Then it can be shown that
:math:`P` is a proposition: any two of its elements are equal.
Moreover, :math:`P` is inhabited, namely by the number 5, being the
sum of 2 and 3.  But the proof of :math:`P` is indeed very
informative: for example, the first projection of *any* proof of
:math:`P` will yield the number 5.

Another striking example of elements of truncated types carrying data
is given by Nicolai Kraus' function that undoes the truncation map
:math:`|\_|:\mathbb{N}\to\|\mathbb{N}\|`
:cite:`kraus:truncation:invertible`.  In this construction, for any
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

What is the killer application of univalence?
------------------------------------------------

This is the wrong question in the same sense that one shouldn't ask
"What is the killer application of the extensionality axiom in ZFC?"
Univalence is an extensionality axiom in the same sense that ZFC's
extensionality axiom is one.  The ZFC axiom says that if two sets have
the same elements, then they are equal as sets.  Univalence,
similarly, characterizes equality of types in terms of equivalences.

In the end, foundations of mathematics are to be used to prove
mathematical theorems.  Univalence helps us to phrase and prove
theorems in a certain style, namely that of univalent mathematics.  It
is often possible to obtain intuition from univalence, and make an
initial estimate whether some claim is going to be provable or not.
Even if your entire theory can be built in MLTT, univalence can guide
you.  It allows us to phrase and prove theorems that are natural and
correspond very well with informal mathematics.

Why isn't there an induction principle for the universe?
-------------------------------------------------------

All the basic types in MLTT seem to come with an induction or
coinduction principle, so why not the universe?

.. todo::
   answer.

   - Π-types are coinductive
   - being able to tell types apart would e.g. prove LEM
   - internal universes a la tarski via induction-recursion are not
     complete
