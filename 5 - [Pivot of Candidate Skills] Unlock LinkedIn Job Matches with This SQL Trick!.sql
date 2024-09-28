SELECT 
Candidate		= CONCAT(
					'(',CandidateID,')',
					CandidateName
				),
[SQL]			= IIF(
					[SQL] IS NOT NULL
					, N'√', NULL
				),
[SQL Server]	= IIF(
					[SQL Server] IS NOT NULL
					, N'√', NULL
				),
[PostgreSQL]	= IIF(
					[PostgreSQL] IS NOT NULL
					, N'√', NULL
				)
FROM (
    SELECT c.CandidateID, c.CandidateName, cs.Skill
    FROM Candidates c
    LEFT JOIN CandidateSkills cs ON c.CandidateID = cs.CandidateID
) src
PIVOT (
    MAX(Skill) FOR Skill IN ([SQL], [SQL Server], [PostgreSQL])
) pvt;