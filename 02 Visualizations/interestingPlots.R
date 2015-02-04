library(ggplot2)

market <- ggplot(customers, aes(x=CUSTOMER_STATE, y=CUSTOMER_CITY, color=CUSTOMER_ZIP)) + geom_point()

market + ggtitle("Markets of Albums\nFigure 1")

albumPrice <- ggplot(items, aes(x=as.factor(ARTIST), y=UNIT_PRICE)) + geom_bar(stat="identity")

albumPrice + ggtitle("Album Prices\nFigure 2")

albumSales <- ggplot(order_details, aes(x=ITEM_ID, y=ORDER_QTY)) + geom_bar(stat="identity")

albumSales + ggtitle("Album Sales\nFigure 3")

MONTHS <- as.numeric(substring(orders[,3], 6, 7))

DAYS <- as.numeric(substring(orders[,4], 9, 10)) - as.numeric(substring(orders[,3], 9, 10))
DAYS[5] <- 10
DAYS[7] <- 4
DAYS[14] <- 12
DAYS[17] <- 26
DAYS[21] <- 6
DAYS[22] <- 32
DAYS[26] <- 26
DAYS[27] <- 10
DAYS[29] <- 9
DAYS[30] <- 9
DAYS[35] <- 13
DAYS[36] <- 9
DAYS[45:47] <- 0

shipTime <- ggplot(orders, aes(x=MONTHS, y=DAYS)) + geom_bar(stat="identity")

shipTime + ggtitle("Album Shipping Time By Year\nFigure 4")