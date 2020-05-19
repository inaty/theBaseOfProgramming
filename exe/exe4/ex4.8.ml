(* １匹あたりの鶴の足の数*)
let tsuru_no_ashi_no_kazu = 2

(* １匹あたりの亀の足の数*)
let kame_no_ashi_no_kazu = 4

(* 目的：鶴亀算を行う。つまり、鶴と亀の数の合計と足の数の合計を与えたら、鶴の数を返す *)
(* tsurukame : int -> int -> int *)
let tsurukame tsuru_kame_no_kazu ashi_no_kazu = (2 * tsuru_kame_no_kazu) - (ashi_no_kazu / 2)

(* テスト *)
let test1 = tsurukame 1 2 = 1
let test2 = tsurukame 2 8 = 0
let test3 = tsurukame 3 8 = 2