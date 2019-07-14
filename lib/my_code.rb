
def map_to_negativize(array)
  i=0
  new = []
  while i < array.length do 
    new.push(array[i] * -1) 
    i+=1    
  end
  p new
end


def map_to_no_change(array)
  i=0
  new=[]
  while i < array.length do
    new.push(array[i])
    i+=1
end
p new
end

def map_to_double(array)
  i=0
  new = []
  while i < array.length do 
    new.push(array[i] * 2)
    i+=1
end
p new
end

def map_to_square(array)
   i=0 
   new =[]
   while i < array.length do
     new.push(array[i] * array[i])
     i+=1
end
p new 
end

def reduce_to_total(array)
  total=0
  sum1 = 0 
  array.each {|a| sum1+=a}
  p total + sum1
end

def reduce_to_total(array,number=0)
  sum1 = 0
  array.each {|a| sum1+=a} 
  p sum1 + number
end
def reduce_to_all_true(array)
  array.each {|a| (a == nil or a == false) ? "be_truthy" : "be_falsy"}
end

def reduce_to_any_true(array)
  arr_true = []
  arr_false = []
  array.each {|a| (a != nil || a!= false) ? arr_true.push(a) : arr_false.push(a)}
  if arr_true.length > 0
    p true
  elsif arr_false.length > 0
    p false
  els
    
  
  end
end

  #example
# def check_truthy(var_name, var)
#   is_truthy = var ? "truthy" : "falsy"
#   puts "#{var_name} is #{is_truthy}"
# end

#   describe "reduce_to_any_true returns true when a truthy value is present" do
#     it "reduces correctly" do
#       source_array = [ false, nil, nil, nil, true]
#       expect(reduce_to_any_true(source_array)).to eq(true)
#     end
#   end

#   describe "reduce_to_any_true returns false when no truthy value is present" do
#     it "reduces correctly" do
#       source_array = [ false, nil, nil, nil]
#       expect(reduce_to_any_true(source_array)).to eq(false)
#     end
#   end
# end