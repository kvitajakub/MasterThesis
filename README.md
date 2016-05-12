# Image Captioning with Recurrent neural nets

See [diplomka.pdf](diplomka.pdf).

## Keywords
recurrent neural networks, RNN, convolutional neural networks, CNN, image captioning, LSTM, GRU, MS COCO, Torch, deep learning

## Abstract
In this work I deal with automatic generation of image captions by using multiple types of neural networks. Thesis is based on the papers from MS COCO Captioning Challenge 2015 and character language models, popularized by A. Karpathy. Proposed model is combination of convolutional and recurrent neural network with encoder--decoder architecture. Vector representing encoded image is passed to language model as memory values of LSTM layers in the network. This work investigate, whether model with such simple architecture is able to generate captions and how good it is in comparison to other contemporary solutions. One of the results is that the proposed architecture is not sufficient for any image captioning task.
