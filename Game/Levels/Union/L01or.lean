import Game.Levels.Inter

open Set

namespace STG4

variable {U : Type}

World "Union"
Level 1
Title "Or"

Introduction
"
For working with unions, the important logical word is \"or\".

If `P` and `Q` are statements, then `P ∨ Q` means \"P or Q or both\".  To enter the
symbol `∨`, type `\\or`.  For the statement `P ∨ Q` to be true, either `P` or `Q` must
be true.  This gives us two ways to prove a statement of this form.  If you have
`h : P`, then `Or.inl h` can be used to prove `P ∨ Q`.  If you have `h : Q`, then
`Or.inr h` proves `P ∨ Q`.
"

/-- `P ∨ Q` means "P or Q or both".  To enter the symbol `∨`, type `\or`. -/
DefinitionDoc or as "∨"

NewDefinition or

TheoremTab "Logic"

/-- If you have `h : P`, then `Or.inl h` can be used as a proof of `P ∨ Q`, for
any statement `Q`. -/
TheoremDoc Or.inl as "Or.inl" in "Logic"

/-- If you have `h : Q`, then `Or.inr h` can be used as a proof of `P ∨ Q`, for
any statement `P`. -/
TheoremDoc Or.inr as "Or.inr" in "Logic"

NewTheorem Or.inl Or.inr

/-- Suppose $x \in A$, and $B$ is any set.  Then $x \in A ∨ x ∈ B$. -/
Statement (x : U) (A B : Set U) (h : x ∈ A) : x ∈ A ∨ x ∈ B := by
  Hint (hidden := true) "`Or.inl h` is a proof of the goal."
  exact Or.inl h

Conclusion
"
Now we're ready to start proving theorems about unions.
"
