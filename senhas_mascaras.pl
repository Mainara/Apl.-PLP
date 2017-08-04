pegaLetra(N, [H|T], L) :- 
	N == 0 -> L = H;
	Z is N -1, pegaLetra(Z, T, L).


:- initialization main.

main :-
	read_line_to_codes(user_input, N1_2),
	string_to_atom(N1_2,N1_1),
	atom_number(N1_1,N1),
	
	read_line_to_codes(user_input, N2_2),
	string_to_atom(N2_2,N2_1),
	atom_number(N2_1,N2),
	
	read_line_to_codes(user_input, N3_2),
	string_to_atom(N3_2,N3_1),
	atom_number(N3_1,N3),
	
	read_line_to_codes(user_input, N4_2),
	string_to_atom(N4_2,N4_1),
	atom_number(N4_1,N4),
	
	read_line_to_codes(user_input, P1),
	read_line_to_codes(user_input, P2),
	read_line_to_codes(user_input, P3),
	read_line_to_codes(user_input, P4),
	
	string_chars(P1, A1),
	string_chars(P2, A2),
	string_chars(P3, A3),
	string_chars(P4, A4),
	
	pegaLetra(N1, A1, L1),
	pegaLetra(N2, A2, L2),
	pegaLetra(N3, A3, L3),
	pegaLetra(N4, A4, L4),
	
	string_concat(L1, L2, F),
	string_concat(F, L3, F2),
	string_concat(F2, L4, F3),
	
	write(F3), nl.
	
	
	
	
	
	
