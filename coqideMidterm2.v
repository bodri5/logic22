(* Mathematical Logic second midterm
   computer exercises

Your Name:

Your Neptun code:

Send back the solutions to
bodri.mh3@gmail.com


*)

(* It is enough to solve any three of these
exercises to get maximum points for the computer part
of the exam. *)

Require Import Classical.
Require Import Setoid.

Parameters P Q R S E: Prop.

Section exercise1a.
Hypothesis pr1: P -> Q.
Hypothesis pr2: Q /\ (R \/ P).
Hypothesis pr3: ~(Q \/ R).
Goal False.

(*Write your solution here.*)

Abort. (*You can replace Abort with Qed
         when finished with the proof.*)
End exercise1a.

Section exercise1b.
Hypothesis pr1: ~(P<->Q).
Goal ~(P/\Q).

(*Write your solution here.*)

Abort.
End exercise1b.


Section exercise1c.
Hypothesis pr1: P /\ (Q \/ R).
Hypothesis pr2: P -> ~R.
Goal Q \/ E.

(*Write your solution here.*)

Abort.
End exercise1c.

Section exercise1d.
Hypothesis pr1: P -> Q.
Hypothesis pr2: P -> R.
Hypothesis pr3: Q -> (R -> S).
Goal P -> S.

(*Write your solution here.*)

Abort.
End exercise1d.


Section exercise1e.

Hypothesis pr1: (P \/ ~ Q) <-> (R /\ S ).
Hypothesis pr2: E.
Hypothesis pr3: (~E \/ S).
Goal R -> Q -> P.

(*Write your solution here.*)

Abort.
End exercise1e.

