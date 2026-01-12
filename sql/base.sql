--Formula ID	Material Number	QUANTITY	%

CREATE OR REPLACE TABLE FORMULA_DETAILS(
       Formula_ID INTEGER PRIMARY KEY,
       Intended_Level_Of_Use_In_Percentage DOUBLE,
       Keywords VARCHAR(200),
       List_Of_Countries_Of_Destination VARCHAR(200),
       Product_Type VARCHAR(200),
       Recommended_Shelf_Life_In_Months INTEGER,
       Region VARCHAR(200),
);

CREATE OR REPLACE TABLE FORMULA_BOM(
       Formula_ID INTEGER ,
        Material_Number INTEGER,
        Quantity DOUBLE,
        Percentage DOUBLE,
        CONSTRAINT FK_FORMULA_BOM FOREIGN KEY (Formula_ID) REFERENCES FORMULA_DETAILS(Formula_ID)
);
--Formula ID	Intended Level of Use in %	Keywords	List of Countries of Destination	Product Type	Recommended Shelf Life (in months)	Region

