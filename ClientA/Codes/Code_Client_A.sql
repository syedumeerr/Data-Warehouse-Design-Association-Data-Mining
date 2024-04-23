-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://github.com/pgadmin-org/pgadmin4/issues/new/choose if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public."Country"
(
    country_id character(10) COLLATE pg_catalog."default" NOT NULL,
    country_name character(50) COLLATE pg_catalog."default",
    regions character(1) COLLATE pg_catalog."default",
    CONSTRAINT "dim_country_A_pkey" PRIMARY KEY (country_id)
);

CREATE TABLE IF NOT EXISTS public."Fact_table"
(
    fact_id character(10) COLLATE pg_catalog."default" NOT NULL,
    population_id character(20) COLLATE pg_catalog."default",
    year_id character(10) COLLATE pg_catalog."default",
    country_id character(10) COLLATE pg_catalog."default",
    "GDP per capita" numeric(20, 0),
    "% annual GDP per capita growth" numeric(20, 0),
    "Infant mortality rate " numeric(20, 0),
    "Population" numeric(20, 0),
    "Poverty ratio" numeric(10, 0),
    "Secure Internet servers" numeric(20, 0),
    "% GDP Current health expenditure" numeric(20, 0),
    "Government health expenditure per capita" numeric(20, 0),
    "Private health expenditure per capita" numeric(20, 0),
    "External health expenditure per capita" numeric(20, 0),
    CONSTRAINT ecnomics_data_pkey PRIMARY KEY (fact_id)
);

CREATE TABLE IF NOT EXISTS public."Time"
(
    year_id character(10) COLLATE pg_catalog."default" NOT NULL,
    game_year integer,
    game_season character(40) COLLATE pg_catalog."default",
    CONSTRAINT "dim_time_A_pkey" PRIMARY KEY (year_id)
);

CREATE TABLE IF NOT EXISTS public.population
(
    population_id character(10) COLLATE pg_catalog."default" NOT NULL,
    country_population character(10) COLLATE pg_catalog."default",
    "YR1980" character(10) COLLATE pg_catalog."default",
    "YR1981" character(10) COLLATE pg_catalog."default",
    "YR1982" character(10) COLLATE pg_catalog."default",
    "YR1983" character(10) COLLATE pg_catalog."default",
    "YR1984" character(10) COLLATE pg_catalog."default",
    "YR1985" character(10) COLLATE pg_catalog."default",
    "YR1986" character(10) COLLATE pg_catalog."default",
    "YR1987" character(10) COLLATE pg_catalog."default",
    "YR1988" character(10) COLLATE pg_catalog."default",
    "YR1989" character(10) COLLATE pg_catalog."default",
    "YR1990" character(10) COLLATE pg_catalog."default",
    "YR1991" character(10) COLLATE pg_catalog."default",
    "YR1992" character(10) COLLATE pg_catalog."default",
    "YR1993" character(10) COLLATE pg_catalog."default",
    "YR1994" character(10) COLLATE pg_catalog."default",
    "YR1995" character(10) COLLATE pg_catalog."default",
    "YR1996" character(10) COLLATE pg_catalog."default",
    "YR1997" character(10) COLLATE pg_catalog."default",
    "YR1998" character(10) COLLATE pg_catalog."default",
    "YR1999" character(10) COLLATE pg_catalog."default",
    "YR2000" character(10) COLLATE pg_catalog."default",
    "YR2001" character(10) COLLATE pg_catalog."default",
    "YR2002" character(10) COLLATE pg_catalog."default",
    "YR2003" character(10) COLLATE pg_catalog."default",
    "YR2004" character(10) COLLATE pg_catalog."default",
    "YR2005" character(10) COLLATE pg_catalog."default",
    "YR2006" character(10) COLLATE pg_catalog."default",
    "YR2007" character(10) COLLATE pg_catalog."default",
    "YR2008" character(10) COLLATE pg_catalog."default",
    "YR2009" character(10) COLLATE pg_catalog."default",
    "YR2010" character(10) COLLATE pg_catalog."default",
    "YR2011" character(10) COLLATE pg_catalog."default",
    "YR2012" character(10) COLLATE pg_catalog."default",
    "YR2013" character(10) COLLATE pg_catalog."default",
    "YR2014" character(10) COLLATE pg_catalog."default",
    "YR2015" character(10) COLLATE pg_catalog."default",
    "YR2016" character(10) COLLATE pg_catalog."default",
    "YR2017" character(10) COLLATE pg_catalog."default",
    "YR2018" character(10) COLLATE pg_catalog."default",
    "YR2019" character(10) COLLATE pg_catalog."default",
    "YR2020" character(10) COLLATE pg_catalog."default",
    "YR2021" character(10) COLLATE pg_catalog."default",
    "YR2022" character(10) COLLATE pg_catalog."default",
    "YR2023" character(10) COLLATE pg_catalog."default",
    CONSTRAINT population_pkey PRIMARY KEY (population_id)
);

ALTER TABLE IF EXISTS public."Fact_table"
    ADD CONSTRAINT "Fact_table_population_id_fkey" FOREIGN KEY (population_id)
    REFERENCES public.population (population_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Fact_table"
    ADD CONSTRAINT ecnomics_data_country_id_fkey FOREIGN KEY (country_id)
    REFERENCES public."Country" (country_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Fact_table"
    ADD CONSTRAINT ecnomics_data_year_id_fkey FOREIGN KEY (year_id)
    REFERENCES public."Time" (year_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

END;