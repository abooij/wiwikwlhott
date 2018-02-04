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
-  the cumulative hierarchy :math:`V`,
-  the surreal numbers :math:`\mathsf{No}`,
-  the free Cauchy completion of the rationals :math:`\mathbf{R}_C`,

where the computation rules for HITs is given definitionally for points
but propositionally for higher constructors.

.. todo::

   you have an unspecified ability to higher inductive types, and
   there are some examples. but it is never specified what is the
   allowed kind of hit, etc

.. _cubical_type_theory:

Cubical type theory
-------------------

See also :ref:`the proof assistant section <proof_assistant_cubical>`
and CCHM :cite:`CCHM:cubical:type:theory`.  To get started
understanding cubical type theory, it may be worth reading the demo
code from the proof assistant.

Cubical type theory is a type theory for which univalence is a
theorem.  It adds an interval *pretype* which is used to define
identity types.  This interval is necessarily not a type.  In
practice, this means that you can talk about the type :math:`I\to A`
of functions from the interval to a type, but you can not talk about
the interval :math:`I` as a free-standing type.

Cubical type theory was implemented in the **cubicaltt** proof assistant
and the agda ``--cubical`` mode.

Although univalence is a theorem, the normal form is huge (megabytes),
although it is argued that this is due to the proof rather than the
design of cubical type theory.

.. todo::

   there are variants of cubicaltt itself: "gothenburg" cubicaltt,
   computational type theory, conor mcbride's work "cubical
   adventures"

.. todo::

   NB: cubical sets != cubical TT. cubical sets is a semantics of
   *two* type theories: book hott and cubicaltt.

.. todo::

   you have identity types, and path types, and they are
   computationally not the same (although they are htpy-equiv).

HoTT as a DSL
--------------

Dan Licata `argues
<http://dlicata.web.wesleyan.edu/pubs/l17small/l17small.pdf>`_ we
should think of HoTT as a language to which we add features depending
on how we plan to use it, in the same way that we write specialized
programming languages for specific use-cases. For example, cubical
type theory is a domain-specific language for programming with Kan
cubical sets, and real-cohesive HoTT is a language for programming
topological spaces. Shulman and Riehl have a language for programming
:math:`(\infty,1)`-categories :cite:`riehl:shulman:categories`.

In this sense, HoTT becomes a class of type theories.

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

.. todo::
   computational higher type theory
