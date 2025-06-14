Winning Allince legends = 
var NDASeats = CALCULATE(COUNT(constituencywise_results[Constituency Name]),partywise_results[Party Alliance] = "NDA")
var INDIASeats = CALCULATE(COUNT(constituencywise_results[Constituency Name]),partywise_results[Party Alliance] = "I.N.D.I.A.")
return 
IF(NDASeats >= INDIASeats , "NDA", "I.N.D.I.A.")