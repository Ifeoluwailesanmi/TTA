install.packages("ggplot2")
library(ggplot2)
data(package = "ggplot2")

ggplot2::presidential

?presidential

qplot(data = presidential, x = name, geom = "bar", fill = party)

qplot(data = presidential, x = party, geom = "bar", fill = end)

qplot(data = presidential, y = name, geom = "bar", fill = start)

ggplot(data=presidential, aes(x=start, y=end)) + 
  geom_bar(stat="identity", fill="pink")

ggplot(data=presidential, aes(x=start, y=end)) + 
  geom_line(stat="identity", fill="pink")

ggplot(data=presidential, aes(x=name, y=end)) + 
  geom_histogram(stat="identity", fill="grey")

msleep
?msleep

ggplot(data = msleep) + 
  geom_point(mapping = aes(x = name, y = sleep_total))
                                   
ggplot(data = msleep) + 
  geom_point(mapping = aes(x = name, y = sleep_total), colour = "red")

ggplot(data = msleep) + 
  geom_point(mapping = aes(x = name, y = sleep_total, size = order))

ggplot(data = msleep) + 
  geom_point(mapping = aes(x = name, y = sleep_total, colour = sleep_rem))


ggplot(data = msleep) + 
  geom_point(mapping = aes(x = name, y = sleep_total, alpha = sleep_rem))

ggplot(data=msleep, aes(x=genus, y=vore)) + 
  geom_histogram(stat="identity", width=0.5)

ggplot(data=msleep, aes(x=vore, y=sleep_total)) + 
  geom_bar(stat="identity", width=0.5)

ggplot(data=msleep, aes(x=vore, y=sleep_total)) + 
  geom_bar(stat="identity", color="purple", fill="yellow")


ggplot(data=msleep, aes(x=vore, y=sleep_rem)) + 
  geom_bar(stat="identity", fill="green")


