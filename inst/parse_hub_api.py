# API call to parsehub to webscrape criterion website

import requests
import pandas


params = {
  "api_key": "tc_KT-ccRhTv",
  "format": "csv"
}

r = requests.get('https://parsehub.com/api/v2/projects/thik98fTHSuR', params=params)
r = requests.post("https://parsehub.com/api/v2/projects/thik98fTHSuR/run", data=params)
r = requests.get('https://parsehub.com/api/v2/runs/tfqs4Dv8rMMu/data', params=params)

#print(r.text)
f = open('data-raw/boxsets.csv', "w")
f.write(r.text)
f.close()
#boxsets = pandas.DataFrame()
#boxsets.to_csv('data-raw/boxsets.csv', index = False, header=True)
#

