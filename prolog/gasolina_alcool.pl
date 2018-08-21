porcentagem_gasolina(GASOLINA, R) :- R is GASOLINA*0.7.

compara(ALCOOL, GASOLINA, LITROS, R) :- ALCOOL >= GASOLINA*0.7 -> R is GASOLINA*LITROS; R is ALCOOL*LITROS. 




:- initialization main.

main:-
	read_line_to_codes(user_input, A2),
	string_to_atom(A2,A1),
	atom_number(A1,A),
	
	read_line_to_codes(user_input, G2),
	string_to_atom(G2,G1),
	atom_number(G1,G),
	
	read_line_to_codes(user_input, L2),
	string_to_atom(L2,L1),
	atom_number(L1,L),
	
	compara(A, G, L, R),
	
	write(R),nl.
