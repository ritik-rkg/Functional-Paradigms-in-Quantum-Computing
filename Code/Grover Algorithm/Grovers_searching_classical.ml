(* This function is to initialize the quantum state (superposition) *)
let initialize_state num_states =
  let sqrt_n = 1.0 /. sqrt (float_of_int num_states) in
  Array.init num_states (fun _ -> sqrt_n)

(* Here we are applying the oracle (marking) operation *)
let apply_oracle amplitudes marked_states =
  Array.iteri (fun i amplitude ->
    if marked_states.(i) then
      amplitudes.(i) <- -.amplitude
  ) amplitudes

(* Function to perform the inversion about the mean operation *)
let invert_about_mean amplitudes =
  let mean = Array.fold_left (+.) 0.0 amplitudes /. float_of_int (Array.length amplitudes) in
  Array.iteri (fun i amplitude ->
    amplitudes.(i) <- 2.0 *. mean -. amplitudes.(i)
  ) amplitudes

(* Function to simulate Grover's algorithm *)
let grover_algorithm amplitudes marked_states num_iterations =
  for _ = 1 to num_iterations do
    apply_oracle amplitudes marked_states;
    invert_about_mean amplitudes;
  done

let () =
  (* Creating the number of states and the number of qubits *)
  let num_states = 8 in (* Example: 3 qubits *)
  let num_qubits = int_of_float (log (float_of_int num_states)) in

  (* Initializing the quantum state (superposition) *)
  let amplitudes = initialize_state num_states in

  (* Defining the marked states *)
  let marked_states = Array.make num_states false in
  (* Example: Mark one of the states as a solution *)
  marked_states.(3) <- true;

  (* Running Grover's algorithm for 2 iterations*)
  let num_iterations = 2 in 
  grover_algorithm amplitudes marked_states num_iterations;

  (* This will print the final quantum state *)
  print_endline "Final quantum state after Grover iterations:";
  Array.iteri (fun i amplitude ->
    print_string "|";
    for j = num_qubits - 1 downto 0 do
      print_int ((i lsr j) land 1)
    done;
    print_endline ("> : " ^ string_of_float amplitude)
  ) amplitudes
