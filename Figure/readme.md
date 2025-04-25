# 📂 Data Directory – Shei-Pa National Park Tourism Pressure Study

This directory contains all raw and processed spatial and statistical datasets used in the study:  
**"Assessing Tourism Pressure on Wildlife in a Protected Area: A Social Big Data Approach Using Photo-Sharing Data and Species Distribution Modelling."**

These files were used to quantify tourism intensity, validate photo-based proxies, map species distribution, and perform spatial overlap analysis for Shei-Pa National Park (2008–2017).

---

## 📦 Folder and File Descriptions

### 1. `Monthly PUD(2008-2017).xlsx`
- **Content**: Monthly Photo-User-Day (PUD) values derived from Flickr data (2008–2017), calculated using the InVEST Recreation and Tourism Model.
- **Use**: Used for circular statistics (Fig. 15) and seasonal tourism analysis (Fig. 8).
- **Structure**: Columns = calendar months; Rows = annual PUD aggregation.

### 2. `SheiPa_PopulationStatistics_2008_2017.xlsx`
- **Content**: Official monthly visitor statistics of Shei-Pa National Park, acquired from park management authorities.
- **Use**: Used to validate PUD values (Pearson correlation r = 0.818; see Fig. 8).
- **Structure**: Same monthly format aligned with PUD file for 1:1 comparison.

### 3. `Elevation (20 meter)/`
- **Content**: DEM data (Digital Elevation Model) at 20-meter resolution, retrieved from Taiwan’s Open Government Data platform.
- **Use**: Used as environmental covariate in SDMs and spatial regression models.

### 4. `Land Use Zoning Map of Shei-Pa National Park (Third Round of Comprehensive Review)/`
- **Content**: Official zoning shapefiles of Shei-Pa National Park, defining the five land management categories:
  - Conservation Area
  - Special Scenic Area
  - Recreation Area
  - Generally Protected Area
  - Cultural Historic Area
- **Use**: Used in ANOVA and Tukey HSD tests to compare tourism intensity across management zones (Table 3, Fig. 7, Fig. 9–10).

### 5. `InVEST Visitation: Recreation and Tourism model/`
- **Content**: Input and output raster grids of the InVEST model, based on geotagged Flickr data.
- **Use**: Generates the Photo-User-Day (PUD) raster layer at 500m resolution (Fig. 6, 11).

### 6. `SDM_1km_16ProtectedSpecies_SheiPa/`
- **Content**: Rasterized species distribution maps (1 km resolution) for 16 protected terrestrial species in Shei-Pa National Park.
- **Source**: Provided by Taiwan Biodiversity Research Institute (TBRI, 2020).
- **Use**: Spatial overlay with PUD to define conservation conflict zones (LL, LH, HL, HH) (Fig. 13–14).
- **Format**: One `.tif` per species, named by species Latin name or code.

---

## 🛠️ Notes

- **Figures 7, 8, 14, and 15** were prepared externally for visualization purposes, but all underlying data and R scripts necessary to **independently regenerate these figures** are provided in the `/Data/` and `/Script/` directories. Researchers may use R or equivalent statistical software to reproduce the same outputs.
- **Figures 2, 3, 4, 5, 10, 11, and 13** were produced using **ArcGIS Pro**, based on official spatial datasets (e.g., DEM, zoning shapefiles, and SDM rasters) following standard cartographic practices.
- Coordinate system: **TWD97 / TM2 Zone 121** for all spatial data.
- Resolution: Raster layers standardized to **500 × 500 meters** unless otherwise stated.
- All figures are directly referenced in the manuscript and match the figure numbering and captions used in the published version.
  

---

## 📚 Reference

Please cite the main article when using this dataset:

> Liu, C.-L. (2025). Assessing Tourism Pressure on Wildlife in a Protected Area: A Social Big Data Approach Using Photo-Sharing Data and Species Distribution Modelling. _Ecological Informatics_.

For SDMs:
> Taiwan Biodiversity Research Institute (2020). Potential Distribution Ranges of 49 Terrestrial Vertebrates in Taiwan.


