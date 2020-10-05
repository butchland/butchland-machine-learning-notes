---
toc: true
layout: post
description: A beginning beginner's step by step guide to creating cool image classifiers for deep learning newbies (like you, me, and the rest of us)
categories: [machine learning]
title: Build (and Run!) Your Own Image Classifier using Colab, Binder, Github, and Google Drive
hidden: false 
image: images/image-classifier-logo.png
---
![trained a neural net](https://imgs.xkcd.com/comics/trained_a_neural_net.png)

# Building your own image classifier is fun!

_This is Part 1 of a two-part article on building your own image classifier. Here's the [link to Part 2]({{ "machine%20learning/2020/10/05/byoic-on-colab-part2.html" | relative_url }}){:target="_blank"}._ 

So here's what were building -- **A pet classifier!**

First, head over to Binder to see it in action -- click on the  button below _(where it says "launch binder")_.

_Play it with for a while (make sure you upload some photos). Check out how well (or how bad) it classifies your pets and come back to this page to continue._

[![Binder pet classifier](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/butchland/automatic-garbanzo/master?urlpath=%2Fvoila%2Frender%2Fbuild-your-own-image-classifier.ipynb){:target="_blank"}

**Warning**: it takes a while for it to start, so please be patient, I promise it will be worth the wait!

## What's an image classifier?

_I hope you clicked on the "launch binder" button above and played with the pet classifier app before coming back here to continue reading the article._

If you did play around with app above _(like I told you to)_, you'd know that an _image classifier_ classifies images. 

This article will show you how to build your own image classifier -- by default, you'll be building a _pet classifier_ just like in the demo above, but you can tweak it so you can build an image classifier for whatever you want _(as long as you can find enough pictures of it to serve as examples)_.

## Some prerequisites

Because we're using cloud services to build everything in this project (no need to install anything on your computer), you'll have to signup for some services, so you'll need to have these.

* A Gmail ID _(almost everyone has one these days, don't they? But if you don't, head over to [this link here](https://accounts.google.com/signup/v2/webcreateaccount?hl=en&flowName=GlifWebSignIn&flowEntry=SignUp){:target="_blank"} right now and create one.)_

* A Github ID _(don't worry if you don't have one, we can create it later -- but if you're in a hurry, you can create one right now -- just click on [this link here](https://github.com/join?source=header-home){:target="_blank"})_

## Steps to building your own image classifier

So now we're ready to start building! 

Here are the steps:

* _Collect some pictures_ -- if you don't have pictures, you can usually search for them over the internet. 

    We will be using [Colab](https://colab.research.google.com/){:target="_blank"}, a Google cloud service used by data scientists and machine learning researchers and students around the world to build and study machine learning models. 

* Once you've collected your pictures, you'll need to _clean your data_ -- you'll see that the images you get through an internet search are sometimes incorrect, so you need to clean up your data first if you want your image classifier to work well -- after all, like in a lot of things, if your image classifier gets **Garbage in**, it puts **Garbage out**)

* Now that you have cleaned your data, you can build a _Neural Network Image Classifier_ that can classify images.

    _(Neural Networks a.k.a. Deep Learning Artificial Neural Networks are currently the best way to build image classifiers -- that's why we are using them!)_

* Once you have your image classifier, you need to export it to a format so that it can be used just like a regular program -- you feed it an image, it will classify that image.

* We will also build a very simple app that can use that exported image classifier. 

    We can test it out on Colab, but in order to make it available for others to use, we'll need to use a cloud platform that can run your app. 
    
    In our project, we will be using [Binder](https://mybinder.org/){:target="_blank"}, a free cloud service that can run your image classifier.

* Next, you'll need to move that exported image classifier to [Github](https://github.com/){:target="_blank"} (along with your app) because that's where Binder will get it from in order to run it.

* Once you get your exported image classifier on Github, you can now run your image classifier app on Binder.

* The next step is ... **Profit!** -- as the whole world starts using your app... (or maybe just your friends :)

Don't worry if you haven't figured out what to do next, I'm just outlining the steps of the whole process, but I'll be walking you through the process step by step.

I'll even try to explain what we're doing as we're doing it, but even if you just follow the instructions (without understanding) you should just do fine (but understanding what you're doing makes it more fun, doesn't it?)

## Collecting Images

In order to build a Deep Learning Image Classifier, we need data. 

This data (in the form of labeled pictures) will be used as examples from which the Neural Network learns to distinguish between different categories. 

In our case, our Neural Network Image Classifier distinguishes cats from dogs.

So we will need pictures of cats and dogs. Not only do we need pictures of cats and dogs, we will need to label each picture as containing either a cat or a dog.

## Introducing Colab

As previously stated, we will be using [Colab](https://colab.research.google.com/){:target="_blank"} in order to do this. 

So you might be wondering, what is Colab and how do I use it?

Colab is an interactive document editor, much like Google Docs, but unlike Google docs, you can run code inside it. 

These Colab documents are called Jupyter notebooks, and they are stored in your Google Drive, just like Google Docs, Sheets or Slides. 

Jupyter notebooks contain both prose (such as text, graphs, and images) as well as code. 

You can also download them to your local drive (with the file extension `.ipynb`) or store them on [Github](https://github.com/){:target="_blank"}, which is a cloud-based public repository for code and documents.

I've built Jupyter notebooks for each step of building your own image classifier, so we can just run them one after another until we've built our image classifier.

The nice thing is, because Jupyter notebooks contain both text and code, I've put in explanations about what the code is doing alongside the actual code (kind of like code comments, but better formatted.)

## Running your first notebook to collect images

Click on the button (where it says "Open in Colab" ) below to open a copy of the notebook. 

If you haven't already logged in to Google, you'll have to login first.

Follow the instructions in the notebook. 

[![Open In Colab](https://raw.githubusercontent.com/butchland/build-your-own-image-classifier/master/images/colab-badge.svg)](https://colab.research.google.com/github/butchland/build-your-own-image-classifier/blob/master/colab-build-image-dataset.ipynb){:target="_blank"}

At the end of the steps in that notebook, you should have a labeled image dataset for your image classifier stored on your Google Drive.

_(If you didn't modify the default project name, the file `pets.tgz` should be in your Google Drive under the folder `/My Drive/build-your-own-image-classifier/data/pets`)_

**IMPORTANT**: Make sure to terminate your Colab session once you've completed this task _(in order to avoid using up unneccesary resources)_.

## Cleaning your Image Dataset

Your next step is to clean that dataset.  

I've created another notebook do this (this makes it easy to keep the notebook short and easy to understand).

So click again on the notebook below.

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/butchland/build-your-own-image-classifier/blob/master/colab-clean-image-dataset.ipynb){:target="_blank"}

After running the notebook above, you should now have a cleaned up image dataset stored on your Google Drive.

_(If you didn't modify the default project name, the file `cleaned_pets.tgz` should be in your Google Drive under the folder `/My Drive/build-your-own-image-classifier/data/pets`)_

## Building a Neural Network Image Classifier

You're now ready to build a Neural Network Image Classifier. 

This step is also known as training a neural network model.

In addition to training the model, we also need to export it to what is known as a "pickle" format (into the file named `export.pkl`).

Again, click on the button below and follow the steps outlined in the notebook.

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/butchland/build-your-own-image-classifier/blob/master/colab-build-image-classifier.ipynb){:target="_blank"}

At the end of running this notebook, you should have an exported classifier(`export.pkl`) in your Google drive.

_(If you didn't modify the default project name, the file `export.pkl` should be in your Google Drive under the folder `/My Drive/build-your-own-image-classifier/models/pets`)_

## Test your Image Classifier App on Colab

We can now test our image classifier app on Colab.

Again, click on the button below to test the application on Colab.

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/butchland/build-your-own-image-classifier/blob/master/colab-test-image-classifier.ipynb){:target="_blank"}

Once your image classifier app has been tested, you have accomplished your goal -- to build an app that runs an image classifier.

**But wouldn't it be great if you could make it easy for others to use your app?**

After all, you are now ready to share it to the world (or at the very least, your friends, family and colleagues...)

_([TO BE CONTINUED IN PART 2]({{ "machine%20learning/2020/10/05/byoic-on-colab-part2.html" | relative_url }}){:target="_blank"})_

If you liked this article, and most specially if you were able to build your own image classifier based on this article, give me a shoutout on [my twitter account @butchland](https://twitter.com/butchland){:target="_blank"} or message me on the [fastai forums: @butchland](https://forums.fast.ai/u/butchland){:target="_blank"}, I'd really appreciate it!

## Acknowledgements

The software used to clean your data, build your classifier and run your application is largely based on the [fastai](https://docs.fast.ai){:target="_blank"} python package, written by Jeremy Howard and Sylvain Gugger.

The [Jupyter Notebook](https://jupyter.org/){:target="_blank"} environment that enables us to run interactive documents to build our image classifier won the 2017 ACM Software System Award and is widely used by scientists, researchers and students around the world.

The software package used to collect the images ([jmd_imagescraper](https://joedockrill.github.io/jmd_imagescraper/){:target="_blank"}) was built by Joe Dockrill ([@joedockrill](https://forums.fast.ai/u/joedockrill){:target="_blank"}), one of the students of the fast.ai course.

---
