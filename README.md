# readTablesFromOldAccess_MDB_inR

This R script was created to read results from the microsoft access mdb created by the genetic analysis program MolKin (Guiterez et.al 2005). Recent versions of MSAccess cannot read the file directly.  This process uses R and ODBC drivers to enable extraction of all the database tables to .csv files without the need of MS Access.

It should also work for exporting other 32- bit access .mdb tables to .csv.

For this script to work you need to install the old odbc drivers to access and read old version os ms access they can ( as of Jan 2021) be found here - https://www.microsoft.com/en-us/download/details.aspx?id=13255 download and run the .exe

You need to run the script in 32 bit R (if using r sutdio switch to 32bit version in Tools gobal preferences and restart R)
#in the directory where the MicroSat.mdb has been saved.

see https://www.roelpeters.be/solved-importing-microsoft-access-files-accdb-mdb-in-r/ for the original details and other usefult tips on reading ald MSAccess formats into R.

The script will discover all the tables in the database, and download each table to a .csv file in the same directory as the original .mdb


J. P. Gutiérrez, L. J. Royo, I. Álvarez, F. Goyache, MolKin v2.0: A Computer Program for Genetic Analysis of Populations Using Molecular Coancestry Information, Journal of Heredity, Volume 96, Issue 6, November/December 2005, Pages 718–721, https://doi.org/10.1093/jhered/esi118
