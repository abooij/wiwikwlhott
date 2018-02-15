Type-theoretical features
=========================

.. todo::
   heterogeneous Id types (used in e.g. cubicaltt)

Impredicative prop / propositional resizing
-------------------------------------------

The principle that there is only one type :math:`\Omega` of
propositions, and it is a member of :math:`\mathcal{U}_0`: so all types
of propositions :math:`\mathsf{Prop}_i` are equal, and it is a type in
the lowest universe.

Assuming this principle, the set of types of any universe is a topos.

Assuming this principle, some HITs become definable by impredicative
encoding: e.g. truncation as :math:`\prod_{P:\Omega}(X\to P)\to P`.

:ref:`UniMath <proof_assistants_libraries>` uses propositional
resizing.

.. _induction_recursion:

Induction-{induction,recursion}
-------------------------------

Induction-induction is different from induction-recursion.

See also `Andrej Bauer on CS.StackExchange
<https://cs.stackexchange.com/q/64139>`_ as well as
:cite:`forsberg:setzer:indind`.

.. _w_types:

W-types
--------

.. todo:: aka GADTs (?): every instance of a datatype declaration is
          really just a W-type.  compare with unimath (which doesn't
          assume to have them).  (well, this is not quite true: should
          also consider the computation rules.)

Initial algebras
----------------

Coinduction
-----------

.. todo::
   - pi-types
   - altenkirch's presentation?
