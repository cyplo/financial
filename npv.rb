#cf = [-8320393.18, 25101.38, 25100.44, 25135.89, 10671791]
#cf = [-8276113, 83421.38, 83420.44, 83455.89, 10617183] 
#cf = [-8257888.72, 48148.85, 74864.62, 98035.89, 10642931 ]
#cf = [-8276034, 83451.96, 83502.62, 83539.74, 10617268]
cf = [-8257792.8, 48196.77, 75049.76, 98224.74, 10643124]

step = 0.00001

r = 1.06

npv = previous_npv = 0

begin
counter = 0
result = 0
cf.each {
    |c|
    counter+=1
    result+= c/(r**counter)
}
previous_npv = npv
npv = result
r+=step
end while npv > 0

puts "cf = #{cf}"
puts "r => npv"
puts "#{r} => #{npv}"
puts "#{r-step} => #{previous_npv}"

