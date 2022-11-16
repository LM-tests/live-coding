CREATE DATABASE Sport;
GO

USE [Sport]
GO

CREATE TABLE [dbo].[Player](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [TeamId] [int] NOT NULL,
    [Name] [nvarchar](50) NOT NULL,
    [Age] [int] NOT NULL,
    [PointPrice] [int] NOT NULL,
    CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED ([Id] ASC)
    )
    GO

CREATE TABLE [dbo].[PointStatistic](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [PlayerId] [int] NOT NULL,
    [Points] [int] NOT NULL,
    [GameDate] [datetime2](7) NOT NULL,
    CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED ([Id] ASC)
    )
    GO

    INSERT INTO Player (TeamId, Name, Age, PointPrice) VALUES (1, 'John', 25, 1000)
    INSERT INTO Player (TeamId, Name, Age, PointPrice) VALUES (1, 'Mike', 30, 2000)
    INSERT INTO Player (TeamId, Name, Age, PointPrice) VALUES (2, 'Peter', 20, 1000)
    INSERT INTO Player (TeamId, Name, Age, PointPrice) VALUES (2, 'Paul', 25, 2000)
    INSERT INTO Player (TeamId, Name, Age, PointPrice) VALUES (2, 'Mary', 30, 3000)
    INSERT INTO Player (TeamId, Name, Age, PointPrice) VALUES (3, 'Jack', 20, 1000)
    INSERT INTO Player (TeamId, Name, Age, PointPrice) VALUES (3, 'Jill', 25, 2000)

    INSERT INTO PointStatistic (PlayerId, Points, GameDate) VALUES (1, 9, '2022-01-01')
    INSERT INTO PointStatistic (PlayerId, Points, GameDate) VALUES (1, 5, '2022-08-02')
    INSERT INTO PointStatistic (PlayerId, Points, GameDate) VALUES (1, 7, '2020-09-13')
    INSERT INTO PointStatistic (PlayerId, Points, GameDate) VALUES (2, 10, '2022-11-21')
    INSERT INTO PointStatistic (PlayerId, Points, GameDate) VALUES (2, 8, '2022-01-02')
    INSERT INTO PointStatistic (PlayerId, Points, GameDate) VALUES (2, 6, '2021-01-03')
    INSERT INTO PointStatistic (PlayerId, Points, GameDate) VALUES (3, 9, '2022-01-04')
    INSERT INTO PointStatistic (PlayerId, Points, GameDate) VALUES (4, 7, '2021-01-05')