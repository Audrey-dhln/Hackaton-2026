import pandas as pd

df = pd.read_csv('formula_details_encoded.csv')

df_clean = df.drop_duplicates(subset=[
                                      'Intended Level of Use in %',
                                      'Keywords',
                                      'List of Countries of Destination',
                                      'Product Type',
'Recommended Shelf Life (in months)',
'Region'], keep="first")

df_clean.to_csv('formula_details_clean.csv', index=False)
