(* １匹あたりの鶴の足の数(本) *)
let ashi_no_kazu = 2

(* 目的:鶴の数が与えられたら、足の本数を返す *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi tsuru_no_kazu = tsuru_no_kazu * ashi_no_kazu

(* テスト *)
let test1 = tsuru_no_ashi 1 = 2
let test2 = tsuru_no_ashi 5 = 10
let test3 = tsuru_no_ashi 0 = 0