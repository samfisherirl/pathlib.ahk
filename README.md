Path Class Documentation
========================

Overview
--------

The Path class is a custom class in AutoHotkey that provides various methods for working with file paths. It allows you to perform operations such as retrieving the parent directory, splitting the path into parts, getting the file name and extension, checking if a file or directory exists, removing a file or directory, and reading/writing the contents of a file.

Usage
-----

### Class Initialization

To use the Path class, you need to initialize it with a file path when creating an object of this class. The constructor takes a single argument - the path to the file or directory.

ahkCopy code

`myPath := new Path("C:\Users\Username\Documents\example.txt")`

### Methods

#### `parent()`

The `parent()` method returns the parent directory of the given path.

ahkCopy code

`parentDir := myPath.parent()`

#### `parts()`

The `parts()` method splits the path into its individual parts and returns them as an array.

ahkCopy code

`pathParts := myPath.parts()`

#### `name()`

The `name()` method returns the file or directory name from the path.

ahkCopy code

`fileName := myPath.name()`

#### `ext()`

The `ext()` method returns the file extension from the path.

ahkCopy code

`fileExtension := myPath.ext()`

#### `exists()`

The `exists()` method checks whether the file or directory specified by the path exists and returns `true` if it does, or `false` if it doesn't.

ahkCopy code

`if (myPath.exists())
{
    ; File or directory exists
}
else
{
    ; File or directory does not exist
}`

#### `remove()`

The `remove()` method moves the file or directory to a temporary location and then deletes it. This method is used to effectively remove a file or directory.

ahkCopy code

`myPath.remove()`

#### `read()`

The `read()` method opens the file specified by the path and reads its contents. It returns the content of the file as a string.

ahkCopy code

`fileContents := myPath.read()`

#### `write(str)`

The `write(str)` method opens the file specified by the path and writes the given string `str` to the file.

ahkCopy code

`myPath.write("This is the content to be written to the file.")`

Example
-------

Here is an example of how to use the Path class to work with a file path:

```ahk

`#Include Path.ahk ; Include the Path class script

; Initialize a Path object with a file path
myPath := new Path("C:\Users\Username\Documents\example.txt")

; Get the parent directory
parentDir := myPath.parent()

; Split the path into parts
pathParts := myPath.parts()

; Get the file name
fileName := myPath.name()

; Get the file extension
fileExtension := myPath.ext()

; Check if the file or directory exists
if (myPath.exists())
{
    ; File or directory exists
}
else
{
    ; File or directory does not exist
}

; Remove the file or directory
myPath.remove()

; Read the contents of the file
fileContents := myPath.read()

; Write to the file
myPath.write("This is the content to be written to the file.")`
 
```

