(* 目的：2次方程式 a*(x**2) + b * x + c = 0 の係数a,b,c(いずれも実数)を与えられたら、判別式を返す。aは0でない。 *)
(* hanbetsusiki : float -> float -> float -> float *)
let hanbetsusiki a b c = b ** 2.0 -. (4.0 *. a *. c)

(* テスト *)
let test1 = hanbetsusiki 1.0 0.0 1.0 = -. 4.0
let test2 = hanbetsusiki 0.0 1.0 0.0 = 1.0
let test3 = hanbetsusiki 1.0 1.0 1.0 = -. 3.0

(* 目的：2次方程式 a*(x**2) + b * x + c = 0 の係数a,b,c(いずれも実数)を与えられたら、解の数を返す。aは0でない。 *)
(* kai_no_kazu : float -> float -> float -> int *)
let kai_no_kazu a b c =
  if hanbetsusiki a b c > 0.0 then 2
  else if hanbetsusiki a b c = 0.0 then 1
  else 0

(* テスト *)
let test4 = kai_no_kazu 1.0 0.0 1.0 = 0
let test5 = kai_no_kazu 1.0 2.0 1.0 = 1
let test6 = kai_no_kazu 0.0 1.0 0.0 = 2