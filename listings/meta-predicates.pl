not(Goal) :- Goal, !, fail.          % negation as failure

or(Goal, _) :- Goal.                 % disjunction (left case)
or(_, Goal) :- Goal.                 % disjunction (right right)

if(Cond, Then, _) :- Cond, !, Then.  % if-then-else (then case)
if(_, _, Else) :- Else.              % if-then-else (else case)