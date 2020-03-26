# Bank-tech-test

Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance

14/01/2012 || || 500.00 || 2500.00

13/01/2012 || 2000.00 || || 3000.00

10/01/2012 || 1000.00 || || 1000.00

User stories and Domain models

As a client

So that I can add money to my account 

I want to be able to make a deposit

Account <-- deposit --> balance/update_bank_statement


As a client

So that I can use money from my account 

I want to be able to make a withdrawal

Account <-- withdrawal --> balance/update_bank_statement

As a client

So that I can keep track of my transactions

I want to be able to print a bank statement

Account <-- print_bank_statement --> bankStatement

Program description

The program allows a user to open a new Account. On instantiation of an account, it will have a balance of 0 and a new instant of the BankStatement class, which will be used in order to present a record of all made transactions. The bank statement will show dates of each action and an up-to-date account balance. The account has a set of methods that allow a user to make a deposit, make a withdrawal and also print out a bank statement.

Installation

To clone the repo

$ git clone https://github.com/Dlibmanw/Bank

$ cd Bank

$ bundle

Rspec Tests

$ cd bank-tech-test

$ rspec

Interaction

irb

$ require './lib/account.rb'

$ require './lib/bank_statement.rb'

$ require 'date'

$ account = Account.new

$ account.make_deposit(600, "deposit")

$ account.withdraw(200, "withdraw")

$ account.print_bank_statement
