# **Description of Text File Analyzer Program**

The “Text File Analyzer” Python program is designed to interact with users through the command line, allowing them to analyze a text file using a user-defined class called 'TextAnalyzer'. The main program imports this class from the ‘text_analyzer.py’ module and provides a variety of analysis options for the input text file. Notably, the core objective of the program is to enable users to gain insights into the content of a given text file – identifying frequent words, searching for specific terms, and/or obtaining summary statistics about the text.

To start, the main program (i.e., ‘tcool_main_program.py’) imports the 'TextAnalyzer' class from the 'text_analyzer' module. This class plays a crucial role in terms of encapsulating the various functionalities required for the three text analysis tasks in the main program. Additionally, the main program defines the ‘frequent_words()' function, which takes a dictionary of unique word frequencies and an optional parameter 'n' to specify the number of most frequent words to retrieve. The function returns a list of tuples containing the most frequent words along with their counts and a formatted result string. This function is essential for displaying the most frequent words later in the program.

Subsequently, the program enters a continuous loop where it prompts the user to input the name of a text file for analysis. To handle cases where a file does not exist, the program incorporates error handling by catching 'FileNotFoundError' exceptions. If the file exists, an instance of the 'TextAnalyzer' class is created using the provided file name. The program then provides three main options for analysis:

1. Search for a Term: The user can input a search term, and the program will display the frequency of that term in the text file. For example, if the user is interested in finding out how many times a particular term appears in the text, they can choose this option.
2. Perform Word Frequency Analysis: This option computes and displays the frequency of each unique word in the text file. The user can specify the number of top words to analyze or override this option by pressing ‘Enter.’ For instance, they can choose to retrieve the 10 most frequently occurring words in the text file, or press ‘Enter’ to retrieve the frequency for all unique words in the text file.
3. Generate Summary Statistics: This option provides an overview of the text file's characteristics, including the total number of sentences, characters, and words. It also displays the 10 most frequent words in the file.

Once the output of the selected text analysis task is returned to the user, they are given the choice to enter another text file for analysis, or to quit the program by typing ‘exit.’

It is important to note that the 'TextAnalyzer' class handles the analysis of the text file by encapsulating methods to read the file, format its content, count sentences, characters, and words, and to determine the frequency of unique words. The class also provides methods for accessing computed summary statistics (i.e., where private attributes are used). It incorporates magic methods for comparing sentence counts between two 'TextAnalyzer' objects and generating easily understandable string representations of analysis results. The program for the 'TextAnalyzer' class (i.e., 'text_analyzer.py') concludes with unit tests that validate the accuracy and functionality of some of the public class methods within the 'TextAnalyzer' class.

Overall, the Text File Analyzer Python program aims to provide a user-friendly interface, doubling as a versatile tool for efficiently analyzing the content in a text file. Users can gain insights into the provided text file by pinpointing frequently occurring words via word frequency analysis; and obtaining important summary statistics. The insights can be useful for various purposes such as content analysis, research, and data-driven decision-making. Ultimately, this program streamlines and automates the process of extracting valuable information from text files and presents it in an organized and meaningful manner.


# **Instructions for Running the Text File Analyzer Program in Python**

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

6. View Results: Depending on the options you choose, the program will display the requested information about the text file, such as word frequencies, sentence count, character count, etc.

7. Exit Program or Enter Another File: After performing the desired text analysis task, the program will prompt the user to enter another file. If the user does not want to analyze another file/would like to exit the program – type ‘exit.’

