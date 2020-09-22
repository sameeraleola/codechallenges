from typing import Set, List
"""This comes from the following leetcode problem:
https://leetcode.com/problems/replace-words/
"""
def process_word(word: str, word_set: Set[str], min_pos, max_pos) -> str:
    for i in range(min_pos, min(len(word) + 1, max_pos + 1)):
        if word[:i] in word_set:
            return word[:i]
    return word
class Solution:
    def replaceWords(self, dictionary: List[str], sentence: str) -> str:
        word_set = set(dictionary)
        min_len = min(map(lambda word: len(word), dictionary))
        max_len = max(map(lambda word: len(word), dictionary))
        sentence_parsed = sentence.split()
        for i, word in enumerate(sentence_parsed):
            sentence_parsed[i] = process_word(word, word_set, min_len, max_len)
        return " ".join(sentence_parsed)
Andrew Candela  1 minute ago
this is the fastest solution I could find on Leetcode:
from collections import defaultdict
class Solution:
    def replaceWords(self, dict: List[str], sentence: str) -> str:
        # Dictionary {initials - roots}
        root_dict = defaultdict(list)
        for root in dict:
            root_dict[root[0]].append(root)
        # Check and replace matched words with roots
        words = sentence.split()
        for i in range(len(words)):
            for root in root_dict[words[i][0]]:
                if words[i].startswith(root):
                    words[i] = root
        return ' '.join(word for word in words)