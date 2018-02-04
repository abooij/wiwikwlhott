Glossary
=========

.. glossary::

   type
   object
   space

      Type and space are synonyms.  Object may be used as another
      synonym, but it may also refer to the interpretation of contexts
      in the chosen :ref:`categorical_semantics`.

      See also :ref:`types_as_spaces`.

   constructor
   element
   point
   term
   proof

      See :ref:`constr_elems_pts`.


   proposition
   hproposition

      A type with the property that all its elements are equal.

   pointed type

      A pointed type is a type :math:`X` together with a point of
      :math:`X`.  In other words, a pointed type is an element of
      :math:`\sum_{X:\mathcal{U}}X`.

   principle of excluded middle
   weak principle of excluded middle

      These two axioms decide the truth of any proposition :math:`P`
      to various degrees.  Whereas the principle of excluded middle
      says that, given a proposition :math:`P`, we can decide the
      truth of :math:`P`, that is, we get :math:`P+\neg P`, the weak
      principle of excluded middle only says we can decide the truth
      of :math:`\neg P`, that is, it tells us :math:`\neg P + \neg
      \neg P`.

   context

      All mathematical claims are made in a certain context.  For
      example, ":math:`\phi` is an isomorphism that sends :math:`g` to
      :math:`h(x)+3`" only makes sense if we know that :math:`\phi`,
      :math:`g` and :math:`h` are variables of a certain type.  In the
      logic of type theory, the concept of contexts plays an extremely
      central role, and the truth and interpretation of every type and
      term depends on the context we're in.  So a context is just a
      list of fresh variables with type declarations.  For more
      information, see e.g. Appendix A.2 of the HoTT book, or a source
      on semantics of type theory such as
      :cite:`hofmann:syntax:semantics`.

   HIT
   higher-inductive type

      See chapter 6 of the HoTT book.

   n-type
   truncated type

      See chapters 3 and 7 of the HoTT book.

   axiom

      An axiom is added to a type theory by adding a new symbol to the
      language without any computation rules.  Function extensionality
      and univalence are added as axioms in section A.3.1 of the HoTT
      book.

   extensionality

      The idea that if two objects behave equally, then they are equal
      as objects.  Function extensionality specifies that functions
      are equal if they have the same input-output behavior.
