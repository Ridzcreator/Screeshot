dataset <- read.csv("C:/Users/Ahmar/Downloads/Tugas/Assessment R & Python_ Dataset_superstore_simple.csv")
View (dataset)
library(dplyr)
dataset1 <- dataset %>% select(customer_id, sales) %>% filter(sales == max(sales))

dataset2 <- dataset %>% select(category, sub_category, profit) %>% filter(category == "Office Supplies")

dataset3 <- nrow(dataset %>% select(profit) %>% filter (profit < 0) )

dataset4 <- dataset %>% select (customer_id, sales) %>% filter (customer_id %in% c("JE-16165","KH-16510","AD-10180")) %>% group_by(customer_id) %>% summarise(total_sales=sum(sales)) %>% filter(total_sales == max(total_sales))

total_sales <- dataset %>% select(customer_id, sales, profit) %>% summarise(total_sales =sum(sales))
#profit_tiap_tahun <- dataset %>% select(profit)  %>% summarise(total_profit_tiap_tahun =sum(profit))
#yearly_sales <- mutate(dataset, c(total_sales, profit_tiap_tahun))

