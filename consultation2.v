Require Import Setoid.

Section Exercise13.
Variables M N O P: Prop.
Hypothesis p1: (M\/N)/\(O\/P).
Hypothesis p2: N -> P.
Hypothesis p3: ~P.
Goal M/\O.
Proof.
unfold not in p3.
pose proof (proj1 p1) as H1.
pose proof (proj2 p1) as H2.
destruct H2 as [ H3 |  H3].
destruct H1 as [ H4 |  H4].
pose proof (conj H4 H3) as H5.
exact H5.
pose proof(p2 H4) as H6.
pose proof (p3 H6) as Hfalse.
destruct Hfalse.
pose proof (p3 H3) as Hfalse.
destruct Hfalse.
Qed.
End Exercise13.

Section Exercise12.
Variables S W: Prop.
Hypothesis p1: S <-> W.
Goal S <-> (W/\S).
Proof.
  assert (S -> W/\S) as H4. intros H1.
  pose proof (H1) as H2.
  rewrite p1 in H2.
  pose proof (conj H2 H1) as H3.
  exact H3.
  assert (W/\S -> S) as H5. intros H1.
  pose proof (proj2 H1) as H2.
  exact H2.
  pose proof (conj H4 H5: S <-> W /\ S) as H6.
  exact H6.
Qed.
End Exercise12.


Section Exercise12mostlybackwards.
Variables S W: Prop.
Hypothesis p1: S <-> W.
Goal S <-> (W/\S).
Proof.
  split.
  intros H1.
  split.
  rewrite <- p1.
  exact H1.
  exact H1.
 intros H1.
  pose proof (proj2 H1) as H2.
(*this was a forward step*)
  exact H2.
Qed.
End Exercise12mostlybackwards.













