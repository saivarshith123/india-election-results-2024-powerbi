runner up % of votes = 
"Votes share: " &
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
    SecondMaxVotes
& "%"