# Process Fabric analytics

This very simple script allows you to extract some event data from the data export that you can get from Fabric.

## How to use

* Export a CSV-file from Fabric's web UI (it's the "down arrow" icon next to the graph you're interested in)
* Decide a date range that you want 
* Run the script with filename, start date and end date as parameters: `./proccess_fabrics_stats.rb "Your Exported File.csv" 2017-09-01 2017-09-30`


## Output

The script will give a console printout with:

* Each day in the range and event count
* Total sum count
* Total number of days in range
