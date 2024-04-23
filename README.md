# Olympic Data Warehouse and Association Rule Mining

This repository contains the code and documentation for a comprehensive project on Data Warehouse Design and Association Rule Mining using real-world Olympic datasets. The project encompasses dimensional modeling, database implementation, multi-dimensional analysis, and data mining techniques to derive valuable insights from the Olympic Games data.

## Project Overview

The main objectives of this project are:
- Designing and implementing a data warehouse using Kimball's dimensional modeling approach.
- Populating the data warehouse with Olympic datasets sourced from various sources.
- Building a multi-dimensional analysis service solution using Atoti for querying and visualizing the data.
- Performing Association Rule Mining to uncover significant patterns within the Olympic Games dataset and deriving actionable insights.

## Components

1. **Data Warehouse Design**:
   - **Dimensional Modeling**: Implemented Kimball's four steps of dimensional modeling to design the data warehouse.
   - **Star Schema Implementation**: Utilized PostgreSQL to implement a star schema for efficient data storage and retrieval.
   - **Multi-dimensional Analysis**: Created a multi-dimensional cube using Atoti for advanced analysis and visualization of data.

2. **Association Rule Mining**:
   - **Algorithm Selection**: Employed Apriori and FP-Growth algorithms to discover meaningful patterns within the Olympic Games dataset.
   - **Insights Generation**: Derived actionable insights from the mining results to drive decision-making.

## Usage

1. **Data Warehouse Setup**:
   - Populate the PostgreSQL database with the provided Olympic datasets.
   - Execute the SQL scripts to create the necessary tables and populate them with data.

2. **Multi-dimensional Analysis**:
   - Install Atoti library (`pip install atoti`) and other dependencies.
   - Run the provided Python scripts to connect to the PostgreSQL database and create a multi-dimensional cube in Atoti.
   - Explore the data using Atoti's interactive interface for querying and visualization.

3. **Association Rule Mining**:
   - Implement the Apriori and FP-Growth algorithms using suitable libraries or frameworks.
   - Analyze the mining results to derive insights and recommendations for commerce applications.

## Results

- The project yields valuable insights into various aspects of the Olympic Games, including economic impacts, health correlations, and significant patterns.
- Business queries and mining results are visualized using Atoti for clear interpretation and presentation.

## Contributors

- [Syed Umer](https://github.com/syedumeerr) - Project Lead & Developer

## License

This project is licensed under the [MIT License](LICENSE).
