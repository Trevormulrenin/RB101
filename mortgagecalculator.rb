def prompt(message)
  puts"=> #{message}"
end 

def integer?(input)
  input.to_i.to_s == input
end
  
prompt"Welcome to the Mortgage Calculator!"

loan_amount = ''
annual_rate_converted = ''
annual_rate_initial = ''
monthly_rate = ''
loan_duration = ''
monthly_payment = ''

loop do 
  prompt"What is your loan amount received?"
  loan_amount = gets.chomp
  
  if integer?(loan_amount)
    break
  else
    prompt"Invalid input entered, please try again"
  end
end 

loop do
  prompt"What is your annual rate in %"
  #take off percent symbol if they input it here
  annual_rate_initial = gets.chomp
  
  if integer?(annual_rate_initial)
    break
  else
    prompt"Invalid rate entered, please try again"
  end
end

annual_rate_converted = (annual_rate_initial.to_f / 100)
monthly_rate = (annual_rate_converted / 12)

loop do
  prompt"What is your loan duration in months?"
  loan_duration = gets.chomp
  
  if integer?(loan_duration)
    break
  else
    prompt"Invalid duration entered, please try again"
  end
end

#m = p * (j / (1 - (1 + j)**(-n)))

monthly_payment = loan_amount.to_f * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_duration.to_f)))

puts monthly_payment


  

  