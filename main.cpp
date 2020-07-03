#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <stdlib.h>
#include <thread>
#include <mutex>
#include <queue>
#include <map>
#include "PrefixTree.h"
using namespace  std;

#define RESULT_PATH "../result.txt"
#define PATH "../test1.txt"

mutex mtx_counter;
mutex mtx_countWord;
mutex mtx_queue;

long long counter = 0;
long long fileSize = 0;
bool endOfFileFound = false;
long counter_queue = 0;
map<string, int> countWord;
queue< map<string, int> > q;


void build_archivo(){
    // generate 5GB file
    vector<string> vocab;
    ifstream file("../vocab.txt");

    string s;


    while(getline(file, s)){
        vocab.push_back(s.substr(0, s.size()-1));
    }

    file.close();

    ofstream archivo("../archivo.txt");
    long fileCurrentSize = 0;
    const long TARGET =  5000000000;
    int wordIndex;
    while(fileCurrentSize <  TARGET){

        wordIndex = rand() % vocab.size();

        fileCurrentSize+=vocab[wordIndex].size() + 1;

        archivo << (vocab[wordIndex] + ( (rand() % 5 )  < 4 ? " " : "\n"));

    }

    archivo.close();

}

long long getFileSize(){
    ifstream in_file(PATH);
    in_file.seekg(0, ios::end);
    long long file_s = in_file.tellg();
    return file_s;
}
void run_thread(){
    PrefixTree pt;
    char *sentence= (char*) malloc(10000000 * sizeof(char));

    while(!endOfFileFound){
        long long temp;
        mtx_counter.lock();
            temp = counter;
           counter++;
        mtx_counter.unlock();
        if(temp * 10000000 <= fileSize) {
            try {
                string word;
                ifstream file(PATH);
                file.seekg(temp * 10000000);
                file.read(sentence, 10000000);

                file.close();
                for (int c = 0; c < 10000000; c++) {
                    if (sentence[c] == '\0')break;
                    if (sentence[c] != '\n' && sentence[c] != ' ') {
                        word += sentence[c];
                    } else  if(word!= ""){
                        pt.addWord(word);
                        word = "";
                    }

                }

                if (!word.empty()) {
                    pt.addWord(word);
                    word = "";
                }


            } catch (const std::exception &e) {
                cout << e.what() << endl;
                mtx_counter.lock();
                endOfFileFound = true;
                mtx_counter.unlock();
            }

        }else{
            mtx_counter.lock();
            endOfFileFound = true;
            mtx_counter.unlock();
        }

    }

    mtx_countWord.lock();
        q.push(pt.unique_words);
    mtx_countWord.unlock();

    mtx_queue.lock();
        counter_queue++;
    mtx_queue.unlock();

}


void merge_results(){


    while(counter_queue < 6 || !q.empty()){
        if(!q.empty()){
            for(auto const & n : q.front()){
                countWord[n.first] += n.second;
            }
            q.pop();
        }

    }

}
void writeAnswer(){

    cout << "escribiendo resultados" << endl;
    ofstream file(RESULT_PATH);
        for(auto const & w: countWord){
            file << w.first << ": " << w.second << endl;
        }
    file.close();
}


int main() {



    //build_archivo();

    fileSize = getFileSize();
    vector<thread> threads;

    for(int i = 0; i < 8; i++){
        threads.push_back(thread(run_thread));
    }

    thread th1 (merge_results);

    for (auto & th : threads){
        // If thread Object is Joinable then Join that thread.
        if (th.joinable())
            th.join();
    }
    if(th1.joinable())
        th1.join();

    writeAnswer();

    return 0;
}
