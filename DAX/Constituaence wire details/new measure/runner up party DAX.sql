Runner Up party = 
VAR MaxVotes =
    MAX(constituencywise_details[Total Votes])

VAR SecondMaxVotes =
    MAXX(
        FILTER(
            constituencywise_details,
            constituencywise_details[Total Votes] < MaxVotes
        ),
        constituencywise_details[Total Votes]
    )

RETURN
    CALCULATE(
        MAX(constituencywise_details[Party]),
        constituencywise_details[Total Votes] = SecondMaxVotes
    )
