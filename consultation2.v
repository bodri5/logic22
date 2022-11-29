Require Import Setoid.

Section Exercise13.
Variables M N O P: Prop.
Hypothesis p1: (M\/N)/\(O\/P).
Hypothesis p2: N -> P.
Hypothesis p3: ~P.
Goal M/\O.
unfold not in p3.
pose proof (proj1 p1) as H1.
pose proof (proj2 p1) as H2.
destruct H2.
destruct H1.
pose proof (conj H0 H).
exact H1.
pose proof(p2 H0).
pose proof (p3 H1).
destruct H2.
pose proof (p3 H).
destruct H0.
Qed.