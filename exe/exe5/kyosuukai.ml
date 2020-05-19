(* 目的：2次方程式 a*(x**2) + b * x + c = 0 の係数a,b,c(いずれも実数)を与えられたら、判別式を返す。aは0でない。 *)
(* hanbetsusiki : float -> float -> float -> float *)
let hanbetsusiki a b c = b ** 2.0 -. (4.0 *. a *. c)

(* テスト *)
let test1 = hanbetsusiki 1.0 0.0 1.0 = -. 4.0
let test2 = hanbetsusiki 0.0 1.0 0.0 = 1.0
let test3 = hanbetsusiki 1.0 1.0 1.0 = -. 3.0

(* 目的：2次方程式 a*(x**2) + b * x + c = 0 の係数a,b,c(いずれも実数)を与えられたら、虚数解を持つかどうか判定する。aは0でない。 *)
(* kyosuukai : float -> float -> float -> bool *)
let kyosuukai a b c =
  if hanbetsusiki a b c < 0.0 then true
                              else false

(* テスト *)
let test4 = kyosuukai 0.0 1.0 0.0 = false
let test5 = kyosuukai 1.0 0.0 1.0 = true
let test6 = kyosuukai 1.0 2.0 1.0 = false