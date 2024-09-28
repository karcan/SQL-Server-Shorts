SELECT
	JobID, JobTitle, CandidateID, CandidateName
FROM
	Candidates AS c
	CROSS JOIN dbo.Jobs AS j
WHERE
	1 = 1
	AND NOT EXISTS (
		SELECT
			NULL
		FROM
			JobRequirements AS jr
		WHERE
		jr.JobID = j.JobID
		AND NOT EXISTS (
			SELECT NULL
			FROM CandidateSkills AS cs
			WHERE
			cs.CandidateID = c.CandidateID
			AND cs.Skill = jr.Skill
		)
	);