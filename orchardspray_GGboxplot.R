

library(ggplot2)
print(ggplot(OrchardSprays, aes()))

#print(OrchardSprays)
#str(OrchardSprays)
#plot
ggplot(OrchardSprays[1], aes(OrchardSprays$treatment, OrchardSprays[1]))+geom_boxplot()#+geom_step()
#str(OrchardSprays)
