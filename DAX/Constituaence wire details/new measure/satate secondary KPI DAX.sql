State Secondary KPI = 
CALCULATE(
    SELECTEDVALUE(states[State], "No State"),
    FILTER(
        constituencywise_results,
        constituencywise_results[Constituency ID] = 
            MAX(constituencywise_details[Constituency ID])
    )
)
