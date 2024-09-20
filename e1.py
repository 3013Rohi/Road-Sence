from flask import Flask, request, render_template, redirect, url_for
import pandas as pd
import pickle
import resources.data as data
import sklearn
print(sklearn.__version__)


app = Flask(__name__)
users = [{'username': 'Rohit30', 'password': 'Rohit@30'}]
admins = [{'username': 'Admin', 'password': 'Admin@123'}]

model = pickle.load(open('model.pkl', 'rb'))

@app.route('/')
@app.route('/first') 
def first():
    return render_template('first.html')

@app.route('/download')
def download():
    return render_template('upload.html')

@app.route('/upload') 
def upload():
    return render_template('upload.html') 

@app.route('/preview', methods=["POST"])
def preview():
    if request.method == 'POST':
        dataset = request.files['datasetfile']
        df = pd.read_csv(dataset, encoding='unicode_escape')
        df.set_index('Id', inplace=True)
        return render_template("preview.html", df_view=df)

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        role = request.form.get('role')
        username = request.form.get('username')
        password = request.form.get('password')
        
        if role == 'user':
            user = next((user for user in users if user['username'] == username and user['password'] == password), None)
            if user:
                return redirect(url_for('upload'))
            else:
                return "Invalid user credentials"
        elif role == 'admin':
            admin = next((admin for admin in admins if admin['username'] == username and admin['password'] == password), None)
            if admin:
                return redirect(url_for('admin_dashboard'))
            else:
                return "Invalid admin credentials"
    return render_template('login.html')


@app.route('/create_account')
def create_account():
    return render_template('create_account.html')  # Ensure you have a corresponding HTML file
@app.route('/admin_dashboard')
def admin_dashboard():
    return render_template('admin_dashboard.html')

@app.route('/forget_password')
def forget_password():
    return render_template('forget_password.html')  # Make sure to create this template

@app.route('/chart') 
def chart():
    return render_template('chart.html') 

@app.route('/performance') 
def performance():
    return render_template('performance.html')     

@app.route('/home')
def home():
    return render_template('index.html', states=data.state, junctions=data.junction, vechicleAge=data.vehicle_age, 
                           humanAgeSex=data.human_age_sex, personWithoutPrecautions=data.person_without_precautions, 
                           areas=data.area, typeOfPlace=data.type_of_place, vehicleLoad=data.vehicle_load, 
                           trafficRulesViolation=data.traffic_rules_violation, weather=data.weather, 
                           vehicleTypeSex=data.vehicle_type_sex, roadType=data.road_type, License=data.license_type, 
                           time=data.time)

@app.route('/predict', methods=['POST'])
def predict():
    userFeatures = [x for x in request.form.values()]
    
    testData = {'States/UTs':[userFeatures[0]], 'JUNCTION':[userFeatures[1]], 'VEHICLE AGE':[userFeatures[2]],
                'HUMAN AGE AND SEX':[userFeatures[3]], 'PERSON WITHOUT SAFETY PRECAUTIONS':[userFeatures[4]],
                'AREA':[userFeatures[5]], 'TYPE OF PLACE':[userFeatures[6]], 'LOAD OF VEHICLE':[userFeatures[7]],
                'TRAFFIC RULES VIOLATION':[userFeatures[8]], 'WEATHER':[userFeatures[9]], 
                'VEHICLE TYPE AND SEX':[userFeatures[10]], 'TYPE OF ROAD':[userFeatures[11]], 'LICENSE':[userFeatures[12]],
                'TIME':[userFeatures[13]]}
    
    for col in testData:
        code = [data.columnCodes[''.join(testData[col])]]
        testData[col] = code
    
    selected_features = ['States/UTs', 'JUNCTION', 'VEHICLE AGE', 'HUMAN AGE AND SEX']
    testDataFrame = pd.DataFrame({feature: testData[feature] for feature in selected_features})
    
    prediction = model.predict(testDataFrame)
 
    if prediction[0] == 0:
        output = "No, There is No Chance of Road Accident."
    else:
        output = "Yes, There is a Chance Of Road Accident! Be Careful."
    
    return render_template('index.html', states=data.state, junctions=data.junction, vechicleAge=data.vehicle_age, 
                           humanAgeSex=data.human_age_sex, personWithoutPrecautions=data.person_without_precautions, 
                           areas=data.area, typeOfPlace=data.type_of_place, vehicleLoad=data.vehicle_load, 
                           trafficRulesViolation=data.traffic_rules_violation, weather=data.weather, 
                           vehicleTypeSex=data.vehicle_type_sex, roadType=data.road_type, License=data.license_type, 
                           time=data.time, prediction_text=output)    

if __name__ == "__main__":
    app.run(debug=True)
