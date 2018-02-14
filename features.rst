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

{induction,recursion}-{induction,recursion}
-------------------------------------------

.. todo:: they are different, and neither is a generalisation of the
          other: see forsberg's papers

.. _w_types:

W-types
--------

.. todo:: aka GADTs (?): every instance of a datatype declaration is
          really just a W-type. compare with unimath (which doesn't
          assume to have them)

Initial algebras
----------------

Coinduction
-----------

.. todo::
   - pi-types
   - altenkirch's presentation?
