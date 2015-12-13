# Biaxial Recurrent Neural Network for Music Composition

This code implements a recurrent neural network trained to generate classical music. The model, which uses LSTM layers and draws inspiration from convolutional neural networks, learns to predict which notes will be played at each time step of a musical piece.

You can read about its design and hear examples on [this blog post](http://www.hexahedria.com/2015/08/03/composing-music-with-recurrent-neural-networks/). 

# Requirements
1. Try to run `biaxia_1st_construct.sh` to automatically download and install required software
2. Run `biaxia_2nd_reboot.sh` or manually reboot after installing
3. Have a test using `biaxia_3rd_test.sh` which can tell you if all the required things are ready or not.
4. Run `python main.py` and enjoy it. Optianlly, you can change the training data in `music` folder.


#Result Folders (with ending `-result`)
Inside result folders, 
* param-x.p file means the model parameters after x times iterations.
* sample-x.mid file indicates sample music generated after x times iterations, to get quick look at how well the model is.
* x.jpg is the visualization extract from the sample-x.midi file, visaulization tool is at [here](http://qiao.github.io/euphony) .
* *-composition-x.mid is the music composed by the final model.


##classical music 
* biaxial-ori-result: under layer setting 300,300,100,50
* biaxial-lesslstm-result: under layer setting 200,200,75,35
* biaxial-leastlstm-result: under layer setting 100,100,50,25

## Michael Jackson's Rock Music
* biaxial-ori-mj-result: under layer setting 300,300,100,50 

## Secret Garden's Music
* biaxial-ori-secretgarden-result: under layer setting 300,300,100,50 

