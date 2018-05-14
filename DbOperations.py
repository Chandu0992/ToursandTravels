import pymysql
import json

def insertValues(inputValues):
    conn = pymysql.connect(host="localhost",user="root",passwd="",db="taztoursandtravels")
    myCursor = conn.cursor()
    insert_query = '''insert into tripsheet (TS,Date,Company,customer,CustMobileNo,TourDetails,VechileNo,Driver,InKm,OutKm,TotalKm,InTime,TotalHrs,Adv,TotalAmount,Bal,Status,Remarks)
                        values (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);'''
    myCursor.execute(insert_query,inputValues)
    conn.commit()
    conn.close()

def getDriver():
    conn = pymysql.connect(host="localhost",user="root",passwd="",db="taztoursandtravels")
    myCursor = conn.cursor()
    drivernames = '''select DriverName from driver'''
    myCursor.execute(drivernames)
    data = myCursor.fetchall()
    i = 0
    driver_names = {}
    for row in data:
        driver_names[i] = row[0]
        i =i+1
    conn.close()
    return json.dumps(driver_names)

def getVechile():
    conn = pymysql.connect(host="localhost",user="root",passwd="",db="taztoursandtravels")
    myCursor = conn.cursor()
    cars = '''select CarDetails from vechile'''
    myCursor.execute(cars)
    data = myCursor.fetchall()
    i = 0
    car_nos = {}
    for row in data:
        car_nos[i] = row[0]
        i =i+1
    conn.close()
    return json.dumps(car_nos)
