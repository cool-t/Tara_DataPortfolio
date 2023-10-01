"""
Tara Cool
Class: CS 521 - Summer 2
Date: 7/18/23
Homework Problem # 2_5
Declare a constant variable named MAXVAL with a value of 30. Create a for loop
to iterate from 1 to 30. For each number in the loop, print specific strings
based on divisibility by 2, 3, and 5. Print the output for each number on a 
single line. After the for loop, print a separator line and repeat the process
using a while loop.
"""

MAXVAL = 30
for e in range(1, MAXVAL + 1, 1):   # iterate through all elements in range 1-30
    if e % 2 == 0 and e % 3 == 0 and e % 5 == 0:
        print(e, ':', 'foo' + 'bar' + 'baz')
    elif e % 2 == 0 and e % 3 == 0:
        print(e, ':', 'foo' + 'bar')
    elif e % 2 == 0 and e % 5 == 0:
        print(e, ':', 'foo' + 'baz')
    elif e % 3 == 0 and e % 5 == 0:
        print(e, ':', 'bar' + 'baz')
    elif e % 2 == 0:
        print(e, ':', 'foo')
    elif e % 3 == 0:
        print(e, ':', 'bar')
    elif e % 5 == 0:
        print(e, ':', 'baz')
    else:
        print(e, ':')
        
print(end= '\n') # print separator line

e = 1 # initialize the loop control variable
while e <= MAXVAL: # condition statement in terms of control variable 'e'
    if e % 2 == 0 and e % 3 == 0 and e % 5 == 0:
        print(e, ':', 'foo' + 'bar' + 'baz')
    elif e % 2 == 0 and e % 3 == 0:
        print(e, ':', 'foo' + 'bar')
    elif e % 2 == 0 and e % 5 == 0:
        print(e, ':', 'foo' + 'baz')
    elif e % 3 == 0 and e % 5 == 0:
        print(e, ':', 'bar' + 'baz')
    elif e % 2 == 0:
        print(e, ':', 'foo')
    elif e % 3 == 0:
        print(e, ':', 'bar')
    elif e % 5 == 0:
        print(e, ':', 'baz')
    else:
        print(e, ':')
    e += 1 # modifying loop control variable so the loop will end




    