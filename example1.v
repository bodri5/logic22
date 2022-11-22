Require Import Classical.

Section example0.
Variables Q R S P: Prop.
Hypothesis p1: P->Q.
Hypothesis p2: ~Q.
Goal ~P.
Proof.
  unfold not in p2.
  unfold not in |- *.
  intros H1.
  pose proof (p1 H1) as H2.
  pose proof (p2 H2) as H3.
  exact H3.
Qed.

End example0.

Section example1.
Variables P Q R E: Prop.
Hypothesis p1: P/\(Q \/ R).
Hypothesis p2: P -> (~R).
Goal Q\/E.
Proof.
pose proof ( proj1 p1) as A1.
pose proof ( proj2 p1) as A2.
destruct A2 as [A3 | A3 ]. (*after destruc
 there will be two branches, so we shoulod
 give 2 name of them *)
Show 2.
pose proof(or_introl(B:=E) A3) as A4.
exact A4.
 pose proof (p2 A1) as B3.
unfold not in B3.
pose proof (B3 A3) as B4.
destruct B4.
Qed.
End example1.


