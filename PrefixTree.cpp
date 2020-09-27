//
// Created by Stefanie Muroya lei on 6/5/20.
//

#include "PrefixTree.h"
#include <iostream>
using namespace std;

void PrefixTree::addWord(const string word) {

    Node * actual = this->head;

    for( const char & c : word){
        if(actual->daughters.count(c) == 0){
            actual->daughters[c] = new Node();
        }
        actual = actual->daughters[c];
    }

    actual->is_word = true;
    if(this->unique_words.count(word) == 0){
        this->unique_words[word] = 0;
    }
    this->unique_words[word]++;
//    cout << word << " " << this->unique_words[word] << endl;
}
