:- initialization(main).

% Convert a space-separated string to a list of integers
string_to_int_list(String, List) :-
    split_string(String, " ", "", StrList),
    maplist(number_string, List, StrList).

% Predicate to reverse a list
reverse_list([], []).
reverse_list([Head|Tail], Reversed) :-
    reverse_list(Tail, RevTail),
    append(RevTail, [Head], Reversed).

% Predicate to print list elements
print_list([]) :- nl.
print_list([Head|Tail]) :-
    write(Head), write(' '),
    print_list(Tail).

% Main predicate
main :-
    % Read a line from standard input
    read_line_to_string(user_input, Input),
    % Convert the string to a list of integers
    string_to_int_list(Input, Image),
    % Process the image
    reverse_list(Image, Reversed),
    print_list(Reversed),
    halt.