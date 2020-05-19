(* １匹あたりの鶴の足の数 *)
let tsuru_no_ashi_no_kazu = 2

(* １匹あたりの亀の足の数 *)
let kame_no_ashi_no_kazu = 4


(* 目的:鶴の数と亀の数を与えられたら、足の数の合計を返す *)
(* tsurukame_no_ashi int -> int -> int *)
let tsurukame_no_ashi tsuru_no_kazu kame_no_kazu = tsuru_no_kazu * tsuru_no_ashi_no_kazu + kame_no_kazu * kame_no_ashi_no_kazu

(* テスト *)
let test1 = tsurukame_no_ashi 0 0 = 0
let test2 = tsurukame_no_ashi 1 0 = 2
let test3 = tsurukame_no_ashi 0 1 = 4
let test4 = tsurukame_no_ashi 1 1 = 6
let test5 = tsurukame_no_ashi 3 2 = 14