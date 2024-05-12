  open Complex

	type st = Tree of st*st | Node of Complex.t

  val make : Complex.t list -> st

  val state_of : int -> int -> st

  val empty : int -> st

  val n_bits : st -> int

  val zero : st

  val one : st

  val tensor : st list -> st

  val normalize : st -> st

  val add : st -> st -> st

  val phase : float -> st -> st

  val coeff : st -> Complex.t list

  val val_string : st -> string
