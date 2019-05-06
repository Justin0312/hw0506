library(data.table)
m.price = read.table("price 2010-2018_daily.TXT", fileEncoding = 'UTF-8')
m.price<-m.price[,-2]
colnames(m.price)<-c("id", "date", "close")
#
mprice.reorder = dcast(m.price,date~id)
dim(mprice.reorder)

write_rds("data_wrangled_student/price 2010-2018_daily.rds")