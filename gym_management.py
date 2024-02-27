from tabulate import tabulate
import mysql.connector
con = mysql.connector.connect(host="localhost", user="root", password="Sasi@3005", database="gym_management_system")
def executeQuery(sql):
    res = con.cursor()
    res.execute(sql)
    con.commit()
    print("Operation Success...")

def selectQuery(sql):
    res = con.cursor()
    res.execute(sql)
    result = res.fetchall()
    return result

def login(users):
    res = con.cursor()
    sql = "select*from users where uname=%s and upwd=%s"
    res.execute(sql, users)
    result = res.fetchall()
    return result
uname=input("Enter Username   : ")
upwd=input("Enter Password :")
if len(login((uname,upwd)))>0:
    print("WELCOME")
else:
    print("...INVALIDE USERNAME OR PASSWORD...") 
while True:
    msg="""
    1. Workoutplan
    2. Create customer account
    3. Edit customer & workout plan details
    4. Payments
    5. Attendace
    6. Machine status
    7. Reports 
    8. EXIT"""
    print(msg)
    ch=int(input("Enter your choice: "))
    if ch==1:
        workout_name=input("Enter workout name: ")
        price_per_month=int(input("Enter the price: "))
        duration=input("Enter the time per day: ")
        sql = "insert into workout_plan(workout_name,price_per_month,duration)values('{}','{}','{}')".format(workout_name,price_per_month,duration)
        executeQuery(sql)

        
    elif ch==2:
        print("...CREATE CUSTOMER ACCOUNT... ")
        print("View workout plan")
        sql = "select wid,workout_name,price_per_month,duration from workout_plan"
        result = selectQuery(sql)
        if len(result) > 0:
            print(tabulate(result, headers=["wid", "workout_name","price_per_month","duration "]))
        else:
            print("No Records Found")
        cust_name=input("Custmer name: ") 
        mobile =input("customer mobile number: ")
        dob=input("customer date of birth: ")
        wid =input("Enter the workoutplan: ")
        gender=input("Gender: ")
        address=input("Enter the address: " )
        height=int(input("Height: "))
        weight=int(input("weight: "))        
        doj =input("Enter the starting date: ")
        sql = "insert into customer_details(cust_name,mobile,dob,wid,gender,address,weight,height,doj)values('{}','{}','{}','{}','{}','{}','{}','{}','{}')".format(cust_name,mobile,dob,wid,gender,address,weight,height,doj)
        executeQuery(sql)
        print("Account Created Successfully")
    elif ch==3:
        print("UPdATE THE DETAILS...")
        msg01="""111. customer details
                 222. Workoutplan
                 333. Payment details
                 """
        print(msg01)
        
    elif ch==4:
        print("PAYMENT DETAILS...")
        cid=int(input("Enter the customer id: "))
        paid_date=input("Enter the paid date: ")
        amount=int(input("Enter the paid amount: "))
        sql = "insert into payment_details(cid,paid_date,amount)values('{}','{}','{}')".format(cid,paid_date,amount)
        executeQuery(sql)
        

    elif ch==5:
        print("ATTANDANCE DETAILS...")
        cust_id=input("Customer id: ") 
        weight =input("Weight: ") 
        cur_date=input("Date: ")
        astatus =input("Attendance: ")
        sql="insert into attendance(cust_id, weight, cur_date, astatus)values('{}','{}','{}','{}')".format(cust_id, weight, cur_date, astatus)
        executeQuery(sql)
    elif ch==6:
        print("MACHINE STATUS...")
        machine_name=input("Machine name: ")
        purchase_date=input("Purchase date: ")
        machine_status=input("Machine status: ")
        company_name=input("Company name: ")
        sql="insert into machine_status(machine_name,purchase_date,machine_status,company_name)values('{}','{}','{}','{}')".format(machine_name,purchase_date,machine_status,company_name)
        executeQuery(sql)
    elif ch==7:
        print("Reports")
    elif ch==8:
        print("Thank You Visit Again...!")
        quit()
    else:
        print("INVALID CHOICE...")
    