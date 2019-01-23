select Doctor, Professor, Singer, Actor from
(
    SELECT ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) as RowNumber, o.*
    from occupations o
) t
pivot
(
max(name)
FOR occupation
IN ('Doctor' as Doctor, 'Professor' as Professor, 'Singer' as Singer, 'Actor' as Actor)
) p
order by Doctor, Professor, Singer, Actor;

