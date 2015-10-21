
 def valid_triangle?(a, b, c)
    
  if
    a == 0
    p false
  elsif 
    b == 0
    p false
  elsif 
    c == 0
    p false
  elsif    
    a + b>= c and a + c>= b and b + c >= a
  
    p true

  else
    p false
  end
end