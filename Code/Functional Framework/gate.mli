(* ALSO IMPORT STATE MODULE HERE *)
(* open State *)

  type t

  val gate_of : string -> t

  val control : int list -> t -> t
  
  val product : t list -> t

  val gate_to_string : t -> string

  val string_to_gate : string -> t
