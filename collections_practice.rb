require 'pry'

def begins_with_r(array)
  array.all? { |element| element.start_with?("r") }
end

def contain_a(array)
  array.select do |element| 
    if element.include?("a")
      element
    end
  end
end

def first_wa(array)
  array.each do |ele|
    if ele.to_s.start_with?("wa")
      return ele
    end
  end
end
  
def remove_non_strings(array)
  array.keep_if { |element| element.class == String }
end

def count_elements(array)
  array.uniq.map do |element|
    element[:count] = array.count(element)
    element
  end 
end

def merge_data(keys, data)
  temp_array = []
  answer_array = []            
  keys.each do |element|    #iterate into keys array
    temp_array << element    #create new hashes in new_array with first name k,v pairs
  end
  binding.pry
  data.each do |element|                #iterate into data array
    if element.has_key?("blake")        #check 
      element.each do |name, data|
        temp_array.each do |ele|
          if ele.has_value?("blake")
            answer_array << ele.merge(data)
          end
        end
      end
    elsif element.has_key?("ashley")
      element.each do |name, data|
        temp_array.each do |ele|
          if ele.has_value?("ashley")
            answer_array << ele.merge(data)
          end
        end
      end
    end
  end
  answer_array
end