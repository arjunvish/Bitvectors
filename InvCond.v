From BV Require Import BVList.

Import RAWBITVECTOR_LIST.

Require Import List Bool NArith Psatz (*Int63*) ZArith Nnat.

(* Practice:
 forall x : bitvector, size(x) >= 0*)
Theorem testbv : forall (x : bitvector), N.to_nat(size x) >= 0.
Proof.
induction x.
- auto.
- Admitted.


(*Addition*)
(* x + s = t <=> x = t - s *)
Theorem bvadd : forall (x s t : bitvector), iff ((bv_add x s) = t) (x = (bv_subt t s)).
Proof.
Admitted.


(*Multiplication*)
(* x.s = t <=> (-s | s) & t = t *)
Theorem bvmult1 : forall (x s t : bitvector), iff ((bv_mult x s) = t) ((bv_and (bv_or (bv_not s) s) t) = t).
Proof.
Admitted.

(* x.s != t <=> s != 0 or t != 0 *)
(*Theorem bvmult2 : forall (x s t : bitvector), iff (~((bv_mult x s) = t)) ().*)


(*Mod*)
(* x mod s = t <=> ~(-s) >=u t *)

(* x mod s != t <=> s != 1 or t != 0 *)

(* s mod x = t <=> (t + t - s) & s >=u t *)

(* s mod x != t <=> s != 0 or t != 0 *)


(*Division*)
(* x / s = t <=> (s.t) / s = t *)

(* x / s != t <=>  s != 0 or t!= ~0*)

(* s / x = t <=> s / (s / t) = t *)

(* s / x != t  and size(s) = 1 <=> s & t = 0 *)

(* s / x != t  and size(s) != 1 <=> T *)


(*And*)
(* x & s = t <=> t & s = t*)
Theorem bvand1 : forall (x s t : bitvector), iff ((bv_and x s) = t) ((bv_and t s) = t).
Proof.
Admitted.

(* x & s != t <=> s != 0 or t != 0 *)


(*Or*)
(* x | s = t <=> t & s = t *)
Theorem bvor1 : forall (x s t  :bitvector), iff ((bv_or x s) = t) ((bv_and t s) = t).
Proof.
Admitted.

(* x | s != t <=> s != ~0 or t != ~0 *)


(**)