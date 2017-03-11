#
#
# account_type = "Checking"
# # # def create_account_number (account_type)
# #     account_number = rand(999999)
# #     puts "Your #{account_type} account number is: " + account_number.to_s
# # # end
# puts "Creating a #{account_type} account!"
# account_number = rand(999999)
# puts "Your #{account_type} account number is: " + account_number.to_s
# # balance = rand.round(2)
# # puts balance
# puts "completed creating a #{account_type} account!"


accounts_db = {
    "checking_totals" => 0.00,
    "savings_totals" => 0.00,
    "num_of_checking_accounts" => 0,
    "num_of_savings_accounts" => 0,
    "account_numbers" => []
}

puts accounts_db["savings_totals"]

account_number = rand(999999)
accounts_db["account_numbers"].push(account_number)
puts accounts_db["account_numbers"]
