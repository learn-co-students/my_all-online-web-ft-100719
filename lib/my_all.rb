require 'pry'

def my_all?(collection)
  counter = 0
  holder = []
  while counter < collection.length
    holder << yield(collection[counter])
    counter += 1
  end
  
  if holder.include?(false)
    false
  else
    true
  end
end