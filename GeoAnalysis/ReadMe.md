# GeoAnalysis Case Study

The detailed scenario is described below. To highlight, the goal was to investigate the potential savings associated with moving some of the accounts currently managed by one team to another team given some assumptions. I provided three possible approaches (Thiessen Polygon Method, Standard Distance Method and Buffer Method), made a recommendation (Thiessen Polygon Method) based on cost saving analysis. All the geoanalyses were done in ArcGIS using existing modules, hence I’m not providing the associated files. The data analysis was done in STATA, documented in GEO_Stata.txt. The cost saving analysis was done using excel, documented in CostSavingAnalysis.xlsx. The final report is documented in GEOreport.pdf. 

## Case Scenario Description:
The client is a beverage service distributor undergoing a sales force transformation effort. They have
60+ divisions with approximately 50,000 customer sites. Each site is classified as either a "street"
account (e.g. mom-and-pop restaurant) or a "national" account (e.g. hospitals). Typically, commissioned
salespeople called Territory Managers (or TM's) handle the street accounts, and salaried salespeople
called National Account Managers (or NAM's) handle the national accounts. Salespeople periodically
visit their accounts in person.

However, based in part on geography, some national accounts are handled by TM's. Key West, Florida,
is a prototypical example – Key West's cluster of accounts is remote relative to the client's other
accounts, and contains both street accounts and a few national accounts. Rather than dispatch a NAM's
all the way to Key West to visit national accounts, the client has assigned all the street and most national
accounts there to TM's, so fewer salesperson are inconvenienced by the journey to the remote location.
However, the client recognizes that commission-driven TM's are more expensive, harder to manage and
harder to staff than salaried NAM's, so my task is to investigate the potential savings associated
with moving some of the national accounts that are currently managed by TM's over to NAM's. 
Initially, the client wants to quantify the percent of national accounts currently managed by
TM's that should remain the responsibility of TM's rather than being shifted to NAM's.
The client has requested the following initial deliverables:
1) A percentage of national accounts to be excluded from the shift to NAM's;  
2) A map of the excluded accounts;  
3) An explanation of the approach to establishing the exclusions.  
It's acceptable to limit the initial analysis to 5 or 6 divisions to speed up processing time if needed.

When discussing analytical approaches with the client, a few assumptions/comments emerged:
1) Visiting 3-4 accounts in a day is reasonable and productive.  
2) No less than 20% of the accounts should be left with TM's.  
3) All accounts are, technically speaking, national accounts, but some are being served by street
representatives.  
4) We don't know where salespeople begin their days – some start from home, but we don't know
their home addresses, and should not try to factor this in, as a reconfigured set of accounts may
simply force rehiring of salespeople.  
5) Of the sites with National Team presence, some of these are National Chains (segment = "NCH"),
which should be excluded (or, rather, treated as sites without regular National Team coverage)
when running the analysis.  
6) There are potential obstacles associated with transferring customer sites owned by different
divisions.

The associated file geo_case_study_data_v03.csv contains the locations of the client's own customers, and which division, team and salesperson covers them. Data definitions for the file's fields are as follows:
- ID – a unique number for each row of data.
- Division – refers to the geographic division of the company that manages each customer site.
- Customer Number – refers to each unique customer site.
- Segment – a grouping of individual accounts into categories such as IND for industry or EDU for
education.
- Business Type – this speaks to whether the business is, in theory, national or local. Everything
with an "NM" in here is theoretically national business; everything with an "LMC or "LMNC" is
theoretically local business. Note: this doesn't mean that these accounts are actually served by
national vs. local sales reps.
- Covered By – designates which type of rep actually covers the account ("National Team" vs.
"Street Team", and a few "Unclear" that are still worth mapping if they are NM accounts).
- Salesperson ID – a unique code for each salesperson in the beverage distribution company.
- Latitude – the Y coordinate for the customer location visited by the sales representative (in an
EPSG:4326 spatial reference system).
- Longitude – the X coordinate for the customer location visited by the sales representative (in an
EPSG:4326 spatial reference system).
- Location type – designates the accuracy of the location (based on a geocoding process).
