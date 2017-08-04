valor(moto, 5).
valor(carro, 10).
valor(largo, 30).

:- initialization main.

main:-
	read_line_to_codes(user_input, A2),
	string_to_atom(A2,A1),
	valor(A1, I),
	write(I),nl.
