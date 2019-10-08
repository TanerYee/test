install.packages("ggplot2")
library(ggplot2)
score=c(91.38,92.06,93,93.19,
        95.35,96.24)
time=c(1:6)
label=c("105上","105下","106上",
       "106下","107上","107下")
df=data.frame(score,time,label)
ggplot(df,aes(x = time, y = score)) + geom_line(size = 1,col="red") + 
  geom_point(size = 3,col="darkred") +
  labs(x = "學期序", y = NULL, title = "學期平均成績折線圖") +
  geom_text(aes(label = score,vjust = 1.1,hjust = -0.5)) +
  scale_x_continuous(limits = c(0.8,6.4),breaks=c(1:6),labels=label) +
  theme(axis.text = element_text(size = 13),
        axis.title = element_text(size = 15,face = "bold"),
        plot.title = element_text(colour = "black", face = "bold", 
        size = 15, vjust = 1))
