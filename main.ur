(* fun getUsers () = return ({Id = 1, UserName = "Simon"} :: []) *)

(* fun main (): transaction page = return <xml> *)
(*   <body> *)
(*     <button onclick={fn _ => users <- rpc (getUsers ()); List.mapM (fn u => debug u.FirstName) users}/> *)
(*   </body> *)
(* </xml> *)

(* /home/simonvancasteren/ur-proj/blog/main.ur:6:29: (to 6:100) Stuck unifying these records after canceling matching pieces:
   Have:  ([FirstName = string]) ++ <UNIF:U98::{Type}>
   Need:  [Id = int, UserName = string]
*)

(* table users: { Id: int *)
(*              , UserName: string *)
(*              } *)

(* fun main2 (): transaction page = *)
(*     users <- queryL1 (SELECT users.UserName *)
(*                       FROM users); *)
(*     _ <- List.mapM (fn u => debug u.FirstName) users; *)
(*     return <xml></xml> *)

(* /home/simonvancasteren/ur-proj/blog/main.ur:18:4: (to 22:3) Stuck unifying these records after canceling matching pieces:
   Have:  ([FirstName = string]) ++ <UNIF:U48::{Type}>
   Need:  [UserName = string]
*)

(* fun main3 (): transaction page = *)
(*     countSource <- source 0; *)
(*     return <xml> *)
(*       <body> *)
(*         Hello world. *)
(*         <dyn signal={count <- signal countSource; *)
(*                      return <xml> {[count]} </xml>}/> *)
(*         <button onclick={fn _ => count <- get countSource; set countSource (count + 1)}> *)
(*           Add to counter *)
(*         </button> *)
(*       </body> *)
(*     </xml> *)




(* val anUnknownFunction (): transaction string = ... *)

(* Does this function have side effects? *)
(* Yes, its type says so, and the compiler enforces "bubbling" of side-effects *)
(* In case a function doesn't contain a transaction type, I'm sure it's pure and calling it with the same arguments will give me the same value every time *)


