# Shei-Pa National Park Study

This repository contains all datasets, spatial layers, and R scripts used to support the manuscript:

**"Examining Tourism Pressure on Protected Animals in Shei-Pa National Park: A Social Big Data Approach Using Flickr and MaxEnt Modeling"**  
Submitted to *Ecological Informatics* (Manuscript No. ECOINF-D-24-02388R1)

## Repository Structure
## Description

This project uses **social big data** from Flickr, spatial analysis, and species distribution modeling (SDM) to assess the overlap between tourism activity and conservation-priority species habitats in Shei-Pa National Park, Taiwan.

We employed:
- **Flickr-derived Photo-User-Days (PUD)** as a proxy for spatiotemporal tourism intensity (via InVEST Recreation Model)
- **MaxEnt** for habitat suitability modeling of 16 protected species
- **Overlay analysis** in GIS to quantify tourism-ecology conflict zones

## Contents

- `data/`:  
  - `flickr_PUD_processed.csv`: Normalized PUD values (2008–2017) per 500×500 m grid  
  - `species_occurrence_16.csv`: IUCN and national records of protected species  
  - `shei_pa_zoning_shapefile.zip`: GIS shapefiles of the park’s functional zones

- `scripts/`:  
  - `PUD_processing.R`: Workflow for calculating PUD using Flickr API and InVEST  
  - `MaxEnt_modeling.R`: Code for building species distribution models  
  - `overlay_analysis.R`: Overlay of PUD and MaxEnt outputs to identify high-risk areas

- `outputs/`:  
  - KDE maps of tourist hotspots  
  - Regression tables for infrastructure impact  
  - Final maps used in manuscript (Figure 5–10)

## Reproducibility Instructions

1. Clone this repository or download as ZIP
2. Install R and required libraries (see script headers)
3. Run scripts in order:
   - `PUD_processing.R`
   - `MaxEnt_modeling.R`
   - `overlay_analysis.R`
4. Output figures will be saved in `outputs/`

## Dependencies

- R ≥ 4.2.0  
- R packages: `raster`, `dismo`, `rgdal`, `ggplot2`, `sf`, `rgeos`, `tidyverse`, `maxnet`  
- InVEST Recreation Model v3.10+ (optional, for PUD raster generation)

## Citation

> Liu, C.-L., et al. (2025). Examining Tourism Pressure on Protected Animals in Shei-Pa National Park. *Ecological Informatics*. [Manuscript No. ECOINF-D-24-02388R1]

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact

For questions or collaborations, contact:  
**Chih-Lin Liu**  
Email: nthuman@gmail.com  
National Chung Hsing University, Taiwan
