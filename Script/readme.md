# 📂 Script Directory – Statistical and Spatial Analysis

This folder contains R scripts used to reproduce the main statistical results presented in the manuscript:

**"Assessing Tourism Pressure on Wildlife in a Protected Area: A Social Big Data Approach Using Photo-Sharing Data and Species Distribution Modelling."**

Although the figures were prepared externally, the statistical procedures and data necessary to regenerate key results are documented here.

---

## 🧪 Script List and Purpose

### `tukey_posthoc_PUD_zones.R`
- Performs one-way ANOVA and Tukey’s HSD post hoc test on annual average PUD across five zoning categories in Shei-Pa National Park.
- Outputs include pairwise significance tests (used in Table 3) and optional bar chart visualization (Fig. 7).

---

## 🔧 Dependencies
- R version ≥ 3.4.1
- Suggested R packages:
  - `stats`, `ggplot2`, `dplyr`, `readxl`

---

## 📌 Future Additions (Recommended)

To strengthen reproducibility and align with *Ecological Informatics* standards, the following scripts are recommended for upload:

| Suggested Script Name | Function | Related Figure |
|------------------------|----------|----------------|
| `pud_vs_official_correlation.R` | Computes Pearson r between PUD and official visitor statistics | Fig. 8 |
| `circular_statistics_PUD.R` | Applies Rayleigh test and plots seasonal patterns using circular statistics | Fig. 15 |

---

## 📚 Citation

> Liu, C.-L. (2025). Assessing Tourism Pressure on Wildlife in a Protected Area: A Social Big Data Approach Using Photo-Sharing Data and Species Distribution Modelling. _Ecological Informatics._

