# The .sample Method on an Array
# the sample can extract one or more random elements from an array.

# So when you have an array of values and you simply want to take one or more items out of it in a random order, that's what this method is for.

flavour = ['chocolate', 'vanilla', 'strawberry', 'rum raisin'] 

p flavour.sample
p flavour.sample(1)
p flavour.sample(2)
# "chocolate"
# ["strawberry"] #!
# ["chocolate", "vanilla"]

