% Rule to reverse a list using recursion and accumulator
reverse_list([], Acc, Acc).
reverse_list([H|T], Acc, Rev) :-
    reverse_list(T, [H|Acc], Rev).

% Wrapper rule to reverse a list
reverse_list(List, Reversed) :-
    reverse_list(List, [], Reversed).

% Main rule
main :-
    read(InputList),
    reverse_list(InputList, OutputList),
    write(OutputList),
    nl.