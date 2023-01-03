import os
# database.py
# Handles all the methods interacting with the database of the application.
# Students must implement their own methods here to meet the project requirements.
#This is where the business requirments methods go.
my_secret = os.environ['DISCORD_TOKEN']
import os
import pymysql.cursors

db_host = os.environ['DB_HOST']
db_username = os.environ['DB_USER']
db_password = os.environ['DB_PASSWORD']
db_name = os.environ['DB_NAME']


def connect():
  try:
    conn = pymysql.connect(host=db_host,
                           port=3306,
                           user=db_username,
                           password=db_password,
                           db=db_name,
                           charset="utf8mb4",
                           cursorclass=pymysql.cursors.DictCursor)
    print("Bot connected to database {}".format(db_name))
    return conn
  except:
    print(
      "Bot failed to create a connection with your database because your secret environment variables "
      + "(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) are not set".format(db_name))
    print("\n")

#My code 
def checking_account_balances(checking_account_id):

  try:
    connection = connect()
    if connection:
      
      cursor = connection.cursor()
      query = """SELECT * FROM checking_account"""
      cursor.execute(query)
      ans = cursor.fetchall()
      for i in ans:
        print(i)

      string = ''
      for row in ans:
        checking_account_id, account_owner_id, bank_account_id, routing_number, balance, debit_card_id, withdrawls_id, deposits_id = row 
      string = string + row['checking_account_id']+', '+str(row['account_owner_id']) + ', '+str(row['bank_account_id'])+ ', '+str(row['routing_number'])+ ', '+str(row['balance'])+', '+str(row['debit_card_id'])+', '+str(row['withdrawls_id'])+', '+str(row['deposits_id'])+ "\n"

      return string
      cursor.close
      connection.close


  except:
   return "error"
      
def loans(bank_account_id):      
  try:
    connection = connect()
    if connection:
      
      query = "SELECT * FROM loan WHERE loan_amount > %s" 
      cursor = connection.cursor()
      args= (bank_account_id)
      cursor.execute(query, bank_account_id) 
      print("Executed query")
      string = ''
      for row in cursor.fetchall():
        loan_id, loan_amount, bank_account_id = row
        string = string + row['loan_id']+ str(row['loan_amount']) + ', '+str(row['bank_account_id'])+"\n"
        
      return string
      cursor.close
      connection.close

  except:
   return "error"

def credit_card(bank_account_id):      
  try:
    connection = connect()
    if connection:
      query = "SELECT * FROM credit_card WHERE account_owner_id = %s" 
      cursor = connection.cursor()
      args=(bank_account_id)
      cursor.execute(query, args) 
      string = ''
      for row in cursor.fetchall():
        credit_card_id, account_owner_id, balance = row
        string = string + row['credit_card_id']+ str(row['account_owner_id']) + ', '+str(row['balance'])+"\n"
        

      return string
      cursor.close
      connection.close

  except:
   return "error"


def investments(bank_account_id):      
  try:
    connection = connect()
    if connection:
      query = "SELECT investments_id, bank_account_id, stock_value FROM investments WHERE bank_account_id =%s " 
      cursor = connection.cursor()
      args=(bank_account_id)
      cursor.execute(query, args) 
      string = ''
      for row in cursor.fetchall():
        account_owner_id, checking_account_id, balance = row
        string = string + row['investments_id']+ str(row['bank_account_id']) + ', '+str(row['stock_value'])+"\n"
        
      return string
      cursor.close
      connection.close

  except:
   return "error"

def deposits(bank_account_id):      
  try:
    connection = connect()
    if connection:
      query = "SELECT deposits_id, checking_account_id, amount FROM deposits WHERE checking_account_id =%s " 
      cursor = connection.cursor()
      args=(bank_account_id)
      cursor.execute(query, args) 
      string = ''
      for row in cursor.fetchall():
        account_owner_id, checking_account_id, balance = row
        string = string + row['account_owner_id']+ row['checking_account_id'] + ', '+str(row['balance'])+"\n"
        
      return string
      cursor.close
      connection.close

  except:
   return "error"


def crypto():      
  try:
    connection = connect()
    if connection:
      query = "SELECT * FROM crypto_wallet_account" 
      cursor = connection.cursor()
      cursor.execute(query) 
      string = ''
      for row in cursor.fetchall():
        crypto_wallet_account_id, account_owner_id, balance = row
        string = string + row['crypto_wallet_account_id']+ str(row['account_owner_id']) + ', '+str(row['balance'])+"\n"
        
      return string
      cursor.close
      connection.close

  except:
   return "error"


def entered_deposit(savings_account_id):      
  try:
    connection = connect()
    if connection:
      query = "SELECT savings_account_id, account_owner_id, deposits_id FROM savings_account WHERE savings_account_id =%s " 
      cursor = connection.cursor()
      args=(savings_account_id)
      cursor.execute(query, args) 
      print("Executed query")
      string = ''
      for row in cursor.fetchall():
        savings_account_id, account_owner_id, balance = row
        string = string + row['savings_account_id']+ str(row['account_owner_id']) + ', '+str(row['deposits_id'])+"\n"
        
        
      return string
      cursor.close
      connection.close

  except:
   return "error"


def transfer_deposit(checking_account_id, savings_account_id):      
  try:
    connection = connect()
    if connection:
      query = "" 
      cursor = connection.cursor()
      cursor.execute(query) 
      print("Executed query")
      string = ''
      for row in cursor.fetchall():
        account_owner_id, checking_account_id, balance = row
        string = ""
        
      return string
      cursor.close
      connection.close

  except:
   return "error"


def avg_spent(card_id):      
  try:
    connection = connect()
    if connection:
      query = "SELECT debit_card_id, card_owner_name, total_amount_spent FROM debit_card WHERE debit_card_id =%s "
      cursor = connection.cursor()
      args=(card_id)
      cursor.execute(query,args) 
      print("Executed query")
      string = ''
      for row in cursor.fetchall():
        debit_card_id, card_owner_name, total_amount_spent = row
        string = string + row['debit_card_id']+ str(row['card_owner_name']) + ', '+str(row['total_amount_spent'])+"\n"
        
      return string
      cursor.close
      connection.close

  except:
   return "error"


def deposits_greater(enteredAmount):      
  try:
    connection = connect()
    if connection:
      query = "SELECT deposits_id, account_owner_id, total_amount FROM deposits WHERE total_amount > =%s" 
      cursor = connection.cursor()
      args=(enteredAmount)
      cursor.execute(query,args) 
      print("Executed query")
      string = ''
      for row in cursor.fetchall():
        deposits_id, account_owner_id, total_amount = row
        string = string + row['deposits_id']+ str(row['account_owner_id']) + ', '+str(row['total_amount'])+"\n"

      return string
      cursor.close
      connection.close

  except:
   return "error"


def top_account_balances(enteredAmount):      
  try:
    connection = connect()
    if connection:
      query = "SELECT DISTINCT checking_account_id, routing_number, balance FROM checking_account WHERE balance =%s " 
      cursor = connection.cursor()
      args =(enteredAmount)
      cursor.execute(query, args) 
      print("Executed query")
      string = ''
      for row in cursor.fetchall():
        checking_account_id, routing_number, routing_number = row
        string = string + row['checking_account_id']+ str(row['routing_number']) + ', '+str(row['routing_number'])+"\n"

        
      return string
      cursor.close
      connection.close

  except:
   return "error"


def withdrawals_savings(amount_withdrawaled):      
  try:
    connection = connect()
    if connection:
      query = "" 
      cursor = connection.cursor()
      cursor.execute(query) 
      print("Executed query")
      string = ''
      for row in cursor.fetchall():
        account_owner_id, checking_account_id, balance = row
        string = "\n"
        
      return string
      cursor.close
      connection.close

  except:
   return "error"

def closing_crypto_account(crypto_account_id):      
  try:
    connection = connect()
    if connection:
      query = "" 
      cursor = connection.cursor()
      cursor.execute(query) 
      print("Executed query")
      string = ''
      for row in cursor.fetchall():
        account_owner_id, checking_account_id, balance = row
        string = "\n"
        
      return string
      cursor.close
      connection.close

  except:
   return "error"

def closing_checking_account(checking_account_id):      
  try:
    connection = connect()
    if connection:
      query = "" 
      cursor = connection.cursor()
      cursor.execute(query) 
      print("Executed query")
      string = ''
      for row in cursor.fetchall():
        account_owner_id, checking_account_id, balance = row
        string = "\n"
        
      return string
      cursor.close
      connection.close

  except:
   return "error"


def closing_bank_account(bank_account_id):      
  try:
    connection = connect()
    if connection:
      query = "" 
      cursor = connection.cursor()
      cursor.execute(query) 
      print("Executed query")
      string = ''
      for row in cursor.fetchall():
        account_owner_id, checking_account_id, balance = row
        string = "\n"
        
      return string
      cursor.close
      connection.close

  except:
   return "error"


def delete_debit_card(debit_card_id):      
  try:
    connection = connect()
    if connection:
      query = "" 
      cursor = connection.cursor()
      cursor.execute(query) 
      print("Executed query")
      string = ''
      for row in cursor.fetchall():
        account_owner_id, checking_account_id, balance = row
        string = "\n"
        
      return string
      cursor.close
      connection.close

  except:
   return "error"
    
