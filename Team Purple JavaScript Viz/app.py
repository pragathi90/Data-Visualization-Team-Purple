import os

import csv
import json
from flask import Flask, jsonify, render_template
import pandas as pd

jobs_data = []

with open('positions.csv') as csvfile:
    reader = csv.reader(csvfile)
    
    for row in reader:
        jobs_data.append(row)

jobs_data_df = pd.DataFrame(jobs_data)

jobs_data_df.columns = ['pos_id', 'position', 'company', 'city', 'state', 'zip', 'lat', 'lng']

jobs_data_df = jobs_data_df.iloc[1:]

jobs_data_df = jobs_data_df.to_json(orient='records')

app = Flask(__name__)
@app.route("/jobs_data")
def json_jobs_data():
    return jobs_data_df

@app.route("/")
def echo():
    return render_template("index.html")

# if __name__ == "__main__":
#     app.run(debug=True)

if __name__ == "__main__":
    # Bind to PORT if defined, otherwise default to 5000.
    port = int(os.environ.get('PORT', 3000))
    app.run(host='127.0.0.1', port=port)
    # app.run()


    # http://127.0.0.1:5000/