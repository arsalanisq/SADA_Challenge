df = pd.read_csv('Raw.csv')
df
df.info

data2 = df[pd.to_numeric(df['Profit (in millions)'], errors ='coerce').notnull()] 
data2
data2.to_json('data2.json')
df = pd.read_json('data2.json')
df
data = df.sort_index(axis=0,ascending=False) 
data.head(20)
