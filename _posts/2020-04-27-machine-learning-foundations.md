---
toc: true
layout: post
description: My rambling notes on machine learning
categories: [machine learning]
title: Machine Learning Foundations
image: images/j586af7nxvu41.jpg
---
![train models]({{ "images/j586af7nxvu41.jpg" | relative_url }} "credit to https://i.redd.it/j586af7nxvu41.jpg" )
# Introduction to Machine Learning, Deep Learning and Neural Networks

_These notes are my attempt to implement Feynman's method of
learning, whereby, from memory (with as few glances to Wikipedia as I can), 
I attempt to reconstruct my understanding of deep learning so far.[^1]_ 

_Since I am trying to recreate this from memory, I may not have references to some of the stuff I'm saying -- but every now and then, as I update this (and possibly other) document, I might include them just to make it easy to confirm what I'm saying._

_**Last note:** this document will be rambling jumble of thoughts that hopefully over time will be reorganized better into a wiki. There will be lots of repetition of ideas and maybe some of it will be wrong, but as I go over them, hopefully this will occur less and less._

_**Last last note:** I am writing this from the perspective of me trying to explain to a fellow developer how machine learning works. Its not very in depth yet, but over time I hope to go
deeper into the topics all the way to showing the code while explaining the theory._

## Outline and Topics

* Definitions - _I still plan to organize this -- this is just a plan for what topics to cover._)

    * Machine Learning
    * Neural Network Model
    * Model Training 
    * Deep Learning
    * Gradient
    * Gradient Descent
    * Stochastic Gradient Descent
    * Loss and Loss Function
    * Activation Function
    * Linear Function
    * Optimization
    * Learning Rate
    * Training, Validation and Test Datasets
    * Parameter Initialization and Transfer Learning

## Foundations

### Machine Learning

**Machine Learning (ML)** is an alternative way of programming a computer whereby a computer learns to perform some task by being given some examples.

This is in contrast to the _usual_ way of programming computers to do a task by specifying the steps in some detail. 

The mechanism by which ML accomplishes this process of learning to do tasks through examples is by using neural network models. 

A **Neural Network Model** is a program that can learn to perform tasks by being shown examples. 

Using a set of given examples, a model: 
  * tries to perform a task, and 
  * its performance (i.e. how well it performs that task) is then measured, and 
  * that measurement is then used to adjust the model in such a way that affects (hopefully improves) its performance. 

As a concrete example, if we wanted to create a cat-dog image recognition program, we could start with a model and a lot of cat and dog images.

* The model first tries to predict that given the images as input, it makes guesses as to whether each example is a cat or dog. 

* Its performance (whether it guessed correctly or not) is then measured in some way, 

* And that measurement is then used to adjust the model so that the next time it tries to make a prediction, it does a better task. 

* And the task is repeated again and again, with the model (hopefully) continually improving until its good enough at distinguishing cats from dogs.

### Model Training

This process of performing a task, measuring its performance, and adjusting the model is known as **training the model** or model training. 

Once a model's performance reaches an optimum level (e.g. a cat-dog image recognition neural network model correctly distinguishes cats from dogs 99.995% of the time), it can then be used to perform that task just like any other computer program. 

### The Model as a Function

A good way to approach machine learning is to look at a Neural Network Model as a function that computes an output given a set of inputs. 

### Neural Network Models and Neurons

A model is basically a function that is composed of a set of processing units interconnected in a particular architecture. Each processing unit is called a **neuron** or a node, and each neuron takes in a set of inputs (which are numerical input values), and outputs a result (the numerical output value). So we can also consider these neurons as functions as well.

### Parameters, Weights and Biases

Associated with each neuron is a set of **parameters**. This set of parameters can be further divided into **weights** and **biases**. Associated with _each input_ to a neuron is a **weight**, which is a type of a parameter. Associated with _each neuron_ itself is a **bias**, which is the other type of parameter. The output of each neuron can then be the inputs to another set of neurons, which combine inputs and outputs to inputs and outputs of other sets of neurons and to finally to output a result (which may be a category, a number or a set of numbers) which is the output of the model itself.

### Neural Network Layers

These neurons are usually organized into **layers**, with the outputs of one layer of neurons feeding into the inputs of the next layer of neurons. 

### Activation Functions

Between the connections of these neurons are the **activation functions**, which transform the output of the previous layer in some way before feeding it as the input of the next layer. 

### Architecture

The way these layers interconnect their neurons is known as the **architecture** of the model. 

### Deep Learning

**Deep learning** is the term associated with the usage of neural networks that have many layers and is the primary reason for the revival of machine learning as a useful tool in many fields today.

### An Image Recognition Example

As an example, we can say that a trained cat-dog image recognition neural network model is a function that can take as an input an image and outputs a result, telling us whether the image is a picture of a cat or a dog.

The way we can make the model do this is by adjusting the parameters of the model in such a way that it can do the task of image recognition -- recognizing cats from dogs. 

So now the problem becomes how do we come up with a set of parameters for the model so that it does the task well. This is done by training the model with example images of cats and dogs. 

### Training the Model

In order to train a model, it is given a set of inputs, known as the training dataset (which for the image
recognition task of distinguishing cats from dogs, the inputs are images of cats and dogs). 

Aside from the input data, there needs to be some target output (also called a label) associated with each input, which in the case of cat-dog image recognition task, is a label telling us that each input image is either a cat or a dog. So we can't just have pictures of cats and dogs, we need to have _labelled_ examples of 
cat and dog images.

The task of an image recognition model is then, given an input image, is to make a prediction, i.e. output a result. This result is then compared to the target output (i.e. the correct label) for each input image. 

How much the model output is right or wrong for each input (for classification tasks), or how far the model is wrong or right for a continuous value (for regression tasks) is known as the **loss**. The loss is usually (but not necessarily always) computed in such a way that the more accurate or better the model is in making a prediction, the smaller the loss.

This function that measures the difference between the target output versus the output predicted by the model is known as the **loss function**. So we can say that the loss function which the one that produces a measure of a model's performance. 

Once a loss is computed (this is a numerical value that indicates how well a model is doing its task, usually the smaller the better), the next step is to improve or optimize the model's performance by adjusting the weights. 

How it does that computation of the adjustment is done by an algorithm known as Gradient Descent, which is one of the secret ingredients (if ever there was one) behind the power of neural networks.

#### Supervised Learning and Other Types of Learning

Because this machine learning process uses a set of labelled data (associated with each input data is the target result or label, whether this is a category or a continuous number) which used to check the models predictions if they correct or not (in other words, the  labels are used to supervise whether the model is behaving correctly), it is called **supervised learning**. 

There are other methods that don't use labels as such -- as in **unsupervised learning** where the model uses unlabeled data to extract patterns that maybe useful in classifying the data. Another approach is called **semi-supervised or self-supervised learning** where the labels maybe embedded in the input data itself. 

An example of this is in **Natural Language Processing (NLP)** where models might use text from Wikipedia and other sources as the input data and the model is trained such that it can extract the patterns from the underlying language, for example, in language generation, such that given a sequence of words, the model is able to predict the next word or next sets of words that will appear in a sentence or paragraph. The "labels" as such are embedded or latent in the data of the text itself, so while there is no explicit label, the goal is to create a model, given a start of a sentence, might be capable of being able predict what the missing word or words might be. So the goal or loss function might be to improve the accuracy of the prediction and therefore a model can be trained this way, despite the input data not having explicit labels associated with it.

Another area of machine learning is Reinforcement Learning, where a model takes on a task such as playing a video game or Go or chess, where the loss function is to minimize its losses (and/or maximize its wins). And by playing against a copy of itself, the model learns what strategies leads to success or failures and keeps improving and improving until, for example, it could beat their human counterparts.

This article will be focused primarily on supervised learning as this is the basic building block for all the other methods.

### Gradient Descent

As stated previously, **Gradient Descent** is the process that models use in order to adjust their parameters towards some goal. 

We can think of the neural network as a whole (even though it is actually composed of layers and layers of neurons) as actually just being a function. It is a function that outputs a y given a set of inputs x. Moreover, it outputs the y based on input x and a set of parameters w (weights) and b (biases). 

So given a fixed set of inputs x (e.g. a set of N samples of images), modifying the parameters w and b slightly will cause the model to output a slightly different result and hopefully a change in the loss. The change in the loss (delta of the loss) resulting from a slight change of the parameter (delta of the parameter) is known as the **gradient**. For linear functions, this gradient is also known as the slope (or rise/run). In other words, a gradient for a parameter tells us how changing that parameter (which may number in the thousands for a typical model) affects the loss.  

Once we know the gradients of the parameters, we can then adjust the parameters in such a way as to reduce
the loss (in other words, improve the performance). 

Gradient Descent works by computing the gradients of parameters p with respect to a given set of inputs x and its computed outputs yhat , the target outputs y and the resulting loss (_a math like jargon definition_) 

Each parameter is then updated (reduced or increased) by an amount equal to the gradient of that parameter multiplied by a factor known as the Learning Rate. 

Then the model is tested again, by computing the output yhat given the input x and the adjusted parameters p.
The loss is then again computed based on the adjusted parameters. If done correctly, the loss should now be smaller and the model improves its performance.  Looping through this process (and keeping track of its performance) again and again, will theoretically, eventually result in a model that can be good enough for the targeted task.

The process by which a model computes a loss using a loss function, computes the gradients of the parameters with respect to that loss, and the update of the parameters in order to improve its performance is known as **optimization** and is done by another component (not part of the model) known as an **optimizer**. 

The process of computation of the gradients is known as **backpropagation**. 

The process of the neurons' computation of the inputs into their outputs and subsequent input to the next layer of neurons all the way through the layers to output a predicted result for the model is known as **forward propagation**. 

One important function that needs to happen during forward propagation phase is that the framework that is used to implement the neural network models needs to keep track of the calculations being done by the neurons on the parameters, the activation functions all across the layers of the model up to the calculation of the loss.

This sequence of calculations, or more accurately, graph of calculations is known as the model's **computational graph**. This computational graph is then used by the framework to compute the parameters' gradients in the backpropagation phase of the training.

When the trained model is used to compute a prediction based on a new set of inputs (such as in model deployed in production), this forward propagation is also called inference. Normally, during inference, the model is still forward propagation, but the framework no longer needs to create a computational graph because it doesn't need to compute the gradients of the parameters -- the gradients are only needed when we plan to update the parameters, but computing the output does not need the gradients, and are usually turned off.

### Stochastic Gradient Descent

In the process we described above, we assumed our computation of loss (and the subsequent computation of the gradients) based on all the samples of the training data once every epoch (where an epoch is one pass through all training data). 

In practice, this is very hard to do, due to limitations of GPU hardware (usually memory) in which the operations to compute the predictions, computation of the loss, computation of the gradients, and update of the parameters are all done by a GPU so these pieces of data need to be stored in GPU memory which might be less than the memory available for the CPU. 

The reason we have to use a GPU is because the number of parameters can be very large and while the operations might be simple (multiplication, addition, differentiation (aka computation of the gradients) - even differentiation is just multiplication and adddition), there needs to be lots of them, and GPUS are ideal for this soft of computation because they can be parallelized.

One alternative to computing the loss for the all the samples at once, is to compute the loss (and the subsequent gradients) for each sample of input data (e.g. one image at a time) and update the weights as we pass through all the samples. In this extreme case, an epoch (where an epoch is one pass through all your training data) consists of N passes of the training loop given N samples of training data. This is known as online or sequential gradient descent and is considered a variant of stochastic gradient descent.

A more common alternative is the middle ground where we take a batch of n input samples at a time (call this batch size bs) and compute the loss, compute the gradients and adjust the parameters for the entire batch. This means that as the model goes through each batch, the model is computing the loss from each batch and applying the update to the model's parameters to be used for the predictions of the next batch to see if its update does result in a lower loss (i.e. improve the model's performance). 

So for a given batch size _bs_, there will be _m_ batches where _m_ is equal to _N_ input samples divided by the batch size _bs_. This means that for each epoch, there will be _m_ passes through the training loop. This is known as batch gradient descent and is also considered as a variant of stochastic gradient descent.  

This can maximize the utilization of the GPU as we can adjust the batch size so that the entire input data for each batch plus the parameters can fit into the GPU memory.

Also, we can also consider online or sequential gradient descent as a batch gradient descent with a batch size of one.

_As an aside, Stochastic means randomly determined. The reason why the we call the online and batch gradient descent stochastic is because they replace the computation of the loss of the entire input data with a stochastic (random) approximation (based on a sample subset of the input data). Moreover, as the same input data is read passed through each epoch, the contents of each batch are usually shuffled, resulting in a set of parameters that can better approximate the parameters for the entire input data through random sampling._ 

### Hyperparameters

The learning rate, the batch size and the number of epochs are the tweaks in the way we train our model, and along with lots of others (including the architecture), are known as hyperparameters. Learning to pick what good values to set these to will, (along with how good your training data is, as well) determine how quickly or how well we can build a model to perform a target task.

Unfortunately, at this point, this process of finding the right hyperparameters is as much as an art and a skill that can only be developed through experience, although there might be some rules of thumb that we can follow. Often, the only way to know is by trying things out and is often a source of challenge as much as a source of frustration for deep learning practitioners.

### Linear Functions and Activation Functions

The most common function used in the neurons that compose the layers of neural networks is the _linear function wx + b_, where x represents the inputs, w the weights and b is the bias. In order for a neuron (or a layer of neurons) to implement Gradient Descent, it is important that its function be differentiable, meaning a gradient can be computed on the parameters w and b given a loss function that computes the output of the last layer of the model. 

It is also important to note that for each layer in the neural network , the input x might be a set of numbers, e.g. a vector or a matrix of numbers, and that the weights can also be matrices and biases can also be vectors, so a more accurate depiction of the linear equation is w@x + b where @ represents a matrix multiplication.

#### An alternate formulation of the Linear function (and an explanation for usage of the word bias)

_As an alternate formulation, the linear equation w@x + b can also be expressed as w@x, but with the
slight modification of the x inputs -- the addition of an input(possible a vector) = 1 and the weights w incorporating the bias at the end of the matrix. So the inputs always include an additional input that is always equal to 1 while the weights now incorporate the bias as the last column. multiplying the input of 1 with the weight b is equal to b -- so this is equivalent to w@x + b. The reason why it is called bias is that a bias is a term used in electrical circuits for a component that raises the output to a constant value - even when the rest of the inputs are zero. The advantage of this formulation is that it simplifies differentiation (i.e. the computation of the gradients, since everything that needs to be differentiated is in the matrix w, including the bias, albeit at the expense of having to add an extra input value equal to 1 during the computation of the prediction)_

### Activation Functions

Activation functions on the other hand are transformations between the outputs of one layer to the inputs of the next layer. Their function is to introduce a non-linearity between the linear functions of the neurons.

Mathematically, tying together the output of a linear function to the input of another linear function is actually equivalent to just another linear function. So if the neural network was simply composed of layers of neurons computing linear equations linked directly (i.e. their output was fed directly) to the next layer of neurons also computing linear equations down the line, it would simply be equivalent to a single layer of neurons computing linear equations. And neural networks composed only of one layer are not going to be able to do the feats that deep learning neural networks have become famous for.

An example of a non-linear function is the ReLU or rectified linear unit. In practical terms, its just a function that replicates (and outputs) the input if the input is greater than zero, otherwise, it just outputs zero. In other words, it just zeroes out the negative outputs and passes on the positive outputs.

Now, this may not sound such a radical transformation, but this, along with the Gradient Descent, allows any neural network to theoretically approximate any function, given a set of inputs. This capability of neural networks to approximate any computation for a given set of inputs is known as the Universal Approximation Theorem. If anything, activation functions are the other secret ingredient behind the power of neural networks.

### Loss functions

An important characteristic of a good loss function is that it should be sensitive to changes in the parameters, i.e. slight changes to the parameters should also change the computed loss. This is so that when we differentiate the loss function and compute the gradients of the parameters, the change in the loss will result in non-zero values for the gradients. This, in turn, will trigger a change in the parameters (because they are adjusted by an amount equal to the value of the gradient multiplied by a factor known as the learning rate) for the iteration of the training loop. 

If a loss function was not sensitive to changes in the parameters (i.e. slight changes in the parameter results in the same value of loss), then gradients computed would be zero and so the adjustment would also be zero (zero gradient times any value of learning rate is also zero) and would end up in no change in the parameters (ad infinitum). At this point, the model would no longer be improving -- another way of saying that the model is no longer learning. 

We can visualize the all possible parameter values as occupying a multi-dimensional space and the loss function maps each point in this space to a numerical value (given a fixed set of inputs). Moving slightly from one point in this parameter space to another point results in another value for the loss.  A bad loss function is one with lots of flat areas (i.e. zero gradients) while good loss functions would have hills and valleys leading down to (hopefully) a global minimum or at least something close to it.  

The goal of training the model is to find a multidimensional point in this parameter space (in other words the set of parameters ws and biases for the entire model) that computes a minimum loss for the entire training data.

### Metrics

While we've already talked a little bit about loss functions and how they're used to improve the model using gradient descent, from a practical perspective, what we really care about a model's performance is known as its metrics.

So a metric is also a measurement of the performance of a model, but unlike the loss function, it doesn't have to be differentiable, it just has to be a reasonable measure of performance from the practitioner's perspective. Sometimes you can use the loss as the metric, but you might be able to use something more appropriate and understandable.

One of the most common metrics (especially for classification) we use is error rate - given a sample of N inputs, how many mistakes (or wrongly classified) M did it make, and the error rate is M divided by N. The lower it is, the better. Zero error rate means no mistakes. As an alternative, we can also take accuracy -- which is just 1 - error rate (or how many correct responses did the model make given N input samples).

For regression tasks (where the model is predicting a continuous value), the MSE or Mean Squared Error or 
its square root (aka RMSE) can be used as a metric. Note that in this case, the MSE can also be used as the loss function.

### Overfitting and Validation Sets

The next question is to what set of samples do we apply the metrics to? If we simply use the training data, it is very easy to get zero error rates (usually). But when we actually try to use the model in production, we might get disappointed and not get the same performance (metric wise) that we got during training.

The reason for this might be that our model has been optimized to such an extent that its has become so  specialized so as to match the training data that it is no longer performs as well on data that you use during production. 

The model might have seen your training data so many times that it has sort of "memorized" it and can give good predictions on it but it won't necessarily perform well on data it hasn't seen during training. This situation where the model performs (both the loss and your metrics) well on your training data but doesn't do so well on data it didn't see during training is known as overfitting.

In order to counter this, and to also have a better estimate of the model's performance when we deploy it during production, we can simulate this set of data we will encounter during production by setting aside some of our labelled data that we would normally use for training the model to be used to validate its performance. This set of data is what we call our validation data, as distinct from the training data.

This validation data is where we apply our metrics in order to get an estimate of the performance of our model when we deploy it in production. These metrics are much less useful when we apply them to our training data because they won't give a good estimate of the model's performance when used in production (often, they inflate the performance and give us a false sense of confidence). This is why we mostly track our metrics against the validation data, not on the training data.

Also, it is also very important to note that our training and validation data that we use for training the model as well as estimating its performance should be as representative as possible of the data that we will actually encounter when we deploy the model into production.

This is important for the training data, as the model can only learn based on the input data that it encounters, and may not perform as well on data that is very different that it may encounter during production.

This is also important for the validation data, because if the validation data is not representative of the data it will encounter in production, we might have a  wrong estimate the performance of the model when it is actually used in production if we base it on the metrics we measure on the validation data.

The last point we need to make is that we need to split the validation data from the training data in such a way that the data we use in the validation set is representative of the data we will encounter in production. So for example, if in production, we will have images of cats and dogs that we didn't have in our training data, then our validation data should also have images of cats and dogs that are not part of our training data. 

If didn't do this, and we use the same images in both our training and validation data, then its quite possible that we would score high on our metric (because it may have "memorized" the training data) but most certainly perform worse when we actually use it in production. 

One way to approach this splitting of training and validation data is to make sure that our validation data is not "leaking" into our training data. If, for example, our samples that are in the validation data can somehow be correlated into samples that are also in the training data in a way that will never happen in production, then that might constitute a "leakage". What constitutes this leakage is of course very dependent on model's task and the data we use to train it. 

### Using the metrics to improve the model

If we do the training-validation split correctly, then our validation metrics should be a good predictor
of the model's performance when it is deployed in production. As such, we can use the metrics to guide us on tweaking the model until its metrics are good enough or even tell us to stop if the metrics start to worsen. 
We can also use it to compare different models and allow us to pick the one with the best performance.

As we learn different techniques and learn different "hyperparameters" to tweak the model, at some point, that although the model does not use or "see" the validation data during its training, we, as the practitioners guiding the process of selecting hyperparameters towards a set of the model's parameters that result in a good performance metric on the validation data, we might have actually started "overfitting" the model to match the validation data, at the expense of worsening its performance on data it will encounter once we deploy it in the real world. Though less of a possibility, it is still a possibility.

### Test Datasets

In order to counter this "leakage" of the validation data into the model, one possible solution is to set aside a third set of data known as the test data. This is again split from the labelled data and the usual caveats apply, i.e. it must be representative of the data the model will encounter in the real world and must not be correlated with samples present in the training and validation data. This test data will not be used in the training process and when we are updating the hyperparameters and validating the performance metrics using the validation dataset. It will only be used to predict the performance of the model once all the tweaking has been done. 

### Tracking the performance of the model during training

As we go through each epoch (each epoch is a complete pass through all your training data), and since we are using batch gradient descent where for each epoch we have subdivided your training data into batches, we will be executing the training loop for each batch and updating the model's parameters each time we pass through the training loop. 

In order to give us an idea of the current performance of the model, at the end of the training loop for all batches, we can then compute the metrics and loss on the validation dataset, doing the inferencing (making sure we do this without updating the computational graph since only the forward propagation steps on the training data should be updating the computational graph since its the gradients on the training input data that should be used to update parameters). 

The computation of the validation loss and metrics are also done in batches using the GPU because they run quicker if they are parallelized, but usually the batch sizes are double the batch sizes for the training phase because they dont use the computational graph to track the calculations on the inference and loss calculations. At the end of all the validation batches, the means of the validation loss and metrics are displayed along with the training loss to give an indication of the model's performance.

### Parameter Initialization and Transfer Learning

In the section on [training the model](#model-training), especially for the cat-dog image recognition example, we did some hand waving on how we actually get a starting point for the model.

Remember, we can usually define an architecture (which is how the many neurons there are in each layer, how many layers and how each layer connects to the other layers), but we haven't discussed how we come up with the initial values for the parameters themselves.

If we didn't have any other starting point, the way practitioners usually set the initial parameters are by setting them to random values. 

Of course, there are also particularities in the way we setup these random parameters but the idea is that whatever random values they start with, during the training phase, these parameters converge to a set of values that will provide the optimum level of performance needed to perform a task.

As an alternative to starting out with random values, we could also use a model trained on a similar task but not necessarily the same as the task we want the model to optimize. This idea of using an pre-existing pre-trained model and adapting it to your particular task is known as **transfer learning**.

Transfer learning, if done with the appropriate pre-existing pre-trained model, can reduce the amount of data and computation needed to reach an optimum level of performance.

This is the primary reason why, by using transfer learning, we can reach state of the art performance even on limited computing requirements and limited amounts of labelled data.

For computer vision tasks, these pre-trained image recognition models usually come in a set of well defined architectures that have been known to perform well in some competititon and have usually been trained on large image datasets. 

<p><sub>Copyright &copy; 2020 by Butch Landingin. All rights reserved. version 0.1.11</sub></p>
---
## Footnotes

[^1]: [Feynman Method](https://www.calnewport.com/blog/2015/11/25/the-feynman-notebook-method/)


