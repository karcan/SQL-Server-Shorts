DROP TABLE IF EXISTS dbo.CandidateSkills;
DROP TABLE IF EXISTS dbo.JobRequirements;
DROP TABLE IF EXISTS dbo.Jobs;
DROP TABLE IF EXISTS dbo.Candidates;

-- Jobs tablosunu oluþtur
CREATE TABLE dbo.Jobs (
    JobID INT PRIMARY KEY,
    JobTitle NVARCHAR(100)
);

INSERT INTO Jobs (JobID, JobTitle) VALUES
(1, 'SQL Developer'),
(2, 'SQL Analyst');

-- JobRequirements tablosunu oluþtur
CREATE TABLE dbo.JobRequirements (
    JobID INT,
    Skill NVARCHAR(100),
    FOREIGN KEY (JobID) REFERENCES Jobs(JobID)
);

INSERT INTO JobRequirements (JobID, Skill) VALUES
(1, 'SQL'),
(1, 'SQL Server'),
(2, 'SQL'),
(2, 'PostgreSQL');

-- Candidates tablosunu oluþtur
CREATE TABLE dbo.Candidates (
    CandidateID INT PRIMARY KEY,
    CandidateName NVARCHAR(100)
);

INSERT INTO Candidates (CandidateID, CandidateName) VALUES
(101, 'James'),
(102, 'Mary'),
(103, 'John'),
(104, 'Patricia'),
(105, 'Robert');

-- CandidateSkills tablosunu oluþtur
CREATE TABLE dbo.CandidateSkills (
    CandidateID INT,
    Skill NVARCHAR(100),
    FOREIGN KEY (CandidateID) REFERENCES Candidates(CandidateID)
);

INSERT INTO CandidateSkills (CandidateID, Skill) VALUES
(101, 'SQL'),
(101, 'SQL Server'),
(102, 'SQL'),
(102, 'SQL Server'),
(103, 'SQL'),
(103, 'PostgreSQL'),
(104, 'SQL'),
(104, 'PostgreSQL');
