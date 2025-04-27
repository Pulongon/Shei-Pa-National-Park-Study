# Shei-Pa National Park Study

This repository contains all datasets, spatial layers, and R scripts used to support the manuscript:

**"Assessing Tourism Pressure on Wildlife in a Protected Area: A Social Big Data Approach Using Photo-Sharing Data and Species Distribution Modelling"**  
Submitted to *Ecological Informatics* (Manuscript No. ECOINF-D-24-02388R1)

---

## Repository Structure

### Description

This project uses **social big data** from Flickr, spatial analysis, and species distribution modeling (SDM) to assess the overlap between tourism activity and conservation-priority species habitats in Shei-Pa National Park, Taiwan.

We employed:
- **Flickr-derived Photo-User-Days (PUD)** as a proxy for spatiotemporal tourism intensity (via InVEST Recreation Model)
- **SDM** for habitat suitability modeling of 16 protected species
- **Overlay analysis** in GIS to quantify tourism-ecology conflict zones
- **Tukey HSD test** to compare PUD intensity across management zones
- **Circular statistical analysis** to visualize seasonal tourism patterns

---

## Contents

- `data/`:  
  - `flickr_PUD_processed.csv`: Normalized PUD values (2008–2017) per 500×500 m grid  
  - `monthly_PUD_summary.csv`: Aggregated monthly PUDs for circular statistics (Fig. 15)  
  - `species_occurrence_16.csv`: IUCN and national records of protected species  
  - `shei_pa_zoning_shapefile.zip`: GIS shapefiles of the park’s functional zones
  - `PUD_Category_Distribution_by_Management_Zones_SheiPa.csv`: This dataset summarizes the distribution of tourism pressure, as quantified by the Flickr-derived Photo-User-Day (PUD) index (2008–2017), across five management zones within Shei-Pa National Park, Taiwan. It was used to generate Figure 7 in the associated publication (Fig. 7).

- `scripts/`:  
  - `table3_tukeyHSD_pud_zones.R`: ANOVA and Tukey HSD post hoc comparison of PUD between five management zones  
  - `fig15_circular_histogram_PUD.R`: Circular histogram and Rayleigh test of monthly tourism patterns

- `outputs/`:  
  - KDE maps of tourist hotspots  
  - Regression tables for infrastructure impact  
  - `table3_tukeyHSD_output.csv`: Pairwise PUD differences with significance codes (Table 3)  
  - `fig15_circular_histogram.png`: Final figure showing seasonal trends in tourism (Figure 15)  
  - Final GIS maps used in manuscript (Figure 5–10)

---

## Reproducibility Instructions

1. Clone this repository or download as ZIP
2. Install R and required libraries (see script headers)
3. Run scripts in order:
   - `PUD_processing.R`
   - `MaxEnt_modeling.R`
   - `overlay_analysis.R`
   - `table3_tukeyHSD_pud_zones.R`
   - `fig15_circular_histogram_PUD.R`
4. Output figures and tables will be saved in `outputs/`

---

## Dependencies

- R ≥ 4.2.0  
- R packages: `raster`, `dismo`, `rgdal`, `ggplot2`, `sf`, `rgeos`, `tidyverse`, `circular`, `ggforce`, `multcomp`, `stats`  
- InVEST Recreation Model v3.10+ (optional, for PUD raster generation)

---

## Citation

> Liu, C.-L., et al. (2025). Assessing Tourism Pressure on Wildlife in a Protected Area: A Social Big Data Approach Using Photo-Sharing Data and Species Distribution Modelling. *Ecological Informatics*. [Manuscript No. ECOINF-D-24-02388R1]

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

## Contact

For questions related to data processing, statistical analysis, code implementation, or figure reproduction, please contact:  
**Chih-Lin Liu**  
Email: nthuman@gmail.com  
National Chung Hsing University, Taiwan
