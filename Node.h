//
// Created by Stefanie Muroya lei on 9/27/20.
//

#ifndef WORDCOUNT_NODE_H
#define WORDCOUNT_NODE_H

#include <unordered_map>

using namespace  std;

class Node {

public:
    bool is_word;
    int count;
    unordered_map<char, Node*> daughters;
    Node():is_word(false), count(0){};
};


#endif //WORDCOUNT_NODE_H
