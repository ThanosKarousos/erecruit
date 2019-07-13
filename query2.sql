SELECT candidate.username, candidate.certificates, count(degr_title), avg(grade)
FROM candidate, has_degree
WHERE has_degree.cand_usrname = candidate.username
GROUP BY has_degree.cand_usrname
HAVING count(degr_title) > 1