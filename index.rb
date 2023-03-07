# Challenge 1: Broken Sequence
def isSequenceBroken (str)
  if (str.scan(/[a-zA-Z]/).length>0)
    1
  else
  arr=str.split.map{|item| item.to_i}
    #  e represents expected_sequence of the array taking the smallest and the largest in a range and creating an array
    e= (arr.min..arr.max).to_a
    # s represents sorted array from smallest to largest
    s= arr.sort
    if(s==e)
      0
    else
        (e-s)[0]
    end
  end
end
# p isSequenceBroken("1 2 3 5 4")



# Challenge 2: Find out whether the shape is a cube
def isACube (vol, s)
  if (s.positive?)
    side= Math.cbrt(vol)
    if(side.to_i ==s)
      true
    else
      false
    end
  else
    false
  end
end

# puts isACube(27, 3)
