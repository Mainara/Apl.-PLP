
pegaQuantidade([A|B], [], 0).
pegaQuantidade([A|B], [H|T], N) :- 
	A == H -> pegaQuantidade([A|B], T, Z), N is Z+1; pegaQuantidade([A|B], T, N).


:- initialization main.


main :-
	read_line_to_codes(user_input, L2),
	string_to_atom(L2,L1),
	atom_string(L1,L),
	
	read_line_to_codes(user_input, F2),
	string_to_atom(F2,F1),
	atom_string(F1,F),

	
	string_chars(L, A_L),
	string_chars(F, A_F),
	
	pegaQuantidade(A_L, A_F, N),
	write(N), nl.
	
	
