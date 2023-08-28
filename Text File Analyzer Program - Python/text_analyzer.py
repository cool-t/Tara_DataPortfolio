"""
Tara Cool
Class: CS 521 - Summer 2
Date: 8/10/23
Term Project Program - User-Defined Class:
This class is designed to interpret, format, & analyze text files. 
It offers methods to calculate & retrieve various statistics, 
including character count, sentence count, total words, & unique word 
frequency. The class also provides methods to read a text file, format 
its content, & analyze the text data. The methods in this class allow 
users to extract valuable information & insights from text files for further 
analysis.
"""

class TextAnalyzer:
    """ Class used to interpret, format, & analyze text files & 
    generate statistics like character count, sentence count, total 
    words, & frequency of words"""

    def __init__(self, file_name):
        """ A constructor to initialize an instance
        of Text_Analyzer class"""
        # '__'  before attribute name -> implies a private class attribute
        self.file_name = file_name  
        self.line_list = [] 
        self.word_list = [] 
        self.unique_word_set = set()
        self.__sentence_count = 0  
        self.__total_characters = 0 
        self.__total_words = 0  
    

    def read_file(self):
        """ Read the text file as a list of lines & return error
        message when file does not exist """
        try:
            with open(self.file_name, 'r') as input_file:
                self.line_list = input_file.readlines()
                return True # file read
        except FileNotFoundError:
            print("Error: The file '{}' does not exist.".format(
                self.file_name))
            return False
    

    def format_text(self):
        """ Format list of file lines by splitting into 
        list of all words & another list with unique
        words """
        format_word_list = []
        for line_str in self.line_list:
            format_word_list.extend(self.__format_word(word) for word in 
                                    line_str.split())
        self.word_list = format_word_list
        self.unique_word_set = set(format_word_list)


    def __format_word(self, word_str): # private class method
        """ Format & return string of words by removing punctuation &
        converting all characters to uppercase """
        punct_str = '!"#$%&\'()*+,-./:;<=>?@[\]^_`{|}~'
        formatted_word = ''.join([e.upper() for e in word_str if e not in 
                                  punct_str])
        return formatted_word
    
            
    def sentence_counter(self):
        """Count the number of sentences in the file and update the
        sentence count variable"""
        self.__sentence_count = 0  # Reset the sentence count before counting
    
        for index, line_str in enumerate(self.line_list):
            sentences = line_str.split('.') + line_str.split('!') + \
            line_str.split('?')
            for sentence in sentences:
                
                if sentence.strip() and sentence[0].isupper():
                    self.__sentence_count += 1
    
                    if index + 1 < len(self.line_list):
                        next_line = self.line_list[index + 1]
                        if next_line.strip() and next_line[0].isupper():
                            self.__sentence_count -= 1


    def total_characters_counter(self):
        """ Count the total number of characters and update the
        total characters variable """
        self.__total_characters = sum(len(word) for word in self.word_list)


    def total_words_counter(self):
        """ Count the total number of words and update the
        total words variable """
        self.__total_words = len(self.word_list)


    def get_sentence_count(self):
        """ Accessor method to get the sentence count """
        return self.__sentence_count
    

    def get_total_characters(self):
        """ Accessor method to get the total characters count """
        return self.__total_characters
    

    def get_total_words(self):
        """ Accessor method to get the total words count """
        return self.__total_words
    

    def unique_word_frequency(self):
        """ Count & return the frequency of unique words in the
        list of words from the file """
        word_count_dict = {}
        for word in self.word_list:
            if word not in word_count_dict:
                word_count_dict[word] = 1
            else:
                word_count_dict[word] += 1
        sorted_dict = {k: v for v, k 
                       in sorted([(v, k) for k, v in word_count_dict.items()],
                                 reverse=True)}
        return sorted_dict
    
    
    def __eq__(self, other):
        """ Magic class method to compare the sentence counts
        of two 'TextAnalyzer' objects """
        return self.get_sentence_count() == other.get_sentence_count()
    
    
    def __str__(self):
        """ Returns human-readable string description of the 
        instance being created """
        return ('The text file contains a total of...\n'
                '\t{} sentences,\n'
                '\t{} characters,\n' 
                '\t& {} words.'
                ).format(self.get_sentence_count(), 
                         self.get_total_characters(), 
                         self.get_total_words())
    

                         
# Unit Tests - validate public class methods
if __name__ == '__main__':
    
    # Instantiate the class 'TextAnalyzer'
    my_text_analyzer = TextAnalyzer('test_input.txt')

    # Validate 'read_file()' method
    my_text_analyzer.read_file()
    assert my_text_analyzer.line_list,\
        'The method failed to read the text file.'

    # Validate 'sentence_counter()' method
    my_text_analyzer.sentence_counter()
    assert my_text_analyzer.get_sentence_count() == 27,\
        'The method did not accurately count the sentences in the file.'

    print('\nBoth unit tests were sucessful.')

    

    
    

