# Delete Disabled User Profiles
I work at a small hospital. Shared computers (ones at the nursing station for example), have a habit of running out of hard drive space. I created this script to get some of that space back.

## DisabledUsers.csv
At this small hospital, for auditing reasons, we keep all users that we disable for at least 1 year. At the time of disabling their account, they get moved to an OU called Disabled Users. I exported this list of users to a CSV and named it disabledusers.csv. The file supplied here contains a bunch of dummy users.

## The Script
The actual script is really simple. It looks up all current user profiles on the computer, uses the split command to get just the username, compares that username to each username in the CSV file, removing each one as it goes through the list.

## Future Versions
Eventually I want to make a version that doesn't rely on exporting a CSV, but for now, this one works.