# Python for Scientists

![sj swe](./imgs/sj_swe.png "San Joaquin SWE")

----
## Preaching Python
Python is a high-level programming language that has rapidly become on of the most popular coding languages in the world.

 * First released in 1991 by Dutch computer mastermind Guido van Rossum
 * Most Google-serached programming language in 2018
 * Third ranked language in terms of popularity
 * Many resources, extensive documentation, and user write-ups

 This document is meant as an overview of the basic tools and knowledge that scientists should have to properly make use of Python.

----
## Why Python?
Python is

 * Free to use
 * Broad in functionality
 * Strongly rooted in clean syntax
 * Promotes clean coding practices

![python_image](https://upload.wikimedia.org/wikipedia/commons/a/ad/Lozingle_10032014.jpg)

----
##So what can you do with python?

Pretty much anything you want

 * Software packages
 * Data analysis
 * Web development
 * Software testing
 * Compile presentations

And of course,

 * Scripting

----
## What We'll Cover

- [Resources](#resources)
- [Basics](#basics)
- [Important Packages](#important-packages)
- [Importing APIs and Docs](#importing-apis-and-docs)
- [Object Orient Programming](#object-oriented-programming)
- [Examples](#examples)

## Resources

Given Python's popularity, there are many available resources. Most problems can be answered with a quick google search. Some good resources to start are  

 * [Python's documentation](#https://docs.python.org/3/)
 * [StackOverflow](#https://stackoverflow.com/questions/tagged/python)
 * [Learn Python in 10 Minutes](#https://www.stavros.io/tutorials/python/)

----
## Basics

Python, like all programming languages, have different data types so that your
system knows what type of data it is looking at. The common types are

 * **int**
 * **float**
 * **string**
 * **list**
 * **dictionary**

One thing that is different than many other forms of programming is that the data type is implicit to the definition of the variable. For instance. Python knows that

 * ```a = 5``` is an integer
 * ```b = 27.654``` is a float
 * ```c = ['some', 'words', 'here', 6]``` is a list


----
### Strings

A string is a python datatype that stores any combination of characters and recognizes them as text. Documentation on the str class can be found at

 https://docs.python.org/3/library/stdtypes.html#str

The str class has many useful built in methods, such as *lower*, *upper*, and *replace*

![string terminal](./imgs/terminal_string.png "String methods")

----
### Lists

In Python, a list allows you to store any other datatype in an ordered fashion. Common list methods can be found at https://docs.python.org/3/tutorial/datastructures.html.

In this example, we put some integers and strings in a list, and then modify the list.

![list terminal](./imgs/terminal_list.png "List methods")

----
### Dictionaries

Dictionaries are a data structure that allow you to store an unordered combination of keys and values. A key is like an index that tells you where to find a piece of data (your value).

For instance we could create a dictionary of variables and their descriptions:

```
vars = {'snow_density' : 'Predicted average snow density',
        'specific_mass' : 'Predicted specific mass of the snowcover',
        'water_saturation': 'Predicted percentage of liquid water saturation of the snowcover'}
```

We can then find the description of a variable by using the variable name as a key

![dictionary terminal](./imgs/terminal_dictionary.png "Dictionary example")

Dictionary methods can be found here

https://docs.python.org/3/tutorial/datastructures.html#dictionaries

----
### Conditionals

Conditionals are the programmatic way to compare some value against a criteria. It is stripped down, very logical thinking.

Here is a conditional regarding the density of the top layer of the snowpack at a ski resort.


![conditional terminal](./imgs/terminal_conditional.png "Conditional example")

----
### Loops

Like other programming languages, Python utilizes both ```for``` and ```while``` loops. A loop allows the program to step through a certain number of iterations in order to read or manipulate data. For instance, lets take a look at our list from earlier. Here are two different ways to loop through the list and print items that are not strings.

![loop terminal](./imgs/terminal_loop.png "Loop example")

Notice that you can loop through a specific number of iterations or through the items of a list. This is true for dictionaries as well.

----
## Libraries to Know

Taking a short break from data types, there are a few Python packages that we will frequently use in development and data analysis. These expand the base functionality of Python.

 * numpy - Array creatioon and manipulation
 * pandas - Data structure and data analysis functionality
 * matplotlib - Plotting and visualization
 * netCDF4 - Reading and writing 2D and 3D data with NetCDF files

----
## Using and Understanding APIs

**API - application programming interface**

Well that sounds like nonsense. What is it really?
* A collection of functions that let you access the power that's under the hood of a program in a structured manner
* The clean, accessible layer on top of a software package
* Allow for easy documentation on how to use a program

Importing an API allows you to access the underlying functions and classes within your Python application. A simple `import {some_library}` call at the top of your Python script will allow you to bring in any Python library that you have installed and access the API.

```
import pandas as pd

df = pd.read_csv('some_file.csv')
```

Alternatively, if you know you would only need the `read_csv` function, you could just bring that in

```python

from pandas import read_csv

df = read_csv('some_file.csv')

```

Notice the two different ways we accessed the funciton using the pandas API.

----
## Reading an API
Being able to read API documentation is key. This is an example of the documentation here: https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.read_csv.html

![pandas api](./imgs/pandas_api.png "pandas_api")

This sort of documentation gives you a description of the specific function and all of its inputs and outputs.

----
### Arrays

The Python Numpy library is a must for scientific programming. Our main use for Numpy is the manipulation of 1, 2, and 3 dimensional arrays. The library makes array math quick and easy using the ```numpy.ndarray``` class. This allows us to store and manipulate rasters of snowpack and environmental variables with ease. Here is a quick example of storing and manipulating arrays.

![array terminal](./imgs/terminal_array.png "Array example")

In this example we created a random 3x3 array, replaced any value less than 0.6 with 0.0, and then summed all of the values in the array.

----
### Pandas DataFrames

Pandas is another must have library for data analysis and good science in Python. It is everything you could want in Excel, but faster and more versatile. Let's using the pandas API from earlier to read in and average air temperature data for a station in RCEW. The steps will be

1. Import pandas
2. Read the data
3. Isolate the station
4. Get an Average

![pandas terminal 1](./imgs/terminal_pandas_1.png "Pandas example")

----
### Pandas Continued
We were able to read in the data using the Pandas read_csv function, which returns a Pandas DataFrame class containging our information.

Now that we have the data imported. We need to isolate a column (RMESP in this case) and find the average over the period of record.

![pandas terminal 2](./imgs/terminal_pandas_2.png "Pandas example")

We did this by referencing the column name, and then calling the method, *mean()*, belonging the Pandas DataFrame class.

----
## Object Oriented Programming
what is a class?
attributes
methods
inheritance
----
## Higher level stuff
List comprehension

----
## Examples
Copy and read csv
 - plot, modify time series data

Copy and read NetCDF
 - plot, mask, etc

### Sources
https://www.economist.com/graphic-detail/2018/07/26/python-is-becoming-the-worlds-most-popular-coding-language
