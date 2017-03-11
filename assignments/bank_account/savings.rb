require_relative 'bank_account'

class Savings < BankAccount

    def new_savings(account_type, ammount)
        @account_type == "savings"
        account_number = rand(999999)
        accounts_db["num_of_savings_accounts"] += 1
        accounts_db["savings_totals"] += @ammount
        puts "Created a new savings account, your savings balance is #{accounts_db["savings_totals"]}"
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
