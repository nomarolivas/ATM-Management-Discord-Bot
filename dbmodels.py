import database as db

class Checking_Account:
  
  def __init__(self, balance_amount):

    self.balance_amount= balance_amount
    self.checking_account_id = [checking_account_id]
    self.load_data(balance_amount)

  def load_data(self):
    db.load(self.balance_amount)


class Account_Owner:
  
  def __init__(self, bank_account_id ):
    self.bank_account_id= bank_account_id
    self.loan_balance =[Account_Owner]
    self.load_data(bank_account_id)

  def load_data(self):
    db.load(self.bank_account_id)



class Crypto_Account:

  def __init__(self, crypto_wallet_account):
    self.crypto_wallet_account= crypto_wallet_account
    self.account_owner =[Account_Owner]
    self.load_data(crypto_wallet_account)

  def load_data(self):
    db.load(self.crypto_wallet_account)



