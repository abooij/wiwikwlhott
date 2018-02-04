Proof assistants
================

.. todo::
   add redprl

   https://github.com/RedPRL/sml-redprl

Differences in notation
---------------------------------------------

Scientists use a variety of notations for :math:`\Pi`- and
:math:`\Sigma`-types, primarily depending on the field they are working in.

The **mathematical** notation for these types normally looks like

.. math::
   \prod_{x:A}B(x) \qquad \sum_{x:A}B(x)

Here, :math:`B:A\to\mathcal{U}` is a dependent type, seen as a
function, evaluated at the point :math:`x:A`.

In **logic**, one often sees

.. math::
   \prod_{x:A}B \qquad \sum_{x:A}B

where :math:`A` and :math:`B` are now seen as syntactic expressions,
and in particular the expression :math:`B` may use the variable
:math:`x` of type :math:`A`.  Hence the "evaluation" of :math:`B` at
:math:`x` is dropped, compared to the mathematical notation.

In **Agda-style** proof assistants, :math:`\Pi`-types are denoted

.. code-block:: agda

   (x : A) -> B x

and :math:`\Sigma`-types as

.. code-block:: agda

   (x : A) * B x

The motivation behind these notations is that ``(x : A) -> B x`` is
like a visual generalization of the independent function type ``A ->
B``, and that ``(x : A) * B x`` is a visual generalization of the
independent product type ``A * B``.

In **Coq-style** proof assistants, the :math:`\Pi`-types are denoted

.. code-block:: coq

   forall x : A, B x

which may be somewhat confusing since the "forall-quantifier"
:math:`\forall` is used in HoTT solely for logical notation of
propositions as in Definition 3.7.1 in the HoTT book.
:math:`\Sigma`-types are written as in Agda, but also as

.. code-block:: coq

   { x : A & B x }

which reminds of set comprehension.  However, this notation is used
rarely, unless each ``B x`` is a proposition.

Many libraries define their own notation for :math:`\Pi`- and
:math:`\Sigma`-types, commonly making use of unicode support of the
underlying language.

Finally, inductively defined types in proof assistants correspond to
:ref:`w_types`.

.. todo::

   is the last thing true? up to homotopy, maybe. computational
   behavior is not specified the same way.

Coq
---

.. todo:: say something about ``Prop`` and ``Set`` and ``Type``

Coq consists of several layers of programming languages. The most
famous one is the tactic language that is used to prove theorems. But
since theorems are interpreted by types, and proofs by elements of
those types, really tactics just construct terms.  For example:

.. code-block:: coq

   Definition decidablepaths_equiv
              (A : Type) {B : Type} (f : A -> B) `{IsEquiv A B f}
   : DecidablePaths A -> DecidablePaths B.
   Proof.
     intros d x y.
     destruct (d (f^-1 x) (f^-1 y)) as [e|ne].
     - apply inl. exact ((eisretr f x)^ @ ap f e @ eisretr f y).
     - apply inr; intros p. apply ne, ap, p.
   Defined.

prints:

.. code-block:: coq

   decidablepaths_equiv@{Top.115 Top.116} =
   fun (A B : Type) (f : A -> B) (H : IsEquiv f) (d : DecidablePaths A) (x y : B) =>
   let d0 := d (_^-1 x) (_^-1 y) in
   match d0 with
   | inl e => inl (((eisretr _ x)^ @ ap f e) @ eisretr _ y)
   | inr ne => inr (fun p : x = y => ne (ap f^-1 p))
   end

With some imagination, it can be seen that this is just a
type-theoretical expression: ``fun`` indicates a lambda expression,
``match`` is a case analysis, etcetera.

(The above is an example from the :ref:`hott_coq`.)

Agda
----

.. _proof_assistant_cubical:

cubicaltt
---------

.. todo::
   -  interval is abstract (as opposed to, say, an interval of reals):
      cubical set (though necessarily *not* Kan, see semantics section)
   -  earlier iteration: cubical

.. _proof_assistants_libraries:

Libraries
---------

UniMath
^^^^^^^

In February 2010, Vladimir Voevodsky started writing the *Foundations*
library to make precise his ideas collected in *A very short note on
the homotopy λ-calculus*.  Other libraries were
subsequently built on top of this.  UniMath was founded in spring
2014, by combining some libraries.

See also Benedikt Ahrens' `UniMath: its origins, present, and future
<https://unimath.github.io/bham2017/UniMath_origins-present-future.pdf>`_.

The code can be found on the `UniMath github <https://github.com/UniMath/UniMath/>`_.

.. _hott_coq:

HoTT Coq library
^^^^^^^^^^^^^^^^^^^^

Compared to UniMath, this library uses more features of Coq.  See the
paper for a description :cite:`bauer:hott:library`.

The code can be found on the `HoTT github <https://github.com/HoTT/HoTT/>`_.

HoTT agda library
^^^^^^^^^^^^^^^^^^^^

The code can be found on the `HoTT-Agda github <https://github.com/HoTT/HoTT-Agda/>`_.

cubicaltt
^^^^^^^^^^^^^

The cubicaltt compiler, that implements :ref:`cubical_type_theory`,
ships with code implementing various parts of HoTT.

The code can be found on the `cubicaltt github
<https://github.com/mortberg/cubicaltt/tree/master/examples>`_.

Lean
^^^^

The Lean proof assistant includes HoTT libraries (work of Floris van
Doorn et al.).

Lean 2 supports hott and has a (rather large) hott library, if you
include the spectral libray.

Lean 3 doesn't support hott directly, because of changes to the
kernel, but nonetheless there is an experimental library for this.

Other libraries
^^^^^^^^^^^^^^^

- The `cubical agda library by Dan Licata et
  al. <https://github.com/dlicata335/hott-agda>`_, which aims to
  optimize some homotopical proofs in a type theory in which the
  higher constructors of HITs satisfy a *typal* computation rule,
  rather than a judgmental one.
- Various scientists have a personal library for doing HoTT.
