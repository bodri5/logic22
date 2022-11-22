Require Import Setoid.

Section example0.
Variables Q R S P: Prop.
Hypothesis p1: P->Q.
Hypothesis p2: ~Q.
Goal ~P.
Proof.
  unfold not in p2.
  unfold not in |- *.
  pose proof (p2: ~Q).
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

Section example2.
(* conjunction is commutative *)
Variables P Q: Prop.
Hypothesis p1: P/\Q.
Goal Q/\P.
Proof.
(* Write your proof here *)
Abort.  (* Qed. *)
End example2.


Section example3.
(* disjunction is commutative *)
Variables P Q: Prop.
Hypothesis p1: P\/Q.
Goal Q\/P.
Proof.
(* Write your proof here *)
Abort.  (* Qed. *)
End example3.

Section example4.
Variables P Q R: Prop.
(* distributive law *)
Hypothesis p1: P/\(Q\/R).
Goal (P/\Q)\/(P/\R).
Proof.
(* write your proof here *)
Abort. (* Qed. *)

End example4.

Section example5.
Variables P Q R: Prop.
(* The other direction. *)
Hypothesis p1: (P/\Q)\/(P/\R).
Goal P/\(Q\/R).
Proof.
(* write your proof here *)
Abort. (* Qed. *)

End example5.

Section example6.
Variables P Q: Prop.
(* de Morgan 1 *)
Goal ~P /\ ~Q -> ~(P\/Q).
Proof.
(* write your proof here *)
Abort. (* Qed. *)

End example6.

Section example7.
Variables S V R Q: Prop.
(*  *)
Hypothesis p1: S -> (V/\R).
Hypothesis p2: V -> ~(R/\Q).
Goal S -> ~Q.
Proof.
(* write your proof here *)
Abort. (* Qed. *)
End example7.

Section exampleHard1.
Variables P Q: Prop.
(* *)
Goal (P->Q)->((~P->Q)->Q).
(* write your proof here *)
Abort. (* Qed. *)
End exampleHard1.

Section exampleHard2.
Variables P Q: Prop.
Goal ((P->Q)->P)->P.
Proof.
(* write your proof here *)
give_up.
Abort. (* Qed. *)
End exampleHard2.




