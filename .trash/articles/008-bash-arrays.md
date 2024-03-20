# WorkingBash Arrays

## Introduction

If you've ever done any programming before, then you are likely already familiar with arrays. 

In this article, we will do not-so deep dive in bash arrays and examples to help you understand.

## What Are Arrays In Bash

Without getting overly technical, a data type in bash scripts that can hold multiple values.

## Creating an array in bash

You can initialize an array by assigning values devided by space and enclosed in `()`. Example:

```bash
my_array=("value 1" "value 2" "value 3" "value 4")
```

## Accessing The First Element Of A Bash Array

To access the elements in the array, you need to reference them by their numeric index.

>{notice} keep in mind that you need to use curly brackets.

* Access a single element, this would output: `value 2`

```bash
echo ${my_array[1]}
```

## Accessing The Last Element Of A Bash Array

* This would return the last element: `value 4`

```bash
echo ${my_array[-1]}
```

## Returning All Elements In A Bash Array

* As with command line arguments using `@` will return all arguments in the array, as follows: `value 1 value 2 value 3 value 4`

```bash
echo ${my_array[@]}
```

## Returning The Number Of Elements In A Bash Array

* Prepending the array with a hash sign (`#`) would output the total number of elements in the array, in our case it is `4`:

```bash
echo ${#my_array[@]}
```

Make sure to test this and practice it at your end with different values.

## Printing Each Element Of A Bash Array

So let's imagine that we define a bash array like the following in a bash script.

```bash

#!/bin/bash


letterArray=( "A""B""C""D""E" ) 

echo ${letterArray[@]}

```

This command will print all the elements of an array.

Output:

```bash
$ ABCDE
```

## Printing Element Of A Bash Array From A Given Index

```bash

#!/bin/bash

letterArray=( "A""B""C""D""E" ) 

theFirstTwoElements=${letterArray:1:2}

echo "${theFirstTwoElements}"
```

This command will print array from starting index 0 to 2 where 2 is not included (exclusive).

```bash
$ BE
```
 
## Printing The First Four Elements Of A Bash Array 

```bash

#!/bin/bash

letterArray=( "A""B""C""D""E" ) 

theFirstTwoElements=${letterArray::4}

echo "${theFirstTwoElements}"
```

This command will print from base index 0 to 5, where 55 is exclusive and starting index is default set to 0 .

```bash
$ ABCD
```

## Iterating Over Each Bash Array Element In A Loop

```bash

#!/bin/bash

letterArray=( "A" "B" "C" "D" "E" )

for letter in "${letterArray[@]}";
do   

    echo
    echo "array element: "$letter
    echo
    
done

```

This command will print each of the elements of the bash array with a small message.

```bash

array element: A


array element: B


array element: C


array element: D


array element: E

```

## Conclusion

When you need to store related data together in bash scripts, arrays are a great place to start.

As you've seen today, working with arrays in bash is pretty simple.

We created arrays and fetched the data from arrays and iterated over arrays using for loops.

--

May this article have been helpful for you. Namaste.

