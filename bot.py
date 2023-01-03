# This file will have all the logic for the bot processing the command, selecting the proper function to run against the models, and returningn the data specified by the user input.

import bot_commands
# import dbmodels as dm
import database as db


def response(msg):
  
  response_data = None  #Null
  msg_data = msg.split()
  bot_command = msg_data[0]
  arguments = msg_data[1:]

  if bot_command in bot_commands.CHECKING_ACCOUNT_BALANCE:
    if len(arguments) ==1:
      account = arguments[0]
      response_data = account_balance_for_checking_account(account)
    else:
      return "This command requires an account number. Enter numbers 1-5"
      
  elif bot_command in bot_commands.LOAN_BALANCE:
    if len(arguments)==1:
      accountNum = arguments[0]
      response_data = loan_balance(accountNum)
    else:
      return "This command requires an account number. Enter numbers 1-5"

  elif bot_command in bot_commands.CREDIT_CARD_BALANCE:
    if len(arguments)==1:
      accountNum = arguments[0]
      response_data = credit_card_balance_for_account(accountNum)
    else:
      return "This command requires an account number. Enter numbers 1-5"


  elif bot_command in bot_commands.INVESTMENTS_PER_ACCOUNT:
    if len(arguments)==1:
      accountNum = arguments[0]
      response_data = investments_per_bank_account(accountNum)
    else:
      return "This command requires an account number. Enter numbers 1-5"

      
  elif bot_command in bot_commands.DEPOSIT_AMOUNT:
    if len(arguments)==1:
      accountNum = arguments[0]
      response_data = deposits_per_checking_account(accountNum)
    else:
      return "This command requires an account number. Enter numbers 1-5"


  elif bot_command in bot_commands.ACCOUNTS_WITH_CRYTPO_WALLET:
    if len(arguments)==0:
      response_data = crypto_wallet_accounts()
    else:
      return "This command requires an account number. Enter numbers 1-5"

  elif bot_command in bot_commands.NEW_DEPOSIT_ENTERED:
    if len(arguments)==1:
      accountNum = arguments[0]
      response_data = new_deposit_in_savings_account(accountNum)
    else:
      return "This command requires an account number. Enter numbers 1-5"

  elif bot_command in bot_commands.CHECKING_TO_SAVINGS:
    if len(arguments)==1:
      return "This command requires a savings account number"

    elif len(arguments)==2:
      checking_account=arguments[1]
      savings_account= arguments[2]
      response_data = send_deposit_checking_to_savings(checking_account, savings_account)

    else:
      return "This command requires a checking account number and savings account number. Please try again"


  elif bot_command in bot_commands.AVG_SPENT_ON_CARD:
    if len(arguments)==1:
      cardNum = arguments[0]
      response_data = avg_spent_on_card(cardNum)
    else:
      return "This command requires an account number. Enter numbers 1-5"

  elif bot_command in bot_commands.BIG_DEPOSITS:
    if len(arguments)==1:
      amount = arguments[0]
      response_data = deposit_total_greater_than(amount)
    else:
      return "This command requires an account number. Enter numbers 1-5"

  elif bot_command in bot_commands.TOP_ACCOUNT_OWNERS:
    if len(arguments)==1:
      amount = arguments[0]
      response_data = largest_account_owner_balance(amount)
    else:
      return "This command requires an account number. Enter numbers 1-5"

  elif bot_command in bot_commands.WITHDRAWALS_FROM_SAVINGS:
    if len(arguments)==1:
      amountTaken = arguments[0]
      response_data = total_savings_account_withdrawals(amountTaken)
    else:
      return "This command requires an account number. Enter numbers 1-5"

  elif bot_command in bot_commands.CLOSED_CRYPTO_ACCOUNT:
    if len(arguments)==1:
      accountNum = arguments[0]
      response_data = crypto_account_closed_by(accountNum)
    else:
      return "This command requires an account number. Enter numbers 1-5"


  elif bot_command in bot_commands.CLOSED_CHECKING_ACCOUNT:
    if len(arguments)==1:
      accountNum = arguments[0]
      response_data = checking_account_closed_by(accountNum)
    else:
      return "This command requires an account number. Enter numbers 1-5"


  elif bot_command in bot_commands.CLOSED_BANK_ACCOUNT:
    if len(arguments)==1:
      accountNum = arguments[0]
      response_data = bank_account_closed_by(accountNum)
    else:
      return "This command requires an account number. Enter numbers 1-5"

  elif bot_command in bot_commands.DELETED_DEBIT_CARD:
    if len(arguments)==1:
      debitCardNum = arguments[0]
      response_data = debit_card_closed_by(debitCardNum)
    else:
      return "This command requires an account number. Enter numbers 1-5"


def account_balance_for_checking_account(balance_amount):
  account = db.checking_account_balances(balance_amount)

def loan_balance(bank_account_id ):
  accountNum = db.loans(bank_account_id )


def credit_card_balance_for_account(bank_account_id):
  accountNum = db.credit_card(bank_account_id)

def investments_per_bank_account(bank_account_id):
  accountNum = db.investments(bank_account_id)

def deposits_per_checking_account(bank_account_id):
  accountNum = db.deposits(bank_account_id)


def crypto_wallet_accounts():
  db.crypto()


def new_deposit_in_savings_account(savings_account_id):
  accountNum = db.entered_deposit(savings_account_id)
  
def send_deposit_checking_to_savings(checking_account_id, savings_account_id):
  checking_account= db.transfer_deposit(checking_account_id)
  savings_account= db.transfer_deposit(savings_account_id)

def avg_spent_on_card(card_id):
   cardNum = db.avg_spent(card_id)

def deposit_total_greater_than(enteredAmount):
   amount= db.deposits_greater(enteredAmount)

def largest_account_owner_balance(enteredAmount):
  amount = db.top_account_balances(enteredAmount)


def total_savings_account_withdrawals(amount_withdrawaled):
  amountTaken = db.withdrawals_savings(amount_withdrawaled)

  
def crypto_account_closed_by(crypto_account_id):
  accountNum = db.closing_crypto_account(crypto_account_id)  

def checking_account_closed_by(checking_account_id):
  accountNum = db.closing_checking_account(checking_account_id) 


def bank_account_closed_by(bank_account_id):
  accountNum = db.closing_bank_account(bank_account_id) 


def debit_card_closed_by(debit_card_id):
   debitCardNum= db.delete_debit_card(debit_card_id) 

