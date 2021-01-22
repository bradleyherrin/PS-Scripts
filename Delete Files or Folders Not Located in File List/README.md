# Delete Files or Folders Not Located in File List
At work we use Folder Redirection via Group Policy to centrally house our Desktop, Documents, Pictures, and Videos. Couple this with the fact that we keep user data for at least a month after termination (longer for managers) and I end up having to remove multiple user folders at once. Instead of doing it manually, I decided to write this script.

## UserFiles and UserFilesBackup
The UserFiles folder contains test files and folders. The goal of the script was to have it delete the files not located on FileList.csv, which all start with "delete". UserFilesBackup is a duplicate copy so I can restore the files easily after the script runs sucessfully.

## The Script
The script is fairly simply. First, it defines three variables, $DirectoryList, $FileList, and $FileDeleteList. The first two are a list of the contents of a folder and a list of the files and folders to keep. The last is a list of files to delete that is created by comparing the first two variables and listing the differences.

The last part just iterates through the #FileDeleteList and removes each file or folder one at a time.

## Future Versions
The original idea for the script was to manually export a list of active users to .csv, compare that .csv to the contents of the folder where we store our redirected folders, and delete any user folder not located on the list of active users. Future versions will use PowerShell commands to generate the list instead of having a CSV.