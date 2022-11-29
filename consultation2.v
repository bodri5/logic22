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