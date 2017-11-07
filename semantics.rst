Semantics
=========

Categorical semantics
---------------------

In the HoTT book, Appendix A.2, the formal type theory is presented by
giving three types of judgments: contexts judgments (that express that
some context is well-formed), typing judgments (that express that some
term is well-formed and has some type), and judgmental equality.

This presentation uses the fact that the type theory is assumed to come
with (a hierarchy of) universes. However, semantically, this is not
convenient to work with. So when studying semantics, type theory is
presented with context judgments, type judgments, term judgments, and
judgmental equality (for types and terms).

For such a type theory, the semantics need to interpret contexts, types,
and terms, and respect judgmental equality in the sense that if two
types (say) are judgmentally equal in the type theory, then they are
semantically equal. In syntactic models of type theory, this equality is
automatic since judgmental equality is exactly what is divided out when
constructing the model.

In categorical semantics, the contexts :math:`\Gamma` of the type theory
are interpreted by objects :math:`G` of the category :math:`\mathcal{C}`
(with the morphisms modelling substitutions). Typically, the empty
context :math:`\cdot` (rule ctx-EMP in Appendix A.2) is interpreted by
the terminal object. To interpret the context extension rule (ctx-EXT in
Appendix A.2), we need a semantic context extension. But to say what
that is, we first need to understand how to interpret types.

The types in a fixed context :math:`\Gamma` are interpreted by certain
morphism :math:`A:GA\to G` into the interpretation :math:`G` of that
context :math:`\Gamma`. (In the case of HoTT, necessarily not all
morphisms are eligible - see below.)

Finally, given a semantic context :math:`G` and a semantic type in that
context, the terms of that type are interpreted as sections
:math:`s:G \to GA` of the morphism :math:`A:GA\to G` that models the
type.

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

Awodey&Warren clarify in "Homotopy theoretic models of identity types"
(in Proposition 2.1) why we need to restrict our semantics of types.
Namely, if we start with a category of contexts which is LCCC (since we
want to interpret dependent products), and if it has identity types, and
if all morphisms are accepted as semantic types, then the identity type
is necessarily extensional.

So we want to pick out a certain subset of our maps to represent types
over contexts. One naive approach is to just take any category and ask
for extra data, so that we can tell types apart from arbitrary maps.
This approach has resulted in various definitions of this extra data:
categories with families, categories with attributes, contextual
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

-  various ways to present fibrations: types in context, sigma type,
   type family

Simplicial sets
---------------

-  presentation in terms of coface and codegeneracy maps is equivalent
   to saying "take all order-preserving morphisms"

Cubical sets
------------

-  various iterations
