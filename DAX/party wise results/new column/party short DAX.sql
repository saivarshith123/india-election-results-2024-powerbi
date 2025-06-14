Party Short = 
TRIM(
    MID(
        partywise_results[Party], 
        FIND(" - ", partywise_results[Party] , 1) + 3, 
        LEN(partywise_results[Party])
    )
)