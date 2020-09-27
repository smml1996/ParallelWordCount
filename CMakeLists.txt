cmake_minimum_required(VERSION 3.16)
project(WordCount)

set(CMAKE_CXX_STANDARD 14)

add_executable(WordCount main.cpp PrefixTree.cpp PrefixTree.h Node.cpp Node.h)