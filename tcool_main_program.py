"""
Tara Cool
Class: CS 521 - Summer 2
Date: 8/10/23
Term Project Program - Main Program:
This program provides various options for analyzing a given text file. 
It imports the 'TextAnalyzer' class from the 'text_analyzer' module &
allows users to perform actions such as searching for specific terms, 
performing word frequency analysis, and/or generating summary statistics. 
Users can input their choice & interact with the tool to retrieve 
insights from the text file. The program continuously prompts for a 
text file name & provides analysis options until the user chooses to
exit or provides an invalid input. All of the output is printed in
the console of the main program.
"""

# Import 'TextAnalyzer' class from 'text_analyzer' module
from text_analyzer import TextAnalyzer

# Create 'frequent_words()' function to get count values for unique words
def frequent_words(unique_word_freq, n = None):
    most_freq_words = []
    if n is None:
        res = ('All unique words & their counts:\n\n')
        n = len(unique_word_freq)
    else:
        res = ('The {} most frequent words in the text file are:\n\n'
               .format(n))
        
    for word, count in list(unique_word_freq.items())[:n]:
        most_freq_words.append((word, count))
        res += "'{}': {}\n".format(word, count)
    return most_freq_words, res

# Continuously prompt for a text file to read
while True:
    file_name = input('Enter a text file: ')
    
    if file_name.lower() == 'exit':  # Check if user wants to exit
        print("\nExiting the program.")
        break  # terminate loop/exit program

    try:
        
        # Instantiate 'Text_Analyzer' class
        text_file_analyzer = TextAnalyzer(file_name)
        
        # Call class methods
        if text_file_analyzer.read_file(): # read file
            text_file_analyzer.format_text() # get list of words
            
            # Prompt user for interface with various options for analysis
            print('\n' + '-'*60 + '\n')
            print('Welcome to the Text File Analyzer Tool!\n')
            print('Please select one of the following options: ')
            print('1. Search for a term')
            print('2. Perform word frequency analysis')
            print('3. Generate summary statistics')
            
            option_input = input(
                '\nEnter the number corresponding to your choice: ')
            
            if option_input == '1': # Search for term
                search_term = input(
                    '\nEnter the term you want to search for: ').upper()
                unique_word_freq = text_file_analyzer.unique_word_frequency()
                if search_term in unique_word_freq:
                    print('\n' + '-'*60)
                    print("\nFreqeuncy of '{}': {}"
                          .format(search_term, unique_word_freq[search_term]))
                else:
                    print('Search term not found')
                    
            elif option_input == '2': # Perform word frequency analysis
                unique_word_freq = text_file_analyzer.unique_word_frequency()
                
                # Prompt user to enter certain num. of words to retrieve
                # e.g., retrieve 10 words that occur the most in file
                print('\n')
                input_prompt_str = ('Enter the number of top words to analyze\n'
                                    '(or press "Enter" for all words): ')

                n_words = input(input_prompt_str)

                if n_words.isdigit():
                    n_words = int(n_words)
                else:
                    n_words = None # will generate freq. of all words in file
                print('\n' + '-'*60 + '\n')
                most_freq_words, freq_words_res = frequent_words(
                    unique_word_freq, n_words)
                print(freq_words_res)
            
            elif option_input == '3':  # Generate summary statistics
                text_file_analyzer.sentence_counter() # count sentences
                text_file_analyzer.total_characters_counter() # count char.
                text_file_analyzer.total_words_counter() # count total words
                
                # Get counts for sentences, characters, & words
                sentence_count = text_file_analyzer.get_sentence_count()
                char_count = text_file_analyzer.get_total_characters()
                total_word_count = text_file_analyzer.get_total_words()
                
                unique_word_freq = text_file_analyzer.unique_word_frequency()
                
                # Call 'frequent_words()' to get the 10 most freq. words
                print('\n' + '-'*60)
                print(text_file_analyzer) # prints stats
                print('\n')
                most_freq_words, freq_words_output = frequent_words(
                    unique_word_freq, n = 10)
                print(freq_words_output + '\n')
                
            else:
                print('Invalid choice. Please enter 1, 2, or 3.')
                
    except FileNotFoundError:   
        print("Error: The file '{}' does not exist.".format(file_name))
    
    else:
        print("\nAnalysis completed for '{}'.".format(file_name))
        print("\nType 'exit' to quit or enter another file.\n")
        
        
        
  