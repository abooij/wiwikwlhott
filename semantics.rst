Semantics
=========

.. _categorical_semantics:

Categorical semantics
---------------------

In the HoTT book, Appendix A.2, the formal type theory is presented by
giving three types of judgments:

- contexts judgments (that express that some context is well-formed),
- typing judgments (that express that some term is well-formed and has
  some type), and
- appropriate judgmental equality rules.

In this presentation, the elements of universes are exactly types.
This is known as a type universe à la Russell.

However, semantically, a different presentation is preferred, in which
the elements of universes are thought of as *codes* for types, which
may be instantiated to obtain actual types.  This is known as a type
universe à la Tarski.  So when studying semantics, type theory is
presented by:

- context judgments(that express that some context is well-formed),
- type judgments (that express that some expression is a well-formed type),
- term judgments (that express that some term is well-formed and has
  some type), and
- appropriate judgmental equality rules (for both types and terms).

The semantics of a type theory in this second style needs to interpret
the three kinds of objects, namely contexts, types, and terms, and it
needs to respect judgmental equality, in the sense that if two types
(say) are judgmentally equal in the type theory, then they are
semantically equal.

One way to construct a semantics of type theory is to take the
interpretations to be the syntax itself, modulo judgmental equality
rules.  In such a syntactic models of type theory, the semantics
respects judgmental equality automatically, since judgmental equality
is exactly what is divided out when constructing the model.

In categorical semantics, the contexts :math:`\Gamma` of the type
theory are interpreted by objects :math:`G` of some fixed category
:math:`\mathcal{C}`, with the morphisms modelling
substitutions. Typically, the empty context :math:`\cdot` (rule
ctx-EMP in Appendix A.2) is interpreted by the terminal object. To
interpret the context extension rule (ctx-EXT in Appendix A.2), we
need a semantic context extension. But to say what that is, we first
need to understand how to interpret types.

The types in a fixed context :math:`\Gamma` are interpreted by certain
morphism :math:`A:GA\to G` into the interpretation :math:`G` of that
context :math:`\Gamma`. (In the case of HoTT, necessarily not all
morphisms are eligible - see below.)

Finally, given a semantic context :math:`G` and a semantic type in that
context, the terms of that type are interpreted as sections
:math:`s:G \to GA` of the morphism :math:`A:GA\to G` that models the
type.

For more information on categorical semantics of type theory with a
universe à la Tarski, see e.g. Hoffmann
:cite:`hofmann:syntax:semantics`.

Presheaf semantics
------------------

We now consider categorical semantics in the case that the underlying
category :math:`\mathcal{C}` of our semantics is a presheaf category
:math:`\mathbf{Set}^{\mathcal{D}^{op}}`.

Usually, the semantics are somewhat obscured as semantic types are
presented differently: instead of maps into contexts, a semantic type
:math:`A` in the semantic context :math:`G` (where :math:`G` is an
object of our category, that is, a presheaf
:math:`G:\mathcal{D}^{op}\to\mathbf{Set}`) is defined to be a family of
sets :math:`(A_{d,g})_{d\in\mathcal{D},\,g\in G(d)}` together with maps
:math:`(A_{d',g'}\to A_{d,G(i)(g')})_{i:d\to d',\, g'\in G(d')}`.
Additionally, these families are supposed to satisfy certain
functoriality conditions.

We can translate such families to our presentation above by defining a
new presheaf :math:`GA` by :math:`GA(d):=\bigsqcup_{g\in G(d)}A_{d,g}`,
and similarly for the morphisms, and with the natural transformation
:math:`A:GA\to G` sending all elements of :math:`A_{d,g}` to
:math:`g\in G(d)`.

Conversely, given a presheaf :math:`GA` and a natural transformation
:math:`A:GA\to G`, we define :math:`A_{d,g}:=A^{-1}_d(g)` (noting that
:math:`A_{d,g}\subseteq GA(d)`), and the map
:math:`A_{d',g'}\to A_{d,G(i)(g')}` is defined by restriction of
:math:`GA(i):GA(d')\to GA(d)`.

A further complication may be that people consider semantics in
presheafs on an opposite category, in which case tracing the
:math:`op`\ s around can take some effort.

Categories with families and other structure
--------------------------------------------

As a naive attempt at finding semantics for type theory, we interpret
a context :math:`\Gamma` by an object :math:`G` of some ordinary
category :math:`\mathcal{C}`, and interpret types in :math:`\Gamma` by
a map into :math:`G`.  However, such a naive interpretation will not
allow us to interpret univalent type theories.  In Awodey&Warren
:cite:`awodey:warren:models`, Proposition 2.1, we see why we need to
restrict our semantics of types.  Namely, if we start with a category
of contexts which is LCC (since we want to interpret dependent
products), and if it has identity types, and if all morphisms are
accepted as semantic types, then the identity type is necessarily
extensional.

Instead, we want to pick out a certain subset of our maps to represent
types over contexts.  One naive approach is to just take any category
and ask for extra data, so that we can tell types apart from arbitrary
maps.  This approach has resulted in various definitions of this extra
data: categories with families, categories with attributes, contextual
categories (aka C-system), display map categories, and comprehension
categories.

These various definitions are unsatisfying since they are **not**
invariant under equivalence of the underlying category. For example,
there is no contextual category on the 1-object 1-morphism category,
since it needs countably many copies even of the terminal object, but
there *is* a contextual category in which all objects are terminal.

Fibrations
----------

(NB: In category theory, there is the notion of Grothendieck fibration,
which is sometimes referred to plainly as a fibration. It is not the
same as this concept.)

In categorical semantics of HoTT, we need to distinguish arbitrary maps
between the objects (namely *context morphisms* or *substitutions*,
since the objects represent contexts) from maps that represent types
*over* a context (as types in a context are represented by maps into
that context).

Usually, we specify this by saying which maps are *fibrations*, and more
generally we show that the category is a model category. So what it
means for a certain semantic object to be a fibration depends on the
chosen model category structure. For example, in simplicial sets, a map
is defined to be a fibration if it is Kan. Because of the importance of
the Kan condition, in semantics of type theory, we sometimes refer to
the fibrations as *Kan fibrations*.

So we say which maps are fibrations, so that we can define a
corresponding (say) CwF out of the model category, which has as the
types exactly the *fibrations* into the context.

.. todo:: various ways to present fibrations: types in context, sigma
          type, type family

Simplicial sets
---------------

.. todo:: presentation in terms of coface and codegeneracy maps is
          equivalent to saying "take all order-preserving morphisms"

Cubical sets
------------

.. todo:: various iterations
