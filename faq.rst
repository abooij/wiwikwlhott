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
  variants of constructive logic.
- Perhaps more importantly, witnesses *are* passed around.

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

What is the difference between a type and its truncation?
---------------------------------------------------------

If :math:`X` is an arbitrary type, then its truncation :math:`\|X\|`
is inhabited (i.e. has elements) if and only if :math:`X` is.
However, by definition, :math:`\|X\|` is a proposition.

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
--------------------------------------------------------

All the basic types in MLTT seem to come with an induction or
coinduction principle, so why not the universe?

Having any kind of induction principle on the universe is undesirable
because we think of the universe as being *open*, in the sense that we
don't want to intentionally restrict the types that our theory can
handle.  For example, in a given univalent type theory, we may
introduce additional type constructors, such as certain homotopical
constructors, after a body of theory has already been formalized in
that type theory.  We want our existing theory to stay valid even if
new type constructors are introduced.
