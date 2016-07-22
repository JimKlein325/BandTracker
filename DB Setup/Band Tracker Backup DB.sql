USE band_tracker

--BACKUP DATABASE library TO DISK = 'C:\Users\epicodus\library.bak'
BACKUP DATABASE band_tracker TO DISK = 'C:\Users\Jim Klein\band_tracker.bak'

--sqlcmd -E -S "(localdb)\mssqllocaldb" -Q "BACKUP DATABASE [ToDoList] TO DISK = 'C:\Users\epicodus\ToDoList.bak'"
