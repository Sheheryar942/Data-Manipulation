library(dplyr)
data <- read.csv("data.csv")
data <- data %>% filter(date >= "2022-01-01") %>%
select(customer_id, product_id, order_total) %>%
group_by(customer_id, product_id) %>%
summarize(total_orders = n(), total_sales = sum(order_total))
