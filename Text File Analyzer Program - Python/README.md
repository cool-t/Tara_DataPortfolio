# Text File Analyzer

The **Text File Analyzer** is a Python command-line program that enables users to analyze text files using a custom `TextAnalyzer` class. It offers three key functions:

- Search for the frequency of a specific term  
- Perform word frequency analysis (top N words or all)  
- Generate summary statistics (sentence, word, character counts, plus top 10 frequent words)  

The program prompts users for input, handles file errors gracefully, and provides valuable insights useful for content analysis, research, or text exploration. The `TextAnalyzer` class encapsulates the core text-processing logic, including file reading, counting sentences, words, characters, and word frequencies. It also includes helpful string representations and comparison methods. Unit tests ensure the accuracy and reliability of key functions.

---

## Project Goal

Provide a user-friendly tool to interactively analyze text files via the command line, extracting insights such as:

- Frequency of specific search terms  
- Most frequent words in the text  
- Summary statistics including sentence, word, and character counts  

This can support content analysis, research, or data-driven decision-making involving textual data.

---

## Tools Used

- Python 3  
- Custom `TextAnalyzer` class encapsulates core text processing and analysis methods  
- Command-line interface for interactive user input and output  
- Unit tests included for validating key class functionalities  

---

## Key Features & Insights

- Encapsulation of text analysis logic within a reusable Python class  
- Magic methods to compare text files and represent analysis results clearly  
- Handles errors gracefully to improve user experience  
- Summary statistics give a quick, useful snapshot of text content  

---

## Instructions for Running the Text File Analyzer Program in Python

1. Prepare a Text File: Make sure you have a text file with content you want to analyze. You can create a simple text file and save it with a `.txt` extension. If you plan on using the provided input file, please continue to the next step.

2. Download/Save the Program Files: Download and save the zip folder containing the necessary source files extract the main Python program in a file named `tcool_main_program.py`, the user-defined class in a file named `text_analyzer.py`, and if you are using the input file that was provided, then save the input file as ‘test_input.txt’. Ensure all files are in the same directory.

3. Run the Program: Open a command prompt or terminal window & navigate to the directory where you saved the two Python files and the test input file (i.e., using the ‘cd’ command) with the path to the appropriate directory. You can than run the program using the command listed below:

      python tcool_main_program.py

4. Follow the Program Prompts: The program will start executing. It will prompt you for the name of the text file you want to analyze. Enter the name of the text file (`test_input.txt` in this case) and press ‘Enter.’

5. Select an Option for Text Analysis: The program will provide you with three options:
   
        a. Search for a term - Enter a term to search for its frequency in the text.
       
        b. Perform word frequency analysis - Specify the number of top words to analyze.
       
        c. Generate summary statistics - Obtain statistics about the text file.
   
      Enter the number corresponding to the option you want to choose, and press Enter.

7. View Results: Depending on the options you choose, the program will display the requested information about the text file, such as word frequencies, sentence count, character count, etc.

8. Exit Program or Enter Another File: After performing the desired text analysis task, the program will prompt the user to enter another file. If the user does not want to analyze another file/would like to exit the program – type ‘exit.’

