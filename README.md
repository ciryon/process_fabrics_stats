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


Example:

```
$ ./process_fabrics_stats.rb "MyApp - Event Users for Log In - 2017-10-02.csv" 2017-09-01 2017-09-30
2017-09-17 (Sun): 100
2017-09-18 (Mon): 113
2017-09-19 (Tue): 109
2017-09-20 (Wed): 95
2017-09-21 (Thu): 97
2017-09-22 (Fri): 102
2017-09-23 (Sat): 86
2017-09-24 (Sun): 106
2017-09-25 (Mon): 183
2017-09-26 (Tue): 216
2017-09-27 (Wed): 219
2017-09-28 (Thu): 193
2017-09-29 (Fri): 189
2017-09-30 (Sat): 155
==============================
Total: 1963 in 14 days
```
