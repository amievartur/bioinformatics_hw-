genes <- c("BRCA1", "TP53", "EGFR")
expression <- c(12.5, 45.2, 30.1)
condition <- c("Control", "Treatment", "Treatment")

exp_data <- data.frame(Gene = genes, Expression = expression, Condition = condition)

print("Structure of exp_data table")
str(exp_data)

png("expression_plot.png")
barplot(exp_data$Expression, 
        names.arg = exp_data$Gene, 
        main = "Gene Expression Level",
        xlab = "Genes", 
        ylab = "Expression Value",
        col = "skyblue")
dev.off()
