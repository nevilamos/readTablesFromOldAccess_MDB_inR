# readTablesFromOldAccess_MDB_in_R

This R script was created to read results from the Microsoft Access .mdb file created by the genetic analysis program MolKin (Gutiérrez et.al 2005). Recent versions of MS Access cannot read the file directly.  This process uses R and ODBC drivers to enable extraction of all the database tables to .csv files without the need of MS Access.

It should also work for exporting other 32-bit Access .mdb tables to .csv.

For this script to work you need to install the old odbc drivers to access and read old version of MS Access they can ( as of Jan 2021) be found here - https://www.microsoft.com/en-us/download/details.aspx?id=13255. Download and run the .exe

You need to run the script in 32-bit R (if using r sutdio switch to 32-bit version in Tools global preferences and restart R)
#in the directory where the MicroSat.mdb has been saved.

See https://www.roelpeters.be/solved-importing-microsoft-access-files-accdb-mdb-in-r/ for the original details and other useful tips on reading old MSAccess formats into R.

The script will discover all the tables in the database, and download each table to a .csv file in the same directory as the original .mdb


J. P. Gutiérrez, L. J. Royo, I. Álvarez, F. Goyache, MolKin v2.0: A Computer Program for Genetic Analysis of Populations Using Molecular Coancestry Information, Journal of Heredity, Volume 96, Issue 6, November/December 2005, Pages 718–721, https://doi.org/10.1093/jhered/esi118
