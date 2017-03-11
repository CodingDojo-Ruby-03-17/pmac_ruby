require_relative 'bank_account'
class Checking < BankAccount

    def new_checking(account_type, ammount)
        @account_type = account_type
        @ammount = ammount
        puts "Creating a new account!"
        @account_type == "checking"
        account_number = rand(999999)
        accounts_db["account_numbers"].push(account_number)
        accounts_db["num_of_checking_accounts"] += 1
        accounts_db["checking_totals"] += @ammount
        puts "Created new checking account, your checking balance is #{accounts_db["checking_totals"]}"
    end

    # def deposit(account_type, ammount)
    #     puts "Making a deposit!"
    #     # check for account type
    #     # do math on balance
    #     # return new balance
    # end
    #
    # def withdraw(account_type, ammount)
    #     puts "Making a withdrawal!"
    #     # check for account type
    #     # do math on balance
    #     # return error if funds insufficient
    #     if @ammount > self.total_balance { raise "Insufficient funds" }
    # end

end
