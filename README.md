# Ecommerce Analysis using dbt



Building  the ELT process and then performing analysis to get insights,


![data-original](https://th.bing.com/th/id/OIP.fW_xz6J7wprbhngwgb9N9AHaFU?pid=ImgDet&rs=1)

- The first step in this project is to extract the dataset which will be used in the coming sections, Data extraction is done by different and a lot of methods, that depends on the source of the data which can be (CSV files, Database files, Web Scraping, JSON files, and others).
Here, in our project, I used a dataset in the form of a CSV file that is brought from Kaggle.



- The first step after extracting data is to transform, clean, and explore it using different methods.

- The second  step after extracting data, and making transformations is to load data into our data warehouse, Dataware house is a special database designed for the purpose of collecting our all data files together in the same place in order to make analysis and provide insights about our data.

- The final step is to use our cleaned data which is stored in DWH for making visualization, deriving insights, and building reports to help us develop our business and make decisions.

## Project Sections and Files

- First of all, we  uploaded the data into Bigquery, there are many ways to do that, here I used it manually  to upload data.
  
  
- I used dbt cloud to perform transformation and cleaning on data, so you have to connect big query and dbt first to be able to do that.

- dbt is a data transformation tool that enables data analysts and engineers to transform, test and document data in the cloud data warehouse, I made transformations using SQL.

 - After performing transformations, we run our model to create our new clean table in big query DWH to use for analysis.

- Analysis process can be done also in different ways such as any visualization tool (Power BI, Tableau, Metabase, and Google Data Studio)

  Here, I use Looker Studio  to make analysis and visualization as it is a Google product and it is an available option direct to Google Bigqury.
  

## Software and Programs
- Google Bigquery as our data warehouse
- dbt cloud to perform transformations and cleaning
- Looker Studio for Analysis and Visualization

The below image is a screenshot from dbt cloud containing the necessary files I created for the project on dbt

![Lineage_graph](https://github.com/Abdelnaem2002/Ecommerce-Analysis/assets/58599482/7c76c1de-8f04-42d8-bf2f-ed9865455446)




![bigquery](https://github.com/Abdelnaem2002/Ecommerce-Analysis/assets/58599482/1b2d19a9-50ab-45d3-b5c2-4ddf1fba4db3)


[Ecommerce_Analysis.pdf](https://github.com/Abdelnaem2002/Ecommerce-Analysis/files/14037779/Ecommerce_Analysis.pdf)



https://github.com/Abdelnaem2002/Ecommerce-Analysis/assets/58599482/88216fae-9f9b-494e-af94-4dceab7197f0



## Files

- Ecommerce.sql    contains Transformations and cleaning processes in SQL
- stg_orders.sql       contains all information about the product
- stg_customer.sql     contains all information about customers 
- shema.yml        contains  the model and description about it and  columns name and their description and tests
