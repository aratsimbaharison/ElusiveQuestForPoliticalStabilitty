#countries covered by wbstats
countries <- wb_countries(lang = "en")
View(countries)

# indicators covered by wbstats
indicators <- wb_indicators(lang = "en")
indicators <- as_tibble(indicators)
indicators

sources <- wb_sources(lang = "en")
sources <- as_tibble(sources)
View(sources)

democracyIndicators <- wb_search("*democracy*")
democracyIndicators

topics <- wb_topics(lang = "en")
topics <- as_tibble(topics)
View(topics)

internetIndicators <- wb_search(pattern = "internet", fields = "indicator")
View(internetIndicators)
library(dplyr)
# getting the data
internetUsers <- wb_data(indicator = "IT.NET.USER.ZS", country = "countries_only", start_date = 2000, end_date = 2020)
head(internetUsers)
names(internetUsers)
select(internetUsers, iso3c, country, date, users = IT.NET.USER.ZS)

hist(internetUsers$IT.NET.USER.ZS, na.rm = T)
