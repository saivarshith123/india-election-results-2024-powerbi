Second Runner Up Votes = 
"Total Votes: " & 
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

VAR ThirdMaxVotes = 
    MAXX(
        FILTER(
            constituencywise_details,
            constituencywise_details[Total Votes] < SecondMaxVotes
        ),
        constituencywise_details[Total Votes]
    )

RETURN
    ThirdMaxVotes
