% Day 2 Self Study

% Reverse a list

% The reverse of an empty list is an empty list.
myreverse([], []).

% The reverse of a non-empty list with head Head and tail Tail
% has the properties
% 1. The reverse of Tail is RTail
% 2. The reverse of the whole list is RTail with Head appended at the end
myreverse([Head|Tail], Reversed) :- myreverse(Tail, RTail), append(RTail, [Head], Reversed).

% Find minimum

% An empty list does not have a minimum element.
mymin([], nil).
% The minimum of a single-element list is that element.
mymin([H], H).
% The minimum of a list with head H and tail T is the minimum of the tail T and element H.
mymin([H|T], Min) :- mymin(T, MinT), Min is min(H, MinT).

% Sort a list using selection sort

% A list is sorted if it is empty.
mysort([], []).
% A non-empty list is sorted if 
% its head element is the minimumm element of List
% and the rest of the list without Min is sorted.
mysort(List, [Min|SortedTail]) :- mymin(List, Min), delete(List, Min, Rest), mysort(Rest, SortedTail).