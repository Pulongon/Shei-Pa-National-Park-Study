# 1. Data Input

# Observed (%) data: aggregated monthly visitor counts from 2008–2017,
# converted to percentage of total decadal visitors per month.
# These values represent the normalized monthly visitor distribution (%).
observed <- c(7.536223775, 12.20303602, 7.755804044, 7.322822043, 7.427165179,
              6.676171399, 9.805397827, 7.663689469, 6.111759555, 9.094154283,
              9.668728585, 8.735047816)

# PUD Index data: monthly photographic activity values extracted from geotagged photo metadata.
# Each value represents the raw index (number of photos) per month, not normalized.
pud <- c(45.8, 115.8, 42.9, 22.3, 11.9, 22.7, 35.1, 25.2, 19.3, 23.6, 49.8, 47.4)

month <- 1:12

# 2. Plotting Setup
par(mar = c(5, 4, 4, 5) + 0.1)  # Adjust margin space, add more room on the right side

# 3. Left Y-axis: Observed (%)
plot(month, observed, type = "o", col = "blue", pch = 16, lwd = 2,
     ylim = c(5, 13), xaxt = "n", xlab = "Month", ylab = "Observed Visitor Share (%)",
     main = "Observed Visitor Share vs. PUD Index", cex.main = 1.2)
axis(1, at = month)

# 4. Add Right Y-axis: PUD Index
par(new = TRUE)
plot(month, pud, type = "o", col = "red", pch = 15, lty = 2, lwd = 2,
     axes = FALSE, xlab = "", ylab = "", ylim = c(10, 125))
axis(4, col = "red", col.axis = "red")
mtext("PUD Index (unitless)", side = 4, line = 3, col = "red")

# 5. Add Legend (centered at bottom of the chart)
legend("top", inset = 0.02,
       legend = c("Observed (%)", "PUD Index"),
       col = c("blue", "red"), pch = c(16, 15), lty = c(1, 2), lwd = 2,
       bty = "n", horiz = TRUE, cex = 0.9)

# 6. Pearson Correlation Analysis

correlation_result <- cor.test(observed, pud, method = "pearson")

# Print the results
print(correlation_result)
