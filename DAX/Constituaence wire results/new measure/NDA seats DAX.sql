NDA Seats cc = CALCULATE(
    COUNT(constituencywise_results[Constituency Name]),
    partywise_results[Party Alliance] = "NDA")