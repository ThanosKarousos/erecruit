SELECT user.name, user.surname, etaireia.name, job.id, job.salary
FROM job, recruiter, user, etaireia
WHERE 	job.salary > 1900 
		AND job.recruiter = recruiter.username
        AND recruiter.username = user.username
		AND etaireia.AFM = recruiter.firm