# Unhandled Exception in Asynchronous Dart Network Request

This repository demonstrates a common error in Dart asynchronous programming:  inadequate handling of potential exceptions during network requests. The initial code lacks robust error handling, which makes debugging and user experience challenging.

The `bug.dart` file contains the problematic code.  The improved version with comprehensive error handling is provided in `bugSolution.dart`.

## Problem
The original code uses a `try-catch` block but does not include detailed error handling.  Generic error messages hinder debugging and may cause unexpected application behavior. 

## Solution
The solution enhances error handling by:

* Providing more specific error messages based on the nature of the error (e.g., network error, JSON decoding error).
* Implementing error handling within the higher level function to ensure the user gets appropriate feedback. 
* Utilizing a more sophisticated error handling structure that allows more efficient and robust error handling.

This example highlights the importance of thorough error handling in asynchronous Dart code for building reliable and user-friendly applications.