# 📂 Script Directory – Statistical and Spatial Analysis

This folder contains R scripts used to reproduce the main statistical results presented in the manuscript:

**"Assessing Tourism Pressure on Wildlife in a Protected Area: A Social Big Data Approach Using Photo-Sharing Data and Species Distribution Modelling."**

Although the figures were prepared externally, the statistical procedures and data necessary to regenerate key results are documented here.

---

## 🧪 Script List and Purpose

### `tukey_posthoc_PUD_zones.R`
- Performs one-way ANOVA and Tukey’s HSD post hoc test on annual average PUD across five zoning categories in Shei-Pa National Park.
- Outputs include pairwise significance tests (used in Table 3) and optional bar chart visualization (Fig. 7).

### `plot_observed_vs_pud_dual_axis.R` 
-  Generates a dual Y-axis line plot comparing the temporal alignment between official visitor counts and social media photo activity.
-  Computes the Pearson correlation (r) between normalized monthly PUD and official visitor statistics (2008–2017) to validate PUD as a temporal tourism proxy. Produces a dual-axis figure (bar + line) visualizing the alignment between datasets.
-  Outputs: correlation result (r = 0.818, p = 0.001) and Figure 8.
-  This supports the use of PUD as a proxy for seasonal visitation intensity.

---

## 🔧 Dependencies
- R version ≥ 3.4.1
- Suggested R packages:
  - `stats`, `ggplot2`, `dplyr`, `readxl`

---

## 📚 Citation

> Liu, C.-L. (2025). Assessing Tourism Pressure on Wildlife in a Protected Area: A Social Big Data Approach Using Photo-Sharing Data and Species Distribution Modelling. _Ecological Informatics._

