library(Quandl)
#Quandl.auth('APIKEY')
my.ts= Quandl("NSE/OIL")
summary(my.ts)
plot(my.ts)

my.ts.dates = Quandl("NSE/OIL",
                     start_date="2014-01-01",
                     end_date="2014-06-30")
summary(my.ts.dates)

my.ts.annual = Quandl("NSE/OIL", collapse="annual")
summary(my.ts.annual)

library(ggplot2)
my.plot <- ggplot(data=my.ts, aes(x=Date, y=Close)) +
  geom_line(color="red") + 
            theme(panel.background = element_rect(fill='darkgrey'), 
                  panel.grid.major.x = element_blank(), 
                  panel.grid.major.y = element_line(colour="white",
                                                    size=0.1), 
                  panel.grid.minor = element_line(colour="white", 
                                                  size=0.1)) +  
  xlab("Date") + 
  ylab("Closing Price") + 
  ggtitle("NSE/OIL")
my.plot
