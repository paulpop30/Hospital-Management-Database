CREATE TABLE Version (
    VersionNo INT NOT NULL PRIMARY KEY,
    ModificationDate DATETIME DEFAULT GETDATE()
);
-- Initialize with version 0
INSERT INTO Version (VersionNo) VALUES (0);
SELECT * FROM Version;