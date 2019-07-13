SELECT 
    applies.cand_usrname, COUNT(cand_usrname), avg(job.salary)
FROM
    applies, job
    
WHERE job.id = applies.job_id

GROUP BY applies.cand_usrname