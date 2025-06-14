Second Runner Up % of Votes = 
"Total Votes: " & 
VAR MaxVotes = 
    MAX(constituencywise_details[% of Votes])

VAR SecondMaxVotes = 
    MAXX(
        FILTER(
            constituencywise_details,
            constituencywise_details[% of Votes] < MaxVotes
        ),
        constituencywise_details[% of Votes]
    )

VAR ThirdMaxVotes = 
    MAXX(
        FILTER(
            constituencywise_details,
            constituencywise_details[% of Votes] < SecondMaxVotes
        ),
        constituencywise_details[% of Votes]
    )

RETURN
    ThirdMaxVotes

& "%"
