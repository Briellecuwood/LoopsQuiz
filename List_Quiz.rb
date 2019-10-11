def three_even(list) # Setting the variable

    if list.size < 3 # if the list has less than three numbers in it,
        return false # return that it is false
    end

    (list.size - 2).times do |a| # For, how long the list is minus two, do this for each number
        if list[a] % 2 == 0 && list[a + 1] % 2 == 0 && list[a + 2] % 2 == 0 # If these consecutive numbers are even,
            return true # Return that it is true
        end
    end
    return false # If not return that it is false

end

puts three_even([2, 1, 3, 5]) # false
puts three_even([2, 4, 12, 5]) # true
puts three_even([2, 1, 4, 6]) # false
puts three_even([1, 4, 6, 4]) # true
puts three_even([]) #false

def bigger_two(list_1, list_2) # This defines the variable
    sum_1 = (list_1[0]) + (list_1[1]) # This finds the sum of the first list
    sum_2 = (list_2[0]) + (list_2[1]) # This finds teh sum of the second list

    if sum_1 > sum_2 || sum_1 == sum_2 #This compares the sums, and says if the first list is more
        puts "#{list_1}" # then return the first list
    end
    if sum_1 < sum_2 #This compares the sums, and says if the second list is more
        puts "#{list_2}" # then return the second list
    end
end

bigger_two([1, 2], [3, 4]) # [3,4]
bigger_two([1, 7], [4, 4]) # [1,7]

def series_up(n) # This defines the variables
    a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] #This gives me a list to pick numbers from
    i = 0 # This gives me a base number
    while a[i] <= n # This is trying to say that while the #i number in the list is less than the number given to me in the variable(n), than it should keep on running in a loop
        if i = 0 # This is saying that if i is equal to zero, run this function. I did this so that it wouldn't return 1 twice
            return a[i] #Returns 1
            i += 1
        end
        
        if i > 0 
            return a[0..i] # Return the numbers in the list from begining number (represented by 0) to the i number
            i += 1 # increase i by 1
        end
    end
end

puts series_up(1) # 1
puts series_up(2) # 1, 1, 2
puts series_up(3) # 1, 1, 2, 1, 2, 3
puts series_up(4) # 1, 1, 2, 1, 2, 3, 1, 2,3 ,4
