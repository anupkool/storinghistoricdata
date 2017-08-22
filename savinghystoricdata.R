# RVEST packages used to make download and manipulate, HTML and XML
library("rvest")

# Storeing the URL
goldurl <- "https://www.investing.com/commodities/gold-historical-data"

# using the XPATH to extract historic data for gold the Table
gold <- url %>%
  read_html() %>%
  html_nodes(xpath='//*[@id="curr_table"]') %>%
  html_table()
# Clearing the Data
gold <- gold[[1]]

#  R functions to read/write/format Excel 2007 and Excel 97/2000/XP/2003 file formats
library(xlsx)

# Store the Gold Data
write.xlsx(gold, "gold_data.xlsx")


# Storeing the URL
url <- "https://www.investing.com/commodities/silver-historical-data"

# using the XPATH to extract historic data for silver the Table
silver <- url %>%
  read_html() %>%
  html_nodes(xpath='//*[@id="curr_table"]') %>%
  html_table()
# Clearing the Data
silver <- silver[[1]]

# Store the Silver Data
write.xlsx(silver, "silver_data.xlsx")