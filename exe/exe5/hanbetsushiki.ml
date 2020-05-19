(* 目的：2次方程式 a*(x**2) + b * x + c = 0 の係数a,b,c(いずれも実数)を与えられたら、判別式を返す。aは0でない。 *)
(* hanbetsusiki : float -> float -> float -> float *)
let hanbetsusiki a b c = b ** 2.0 -. (4.0 *. a *. c)

(* テスト *)
let test1 = hanbetsusiki 1.0 0.0 1.0 = -. 4.0
let test2 = hanbetsusiki 0.0 1.0 0.0 = 1.0
let test3 = hanbetsusiki 1.0 1.0 1.0 = -. 3.0