# Load required packages
# (Base R functions are used, so no additional packages are required unless plotting is desired)

# ---- 1. Sample dataset creation ----
# Replace this section with your actual dataset if available as a CSV or data frame
# Here we simulate example data based on reported group means for illustrative purposes

set.seed(42)

# Simulated dataset for 5 zones (based on approximate means in Table 3)
zone <- factor(rep(c("Recreation", "CulturalHistoric", "GenerallyProtected", "SpecialScenic", "Conservation"),
                   times = c(500, 200, 800, 150, 1200)))  # simulate sample sizes

# Generate example PUD values with approximate means and some variance
pud <- c(
  rnorm(500, mean = 11.47, sd = 2.5),  # Recreation
  rnorm(200, mean = 5.90, sd = 2),     # Cultural Historic
  rnorm(800, mean = 0.28, sd = 0.3),   # Generally Protected
  rnorm(150, mean = 0.22, sd = 0.2),   # Special Scenic
  rnorm(1200, mean = 0.15, sd = 0.1)   # Conservation
)

# Create dataframe
pud_data <- data.frame(Zone = zone, PUD = pud)

# ---- 2. ANOVA ----
anova_model <- aov(PUD ~ Zone, data = pud_data)
summary(anova_model)

# ---- 3. Tukey HSD Post Hoc ----
tukey_result <- TukeyHSD(anova_model)
print(tukey_result)

# ---- 4. Optional: Plot the Tukey results ----
# Uncomment the line below to visualize differences
# plot(tukey_result, las = 1, col = "blue")


