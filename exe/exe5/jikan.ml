(* 目的：時間を受け取ったら、午前か午後かを返す *)
(* jikan: int -> string *)
let jikan hour =
    if hour < 12 then "午前"
                 else "午後"

(* テスト *)
let test1 = jikan 8 = "午前"
let test2 = jikan 15 = "午後"
let test3 = jikan 12 = "午後"
let test4 = jikan 0 = "午前"