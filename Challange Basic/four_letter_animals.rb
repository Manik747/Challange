animals= ['calf','duck','elepant','goat','lamb','lion','mule','dog']
animals.insert(8,'puma')
animals.insert(4,'joey')
animals.delete_at(8)
animals.delete_at(3)
animals.insert(3,'foal')
animals.reverse! 
animals.push('Bear')
animals.reverse! 
puts animals 