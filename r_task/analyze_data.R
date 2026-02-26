data <- read.csv("sample_data.csv")

mean_score <- mean(data$Score)
cat("Mean Score:", mean_score, "\n")

max_treatment_score <- max(data$Score[data$Group == "Treatment"])
cat("Max Score in Treatment group:", max_treatment_score, "\n")

png("score_boxplot.png")
boxplot(Score ~ Group, data = data, 
        main = "Score Distribution by Group",
        ylab = "Score", 
        col = c("lightcoral", "lightgreen"))
dev.off()
