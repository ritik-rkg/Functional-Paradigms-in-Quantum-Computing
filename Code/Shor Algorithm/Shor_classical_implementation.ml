open Random

(* Custom random function *)
let generate_random_number n =
  Random.self_init ();
  1 + Random.int (n/2)

(* GCD finder function *)
let rec gcd_finder a b =
  if b = 0 then (
    a
  ) else
    gcd_finder b (a mod b)


(* Brute force period finding algorithm *)
let find_period_classical x n1 =
  let rec find_period_helper n t =
    if t = 1 then
      n
    else
      let t' = (t * x) mod n1 in
      find_period_helper (n + 1) t'
  in
  find_period_helper 1 x

let rec find_even_period x n1 =
  let r = find_period_classical x n1 in (* Step three *)
  if r mod 2 = 0 then
    r
  else
    find_even_period x n1

let shors_algorithm_classical n1 =
  let x = generate_random_number (n1 + 1) in 
  if gcd_finder x n1 <> 1 then (* Step two *)
    x, 0, gcd_finder x n1, n1 / gcd_finder x n1
  else
      
    let r = find_even_period x n1 in
    let p = gcd_finder ((x * (1 lsl (r / 2)+1))) n1 in 
let q = gcd_finder ((x * (1 lsl (r / 2)-1))) n1 in
    x, r, p, q

let () =
  let n1 = 21 in
  let x, r, p, q = shors_algorithm_classical n1 in
  Printf.printf "semiprime n1 = %d, coprime x = %d, period r = %d, prime factors = %d and %d\n" n1 x r p q