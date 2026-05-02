## 🌍 World Database SQL Analysis Project

This project explores and analyzes global demographic and economic data using the classic **MySQL `world` database**. The goal is to demonstrate core SQL skills such as data exploration, joins, aggregations, and analytical problem-solving.

### 📌 Project Overview

Using three primary tables—`city`, `country`, and `countrylanguage`—this project answers a series of real-world analytical questions related to population distribution, language usage, and economic indicators across countries.

### 🔍 Key Analyses & Insights

* **Population Analysis**

  * Identified the most populous cities in the world and their corresponding countries.
  * Compared total urban population (sum of city populations) with overall country population.
  * Calculated **urban vs. rural population breakdowns** and their percentages for each country.

* **Language Distribution**

  * Extracted official languages for each country.
  * Identified countries with **multiple official languages**.
  * Calculated the percentage of the population that speaks official languages.

* **Economic Indicators**

  * Ranked countries by **GNP** and **population**.
  * Calculated **GNP per capita** to compare economic productivity.
  * Measured **percentage change in GNP** for countries with historical data.

* **Quality of Life Metrics**

  * Ranked countries by **life expectancy**.

### 🛠️ Skills Demonstrated

* SQL joins (`INNER JOIN`)
* Aggregations (`SUM`, `COUNT`)
* Grouping and filtering (`GROUP BY`, `HAVING`)
* Conditional logic (`CASE WHEN`)
* Derived metrics and calculated fields
* Data exploration and validation

### 📊 Example Questions Answered

* Do city populations fully account for a country’s total population?
* What percentage of a country’s population lives in urban vs. rural areas?
* Which countries have the highest economic output per person?
* How many official languages does each country have?
*---


## 📈 Results & Insights

### 🗣️ Multiple Official Languages Are Common

* Several countries have **more than one official language**, with some having 2+ recognized languages.
* In some cases, the combined percentage of official language speakers approaches or exceeds 100%, indicating:

  * Multilingual populations
  * Overlapping language usage within countries

### 💰 Economic Disparities (GNP vs. GNP per Capita)

* Countries with the highest **total GNP** are not always the highest in **GNP per capita**.
* This reveals that:

  * Large economies don’t necessarily translate to higher individual prosperity
  * **Per capita metrics provide a more accurate measure of living standards**

### 📉 GNP Growth Trends

* Countries with historical GNP data show varying levels of growth:

  * Some demonstrate **strong positive economic growth**
  * Others show stagnation or minimal change
* Handling missing data (`NULL`) was essential to avoid misleading conclusions.

### ❤️ Life Expectancy Variability

* There is a wide range in life expectancy across countries.
* Higher life expectancy often aligns with:

  * Stronger economies
  * Better healthcare infrastructure
* This metric serves as a **proxy for overall quality of life**.

---

### 💡 Key Takeaway

This analysis demonstrates that **raw data rarely tells the full story on its own**. By combining tables, calculating derived metrics, and questioning assumptions, deeper insights about population distribution, economic health, and societal structure can be uncovered.

---

