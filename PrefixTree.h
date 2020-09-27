//
// Created by Stefanie Muroya lei on 6/5/20.
//

#ifndef WORDCOUNT_PREFIXTREE_H
#define WORDCOUNT_PREFIXTREE_H
#include <map>
#include <string>
#include "Node.h"
using namespace  std;

class PrefixTree {
    Node * head;
public:
    map<string, int> unique_words;
    void addWord(const string word);
    PrefixTree():head(new Node()){};

};


#endif //WORDCOUNT_PREFIXTREE_H
