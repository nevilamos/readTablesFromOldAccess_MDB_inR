#for this script to work you need to install the old odbc drivers to access and read old version os ms access they can ( as of Jan 2021) be found here - https://www.microsoft.com/en-us/download/details.aspx?id=13255 download and run the .exe

#you need to run the script in 32 bit R (if using r sutdio switch to 32bit version in Tools gobal preferences and restart R)
#in the directory where the MicroSat.mdb has been saved.

#see https://www.roelpeters.be/solved-importing-microsoft-access-files-accdb-mdb-in-r/ for the original details if interested

#the script will discover all the tables in the database, and download each table to a .csv file in the same directory as the original .mdb


library(RODBC)
con <- odbcConnectAccess("MicroSat.mdb")
myTables<-sqlTables(con)$TABLE_NAME
for(tab in myTables){
  try({
  myTab<-sqlFetch(con, tab)
  })
  write.csv(myTab,paste0(tab,".csv"))
}
