minimum_balance=2000
deposit=0
current_balance=minimum_balance+deposit

while true
puts "Enter 0 to stop or any other number to continue: "
proceed=gets.chomp().to_i

if proceed == 0
  break
else
  puts("Welcome to Mobile Money\n1.Deposit Money\n2.Check Balance\n3.Withdraw Money\n0.Exit")
  puts("\nEnter your reply:")
  reply=gets.chomp.to_i

  #depositing money
  if reply == 1
    puts("Enter the amount to deposit:")
    deposit=gets.chomp().to_i

    if deposit < 1000
      puts "You must deposit an amount greater than 1000"
    else
      current_balance=minimum_balance + deposit
      puts "Your current balance is #{current_balance}"
    end
  
  #checking balance
  elsif reply ==2
    puts "Your current balance is #{current_balance}"
  
  #withdrwaing money
  elsif reply ==3
    puts "Enter the amount to withdraw:"
    withdraw =gets.chomp.to_i
    
    if withdraw == current_balance
      puts "You should withdraw an amount less than the account balance"

    elsif withdraw < 2000
      puts "You should withdraw an amount greater than 2000."

    else
      current_balance -=withdraw
      puts "You have withdrawn #{withdraw} and your account balance is #{current_balance}"
    end

  #exitting 
  elsif reply ==0
    puts "Thank you for using MTN"
    break
  end
end
end

