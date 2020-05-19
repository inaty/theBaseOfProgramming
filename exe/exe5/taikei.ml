(* 目的：身長(m)と体重(kg)が与えられたら、BMI指数を返す *)
(* bmi : float -> float -> float *)
let bmi sintyo taiju = taiju /. sintyo /. sintyo

(* テスト *)
let test1 = bmi 1.5 49.5 = 22.0
let test2 = bmi 1.6 80.0 = 31.25

(* 目的：身長(m)と体重(kg)が与えられたら、BMI指数を計算し、その数値によって体型を返す *)
(* taikei : float -> float -> string *)
let taikei sintyo taiju =
  if bmi sintyo taiju < 18.5 then "やせ"
  else if bmi sintyo taiju < 25.0 then "標準"
  else if bmi sintyo taiju < 30.0 then "肥満"
  else "高度肥満"

(* テスト *)
let test3 = taikei 1.7 44.0 = "やせ"
let test4 = taikei 1.68 54.0 = "標準"
let test5 = taikei 1.66 56.0 = "標準"
let test6 = taikei 1.6 64.0 = "肥満"
let test7 = taikei 1.52 66.0 = "肥満"
let test8 = taikei 1.48 66.0 = "高度肥満"