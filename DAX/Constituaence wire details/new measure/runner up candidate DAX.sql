Runner Up Candidate = 
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
        MAX(constituencywise_details[Candidate]),
        constituencywise_details[Total Votes] = SecondMaxVotes
    )
