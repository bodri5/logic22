Require Import Setoid.

Section consultation_exercise1.

Variables P Q R S U: Prop.
Hypothesis p1: P->Q.
Hypothesis p2: Q->P.
Hypothesis p3: (P<->Q) -> (R\/S).
Hypothesis egor: (R\/S) <-> U.
Goal U\/P.
pose proof (conj p1 p2 : (P<->Q)) as H1.
pose proof (p3 H1) as H2.
pose proof (H2) as H3.
rewrite egor in H3.
pose proof (or_introl (B:=P) H3) as H4.
exact H4.
Qed.

End consultation_exercise1.


Section consultation_exercise1_backwards.

Variables P Q R S U: Prop.
Hypothesis p1: P->Q.
Hypothesis p2: Q->P.
Hypothesis p3: (P<->Q) -> (R\/S).
Hypothesis egor: (R\/S) <-> U.
Goal U\/P.
left.
rewrite <- egor.
apply p3.
split.
exact p1.
exact p2.
Qed.

End consultation_exercise1_backwards.

