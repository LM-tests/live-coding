# Introduction
During a 60-minute session, you have to demonstrate your coding skills.
You'll get two tasks:
1. C# algorithmic task (~40 minutes).
2. SQL task (~20 minutes).

# Prerequisites
- An IDE of your choice (Visual Studio, Rider, Notepad++, etc).
- Access to an MS SQL (local or remote).
- MS SQL account that allows running DDL scripts (you will need to create two tables and seed some data).
- A git client of your choice; you'll have to get this repository to your computer.


# Task 1: Implement an algorithm in C#
You'll have to program a raffle game.

Game rules:
- a cashier has an unlimited number of tickets;
- a participant has to buy 1 or more tickets to take part in the game;
- when the cashier sells a ticket, he keeps record of the number of tickets each participant has;
- at the end, the cashier prepares a report in the following format:
    - participant #1: 8 tickets
    - participant #2: 15 tickets
    - participant #3: 1 ticket
    - etc


Your endpoint should accept the cashier's report and pick a winner. Each ticket has equal chances to be drawn, hence the chance to become a winner is proportional to the number of tickets. 
The report is passed to your controller in a JSON format:
```json5
[
    {
        "id": {uniqueParticipantIdentifier},   	// an integer value
        "tickets": {numberOfTickets}		// an integer value
    },
    {
        "id": {uniqueParticipantIdentifier},
        "tickets": {numberOfTickets}
    },
	...
]
```

Your endpoint should return a response in the following format:

```json5
{
    "winnerId": {uniqueParticipantIdentifier}
}
```

Create an ASP.NET Core project with a Web API controller that can select a winner.

# Task 2: Write SQL queries
You're given a database with two tables.
![DB Schema](img/DB_schema.png)

_Player table:_
- Id: a unique identifier of a player.
- TeamId: specifies a player's team (a foreign key).
- Name: player's name.
- Age: player's age.
- PointPrice: an amount of money a player paid for each point they score.

_PointStatistic table:_
- Id: a unique identifier of an entry.
- PlayerId: specifies a player (a foreign key).
- Points: the number of points a player scored in a particular game.
- GameDate: a date when a game took place.

## Write the following queries:
1. Based on the statistics for the last 300 days, show IDs and names of the top 5 players who got the highest payouts.

   `Payout = PointPrice * Points`

![Top 3 players](img/TopPlayers.png)


2. Output team rosters. A roster is a list of all team players, numbered from 1 up to N. Number order should be defined in ascending order by the player's name.

![Roster example](img/Roster.png)


3. Improve the previous query so it can define the sort order based on the value of @OrderBy local variable. This variable can have only 'Age' and 'Name' values.
