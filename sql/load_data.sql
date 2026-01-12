TRUNCATE TABLE FORMULA_BOM;
TRUNCATE TABLE FORMULA_DETAILS;

-- Chargement des CSV en tables de staging temporaires
CREATE OR REPLACE TEMP TABLE stg_formula_bom AS
SELECT *
FROM read_csv_auto(
        'dataset/formula_bills_of_materials_encoded.csv',
        header      = TRUE,
        sample_size = -1,
        all_varchar = TRUE
);

CREATE OR REPLACE TEMP TABLE stg_formula_details AS
SELECT *
FROM read_csv_auto(
        'dataset/formula_details_encoded.csv',
        header      = TRUE,
        sample_size = -1,
        all_varchar = TRUE
);

-- Insertion dans les tables finales
INSERT INTO FORMULA_DETAILS
SELECT * FROM stg_formula_details;


INSERT INTO FORMULA_BOM
SELECT * FROM stg_formula_bom;

