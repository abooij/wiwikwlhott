Variants of HoTT
================

Book HoTT
---------

Book HoTT is the type theory described in the HoTT book. It is
intensional MLTT with a hierarchy of universes indexed by positive
numerals, and additionally:

-  univalence as an axiom (and function extensionality as a theorem),
-  :math:`n`-truncation,
-  suspension types,
-  pushouts,
-  set quotients,
-  the free Cauchy completion of the rationals :math:`\mathbf{R}_C`,

where the computation rules for HITs is given definitionally for points
but propositionally for higher constructors.

Cubical type theory
-------------------

Cubical type theory is a type theory for which univalence is a theorem.
It adds an interval *pretype* which is used to define identity types.
This interval is necessarily not a type.

Cubical type theory was implemented in the **cubicaltt** proof assistant
and the agda **--cubical** mode.

Although univalence is a theorem, the normal form is huge (megabytes),
although it is argued that this is due to the proof rather than the
design of cubical type theory.

HoTT as an DSL
--------------

Dan Licata argues we should think of HoTT as a language to which we add
features depending on how we plan to use it, in the same way that we
write specialized programming languages for specific use-cases. For
example, cubical type theory is a domain-specific language for
programming with Kan cubical sets, and real-cohesive HoTT is a language
for programming topological spaces. Schulman and Riehl have a language
for programming :math:`(\infty,1)`-categories.

In this sense, HoTT becomes a class of type theories.

Impredicative prop / propositional resizing
-------------------------------------------

The principle that there is only one type :math:`\Omega` of
propositions, and it is a member of :math:`\mathcal{U}_0`: so all types
of propositions :math:`\mathsf{Prop}_i` are equal, and it is a type in
the lowest universe.

Assuming this principle, the set of types of any universe is a topos.

Assuming this principle, some HITs become definable by impredicative
encoding: e.g. truncation as :math:`\prod_{P:\Omega}(X\to P)\to P`.

UniMath uses propositional resizing in the foundational files
``Foundations/PartA.v`` and ``Foundations/PartB.v`` to avoid depending
on univalence early.

HoTT as an approach to MLTT
---------------------------

Parts of HoTT can be developed in intensional MLTT, that is, without
assuming univalence, function extensionality, propositional
extensionality, or the existence of any HITs. For example:

-  The fact that h-levels are cumulative (if :math:`A` is an
   :math:`n`-type then it is also an :math:`(n+1)`-type) does not
   require univalence.
-  The groupoid laws of identity types and iterated identity types can
   be proved by simple path inductions.
-  Some propositional truncations exist without assuming the existence
   of any HITs or propositional resizing, such as the type of
   fixed-points of any constant endomap :math:`f` on :math:`X`.
