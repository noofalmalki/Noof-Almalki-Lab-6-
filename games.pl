menu :-
    nl, write('Welcome to the Prolog Game Selection'), nl, nl,
    write('Please choose any number'), nl,
    write('--------------------------'), nl,
    write('1 - to choose running games'), nl,
    write('2 - to choose non-running games'), nl,
    write('3 - to exit'), nl, nl,
    write('-->> Enter option: '),
    read(X), play(X).

play(1) :-
    nl, write('Welcome to Running Games'), nl,
    write('1 - to choose to play with bat'), nl,
    write('2 - to choose to play with racket'), nl,
    write('3 - to choose to play with bare hands'), nl,
    write('4 - to choose football'), nl,
    write('-->> Enter option: '),
    read(Y), ropt(Y), continue.
play(2) :-
    nl, write('Welcome to Non-Running Games'), nl,
    write('1 - to choose Tai chi'), nl,
    write('2 - to choose Volleyball'), nl,
    write('3 - to choose Chess'), nl,
    write('-->> Enter option: '),
    read(Z), opt(Z), continue.
play(3) :- fin.
play(_) :-
    nl, write('Sorry, you chose the wrong option...'), nl,
    continue.

ropt(1) :- nl, write('--( You want to play cricket )--'), nl.
ropt(2) :- nl, write('--( You want to play Tennis )--'), nl.
ropt(3) :- nl, write('--( You want to play Rugby )--'), nl.
ropt(4) :- nl, write('--( You want to play Football )--'), nl.
ropt(_) :- nl, write(' -->> You chose the wrong option... :( '), nl.

opt(1) :- nl, write('--<< You want to play Tai chi >>--'), nl.
opt(2) :- nl, write('--<< You want to play Volleyball >>--'), nl.
opt(3) :- nl, write('--<< You want to play Chess >>--'), nl.
opt(_) :- nl, write('Wrong selection... :( '), nl.

continue :-
    nl, write('Do you want to go back to the main menu (yes/no)? '),
    read(Reply),
    ( Reply = yes -> menu ; fin ).
fin :- nl, write('===< End >==='), nl.
