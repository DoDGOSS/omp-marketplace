-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: changelog_master.groovy
-- Ran at: 6/10/13 3:15 PM

-- Liquibase version: 2.0.1
-- *********************************************************************

-- Lock Database
-- Changeset changelog_7.0.groovy::7.0-1::marketplace::(Checksum: 3:70d3313cedb44a2430d183b912b1cfe8)
ALTER TABLE [dbo].[owf_properties] ADD [height] BIGINT
GO

ALTER TABLE [dbo].[owf_properties] ADD [width] BIGINT
GO

INSERT INTO [dbo].[DATABASECHANGELOG] ([AUTHOR], [COMMENTS], [DATEEXECUTED], [DESCRIPTION], [EXECTYPE], [FILENAME], [ID], [LIQUIBASE], [MD5SUM], [ORDEREXECUTED]) VALUES ('marketplace', '', GETDATE(), 'Add Column (x2)', 'EXECUTED', 'changelog_7.0.groovy', '7.0-1', '2.0.1', '3:70d3313cedb44a2430d183b912b1cfe8', 42)
GO

-- Changeset changelog_7.0.groovy::7.0-2::marketplace::(Checksum: 3:5e5d0f3fee742d246977b284fdd76d73)
ALTER TABLE [dbo].[application_configuration] ADD [help] VARCHAR(2000)
GO

INSERT INTO [dbo].[DATABASECHANGELOG] ([AUTHOR], [COMMENTS], [DATEEXECUTED], [DESCRIPTION], [EXECTYPE], [FILENAME], [ID], [LIQUIBASE], [MD5SUM], [ORDEREXECUTED]) VALUES ('marketplace', '', GETDATE(), 'Add Column', 'EXECUTED', 'changelog_7.0.groovy', '7.0-2', '2.0.1', '3:5e5d0f3fee742d246977b284fdd76d73', 43)
GO

-- Changeset changelog_7.0.groovy::7.0-3::marketplace::(Checksum: 3:ce0c3906b9e948f839ba08d5c4572ae3)
-- Transfer intelligence custom field to domain custom field
UPDATE custom_field_definition
            SET custom_field_definition.name='domain'
            WHERE custom_field_definition.name='intelligence'
GO

INSERT INTO [dbo].[DATABASECHANGELOG] ([AUTHOR], [COMMENTS], [DATEEXECUTED], [DESCRIPTION], [EXECTYPE], [FILENAME], [ID], [LIQUIBASE], [MD5SUM], [ORDEREXECUTED]) VALUES ('marketplace', 'Transfer intelligence custom field to domain custom field', GETDATE(), 'Custom SQL', 'EXECUTED', 'changelog_7.0.groovy', '7.0-3', '2.0.1', '3:ce0c3906b9e948f839ba08d5c4572ae3', 44)
GO

-- Release Database Lock
