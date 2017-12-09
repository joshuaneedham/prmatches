Project workflow and structure

User is asked what region they want a list of matches for
After selection the user is present with the matches for the selected region

Regions -  Are set and cannot be changed - Do we store them in an array or do we store them in a hash? Better yet they will be stored as a constant.
Regardless of storage each region has their own URL mor than likel requiring separate functions based on the URL being scraped.
Array of regions
["Central", "Midwest", "Northeast", "Pacific Northwest", "Plains", "Rocky Mountain", "Southeast", "Southwest"]

Hash of regions which establishes the key as region name and value as the URL to scrape
{"Central" => "https://www.precisionrifleseries.com/profiles/clubs/CE", "Midwest" => "https://www.precisionrifleseries.com/profiles/clubs/MW", "Northeast" => "https://www.precisionrifleseries.com/profiles/clubs/NE", "Pacific Northwest" => "https://www.precisionrifleseries.com/profiles/clubs/NW", "Plains" => "https://www.precisionrifleseries.com/profiles/clubs/PL", "Rock Mountain" => "https://www.precisionrifleseries.com/profiles/clubs/RM", "Southeast" => "https://www.precisionrifleseries.com/profiles/clubs/SE", "Southwest" => "https://www.precisionrifleseries.com/profiles/clubs/SW"}


Matches
Do we need to create a separate function for each region due to the URL being scraped being different?
URL structure for individual matches is https://www.precisionrifleseries.com/matches/match/{match_number}

