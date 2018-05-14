from flask import Flask, redirect, request
from itertools import product as d
import re
import json
import DbOperations

#n=range
app = Flask(__name__)
@app.route('/getdriverNames')
def getdriverNames():
    return DbOperations.getDriver()

@app.route('/getCars')
def getCars():
    #gg=DbOperations.getDriver()
    #print(type(gg))
    return DbOperations.getVechile()


@app.route('/getValues')
def getValues():
    date_today = request.args.get('date_today')
    ts = request.args.get('ts')
    company = request.args.get('company')
    cust_name = request.args.get('cust_name')
    cust_mob_no = request.args.get('cust_mob_no')
    tour_details = request.args.get('tour_details')
    vechile_no =request.args.get('vechile_no')
    driver = request.args.get('driver')
    in_km = request.args.get('in_km')
    out_km = request.args.get('out_km')
    total_km = request.args.get('total_km')
    in_time = request.args.get('in_time')
    total_hrs = request.args.get('total_hrs')
    adv = request.args.get('adv')
    total_amt = request.args.get('total_amt')
    bal = request.args.get('bal')
    status = request.args.get('status')
    remarks = request.args.get('remarks')
    values=(ts,date_today,company,cust_name,cust_mob_no,tour_details,vechile_no,driver,in_km,out_km,total_km,in_time,
                total_hrs,adv,total_amt,bal,status,remarks)
    DbOperations.insertValues(values)

    return "Saved Sucessfully"

if __name__ == '__main__':
    app.run(debug=True)
