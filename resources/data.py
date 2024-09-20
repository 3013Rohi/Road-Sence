state = ["Andhra Pradesh", 'Arunachal Pradesh', 'Assam', 'Bihar', 'Chhattisgarh', 'Goa', 'Gujarat', 'Haryana',
         'Himachal Pradesh', 'Jammu & Kashmir', 'Jharkhand', 'Karnataka', 'Kerala', 'Madhya Pradesh', 'Maharashtra', 
         'Manipur', 'Meghalaya', 'Mizoram', 'Nagaland', 'Orissa', 'Punjab', 'Rajasthan', 'Sikkim', 'Tamil Nadu', 
         'Telangana', 'Tripura', 'Uttarakhand', 'Uttar Pradesh', 'West Bengal', 'A & N Islands', 'Chandigarh', 
         'D & N Haveli','Daman & Diu', 'Delhi', 'Lakshadweep', 'Puducherry']


junction = ['T-Junction', 'Y-Junction', 'Four arm Junction', 'Staggered Junction','Round about Junction', 'Others']


vehicle_age = ['Less than 5 years', '5.1 - 10 Years', '10.1 - 15 Years', '> 15 Years','Age not known']


human_age_sex = ['18 Yrs -Male', '18 Yrs - Female', '18-25 Yrs - Male', '18-25 Yrs - Female', '25-35 Yrs- Male', 
                 '25-35 Yrs - Female', '35-40 Yrs- Male', '35-40 Yrs - Female','45-60 Yrs- Male', '45-60 Yrs- Female', 
                 '60 Yrs above- Male', '60 Yrs above -Female', 'Age not known - Male', 'Age not known - Female']


person_without_precautions = ['Drivers','Passengers']


area = ['Residential Area', 'Institutional Area', 'Market/Commercial Area', 'Open Area']


type_of_place = ['Urban', 'Rural']


vehicle_load = ['Normally Loaded', 'Overloaded/Hangin', 'Others']


traffic_rules_violation = ['Over-Speeding', 'Drunken Driving/Consumption of Alcohol & Drug', 'Driving on Wrong Side', 
                           'Jumping Red Light', 'Use of Mobile Phone']


weather = ['Sunny/Clear', 'Rainy', 'Foggy & Misty', 'Hail/Sleet','Others']


vehicle_type_sex = ['Pedestrian - Male', 'Pedestrian - Female', 'Bycycles - Male', 'Bycycles - Female', 
                    'Two Wheelers - Male', 'Two Wheelers - Female', 'Auto Rickshaws - Male', 'Auto Rickshaws - Female',
                    'Cars & taxies Vans & LMV - Male', 'Cars & taxies Vans & LMV - Female', 'Trucks/Lorries - Male', 
                    'Trucks/Lorries - Female', 'Buses - Male', 'Buses - Female', 'Other Motor Vehicles - Male', 
                    'Other Motor Vehicles - Female' ]


road_type = ['Straight Road', 'Curved Road', 'Bridge', 'Culvert', 'Pot Holes', 'Steep Grade', 
             'Ongoing Road Works/Under Construction','Others']


license_type = ['License Valid Permanent', "Learner's Licence", 'Without Licence']


time = ['06-0900hrs - (Day)', '09-1200hrs - (Day)', '12-1500hrs - (Day)', '15-1800hrs - (Day)', '18-2100hrs - (Night)',
        '21-2400hrs - (Night)', '00-300hrs - (Night)', '03-600hrs - (Night)', 'Unknown Time']


columnCodes = {'Andhra Pradesh': 1, 'Arunachal Pradesh': 2, 'Assam': 3, 'Bihar': 4, 'Chhattisgarh': 6, 'Goa': 10, 
               'Gujarat': 11, 'Haryana': 12, 'Himachal Pradesh': 13, 'Jammu & Kashmir': 14, 'Jharkhand': 15, 
               'Karnataka': 16, 'Kerala': 17, 'Madhya Pradesh': 19, 'Maharashtra': 20, 'Manipur': 21, 'Meghalaya': 22, 
               'Mizoram': 23, 'Nagaland': 24, 'Orissa': 25, 'Punjab': 27, 'Rajasthan': 28, 'Sikkim': 29, 'Tamil Nadu': 30, 
               'Telangana': 31, 'Tripura': 32, 'Uttarakhand': 34, 'Uttar Pradesh': 33, 'West Bengal': 35, 
               'A & N Islands': 0, 'Chandigarh': 5, 'D & N Haveli': 7, 'Daman & Diu': 8, 'Delhi': 9, 'Lakshadweep': 18, 
               'Puducherry': 26, 'T-Junction': 4, 'Y-Junction': 5, 'Four arm Junction': 0, 'Staggered Junction': 3, 
               'Round about Junction': 2, 'Others': 1, 'Less than 5 years': 4, '5.1 - 10 Years': 1, '10.1 - 15 Years': 0, 
               '> 15 Years': 2, 'Age not known': 3, '18 Yrs -Male': 1, '18 Yrs - Female': 0, '18-25 Yrs - Male': 3, 
               '18-25 Yrs - Female': 2, '25-35 Yrs- Male': 5, '25-35 Yrs - Female': 4, '35-40 Yrs- Male': 7, 
               '35-40 Yrs - Female': 6, '45-60 Yrs- Male': 9, '45-60 Yrs- Female': 8, '60 Yrs above- Male': 11, 
               '60 Yrs above -Female': 10, 'Age not known - Male': 13, 'Age not known - Female': 12, 'Drivers': 0, 
               'Passengers': 1, 'Residential Area': 3, 'Institutional Area': 0, 'Market/Commercial Area': 1,'Open Area': 2, 
               'Urban': 1, 'Rural': 0, 'Normally Loaded': 0, 'Overloaded/Hangin': 2, 'Over-Speeding': 3, 
               'Drunken Driving/Consumption of Alcohol & Drug': 1, 'Driving on Wrong Side': 0, 'Jumping Red Light': 2,
               'Use of Mobile Phone': 4, 'Sunny/Clear': 4, 'Rainy': 3, 'Foggy & Misty': 0, 'Hail/Sleet': 1, 
               'Pedestrian - Male': 11, 'Pedestrian - Female': 10, 'Bycycles - Male': 5, 'Bycycles - Female': 4, 
               'Two Wheelers - Male': 15, 'Two Wheelers - Female': 14, 'Auto Rickshaws - Male': 1, 
               'Auto Rickshaws - Female': 0, 'Cars & taxies Vans & LMV - Male': 7, 'Cars & taxies Vans & LMV - Female': 6, 
               'Trucks/Lorries - Male': 13, 'Trucks/Lorries - Female': 12, 'Buses - Male': 3, 'Buses - Female': 2, 
               'Other Motor Vehicles - Male': 9, 'Other Motor Vehicles - Female': 8, 'Straight Road': 7, 
               'Curved Road': 2, 'Bridge': 0, 'Culvert': 1, 'Pot Holes': 5, 'Steep Grade': 6, 
               'Ongoing Road Works/Under Construction': 3, 'License Valid Permanent': 1, "Learner's Licence": 0, 
               'Without Licence': 2, '06-0900hrs - (Day)': 2, '09-1200hrs - (Day)': 3, '12-1500hrs - (Day)': 4, 
               '15-1800hrs - (Day)': 5, '18-2100hrs - (Night)': 6, '21-2400hrs - (Night)': 7, '00-300hrs - (Night)': 0, 
               '03-600hrs - (Night)': 1, 'Unknown Time': 8}