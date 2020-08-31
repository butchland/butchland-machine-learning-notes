---
toc: true
layout: post
description: A proposal for making the fast.ai deep learning course more effective
categories: [fastai]
title: Fast.ai Deep Learning Adventure Guides (Part 2)
image: images/dora-map-explorer.png
---
![dora explorer map]({{ "images/dora-map-explorer.png" | relative_url }} "Dora the Explorer Map - credits to https://www.mobygames.com/game/windows/dora-the-explorer-swipers-big-adventure/screenshots")
# Fast.ai Deep Learning Adventure Guides (Part 2)

## Summary
**FastAI Deep Learning Adventure Guides** is an initiative to provide first-time fastai learners with a more formalized, structured study group, with a fixed schedule, led by more experienced fastai community members on a volunteer basis, to make the online course (MOOC version) more engaging and effective specially for non-programmers.

[Part 1]({{ "fastai/2020/06/28/fastai-deeplearning-adventure-guides.html" | relative_url }}) covers the rationale. Part 2  covers the program's vision and use cases.
 
## Vision

In order to give a better picture of how the program can be implemented, we created user personas to provide a more personal, relatable picture of the program's use cases.

### User Personas

* **Hue** is a dermatologist from Vietnam who wants to develop telemedicine diagnostic mobile apps.
* **Nadja** is an agriculturist who is working with rice farmers from Bangladesh. She is hoping to combine satellite and drone images with agricultural field reports and weather forecasts to improve crop yield estimates.
* **Sonia** is a health informatics expert who is hoping to use data from her country's health insurance filings improve public health policy.
* **Nikolai** is a journalist studying his country's social media growth patterns and how it has influenced governmental policies.

They are all hoping to add deep learning to their toolkits and want to learn how to apply it to their domains. 

### Pre-implementation Scenarios

#### Hue's setup issues
* Hue has just learned about the fastai MOOC from her twitter feed and is interested in taking the course. She doesn't have a programming background and is a little intimidated by the topic.
She is however very determined and is hopeful after watching the first lecture that she can apply deep learning to help her in diagnosing skin diseases.
* She plans to work with some mobile devs who may not have the deep learning skillsets, but she plans to develop the diagnostic deep learning models herself (since she knows how to diagnose dermatological problems from images) and serve the models via an API. 
* After having some problems setting up her jupyter notebook environment, she joined the forums and asked for help. While there were some responses to her questions, it took her several days to resolve them, primarily due to timezone differences.
* She also felt a little lost with some of the advice, as in most of them assumed a deeper computer technical background than what she had.
* She felt she could have resolved her issues a lot quicker, had their been some hands-on assistance. 
* She is also looking for assistance in learning Python so she can better handle the course material.

#### Nadja's customized workflow applications
* Nadja also heard about the fastai MOOC from a colleague. Although her work already involves analyzing satellite images and weather forecasts separately, she's interested in a customized workflow that integrates all those data sources into deep learning models so they can scale up personalized predictions and insights for the farmer's crop yields.
* Although her office employs data scientists, none of them have a lot of experience with deep learning and she's reluctant to bother them for assistance.
* She uses the forums as much as she can, but wishes for a more person-to-person interaction even if only an online one, since her goal of combining images with weather forecasts is not a common thing being done in her field.

#### Sonia's schedule
* Sonia is hoping to add deep learning to her data science skills. She has been using Python in her other projects, and is interested in building a recommendation system for local goverment units based on public health data from health insurance claims of their constituents to hopefully improve public health outcomes.
* She started watching the videos and participating in the forums. She is eager to learn new skills, but also realizes her intended project is quite ambitious and instead is working on smaller, simpler projects.
* Her problem is sustaining her interest and momentum. While she welcomes the fact that the MOOC allows her to learn on her own pace, she also knows that  a regular schedule with defined weekly objectives can help her maintain a consistent pace to her advancement in deep learning.

#### Nikolai's networking goals
* Nikolai is a data journalist and is familiar with Tableau and a smattering of R, but not python. He intends to learn deep learning especially NLP techniques, in order to apply them to preprocessing text from social media sources to be used for analysis later.
* Nikolai has been watching the videos and participating in the forums, but is also hoping for more social interaction with the community members. 
* While he's trying to gain as much understanding of deep learning as he can, he is also hoping he can build connections from his country's local fastai community and leverage their diverse talents to focus on problems he's interested in.

### A vision for the Fastai deep learning adventure guides

The goal of the Fastai deep learning adventure guide program is to help learners of the fastai MOOC become more effective. A following idealized scenario gives us a glimpse of how the initiative can address the issues discussed above.

#### A Deep learning expedition

* Hue finds out about the Fastai DL Adventure guides.  She looks for and finds a program starting in about a week with a schedule geared for her timezone.
* She signs up and attends an online orientation via a Zoom call. This particular Adventure program is run by Zach, a long time fastai volunteer. She's also happy to find that Nadja, a fellow school alumni, has also signed up for the same group. 
* As part of the program requirements, they sign an a fastai DL Adventure Expedition  member's agreement that asks for their commitment to adhere to the community's values of inclusion and respect for each member as well as to try to commit to completing the program. They also commit to helping out other participants and contribute to the community in the future.
* The orientation also included introductions as well as some online social games to break the ice among the group members.
* She and her fellow expedition members (all 7 of them) are given a proposed schedule by Zach, their Adventure guide. They discuss it and modify it based on their personal schedules (A sample schedule is provided below).
* Based on her schedule, she requested if she could skip the group video watching activities, but promised to join the discussion after (She planned to watch the videos on her daily commute instead) 
* As part of her mini-projects, she's signed up to pair with Nikolai, who seems interested in NLP, to recreate a twitter sentiment analysis notebook. While she doesn't plan on using NLP in her project, she's also keen to round out her knowledge of deep learning to include areas other than where she plans to specialize in.
* She's also thinking of teaming up with her fellow group member Sonia as well as her friend Nadja for their final group project, since Sonia has some programming skills, which she and Nadja did not. Besides, they seemed to have bonded quite well during the orientation.
* She's also thinking of turning her proposed team into an accountability group, a recommendation from their Adventure guide. By making herself accountable to an external group, she hopes to become more consistent in completing the study group activities and make her deep learning study habits stick.

#### Sample Program Schedule

* Base Camp (Orientation)
* Station 1 (Intro)
	* video watch Lecture 1 + Q&A discussion after
	* study group discussion 
		- workshop activity: setup jupyter notebook environment
	* book reading activity (Chapter 1) + Questionnaire roundtable discussion
	* run notebook 1 + troubleshooting session
* Station 2 (Production)
	* video watch Lecture 2 + Q&A discussion after
	* study group discussion 
		- workshop activity: setup Azure search keys + run binder
	* book reading activity (Chapter 2) + Questionnaire roundtable discussion
	* run notebook 2 + troubleshooting session
* Station 3 (MNIST)
	* video watch Lecture 3 + Q&A discussion after
	* study group discussion 
	* book reading activity (Chapter 4) + Questionnaire roundtable discussion
	* run notebook 4 + troubleshooting session
		- workshop activity: build a nn model from scratch
* Station 4 (Pets)
	* video watch Lecture 4 + Q&A discussion after
	* study group discussion 
		- workshop activity: exercises using Datablocks
	* book reading activity (Chapter 5) + Questionnaire roundtable discussion
	* run notebook 5 + troubleshooting session
* Station 5 (Ethics)
	* video watch Lecture 5 + Q&A discussion after
	* study group discussion 
	* book reading activity (Chapter 3) + Questionnaire roundtable discussion
* Station 6 (Multicat)
	* video watch Lecture 6 + Q&A discussion after
	* study group discussion 
		- workshop activity: redo pets and mnist using multicat
	* book reading activity (Chapter 6) + Questionnaire roundtable discussion
	* run notebook 6 + troubleshooting session
* Station 7 (Collab and Tabular)
	* video watch Lecture 7 + Q&A discussion after
	* study group discussion 
	* book reading activity (Chapter 8) + Questionnaire roundtable discussion
	* run notebook 8 + troubleshooting session
	* book reading activity (Chapter 9) + Questionnaire roundtable discussion

	* run notebook 9 + troubleshooting session
* Station 8 (NLP) 
	* video watch Lecture 8 + Q&A discussion after
	* study group discussion 
	* book reading activity (Chapter 10) + Questionnaire roundtable discussion
	* run notebook 10  + troubleshooting session
	* book reading activity (Chapter 12) + Questionnaire roundtable discussion
	* run notebook 12  + troubleshooting session

* Summit (Group Project)
	* group presentations

#### Sample Schedules

* video lecture watching - Tuesdays 6-8pm every 2 or 3  weeks
* video lecture Q&A discussion - 8-9pm Tuesdays following video watching 
* video lecture study group Q&A - Thursdays 6-8pm every 2 weeks
* book reading chapter - Tuesdays 6-9pm  after video lecture watching
* book chapter questionnaire Q&A - following book reading  
* run notebooks and troubleshooting - Thursdays 6-8 after book reading
* group projects - presentations scheduled 2 weeks after last book reading.


### Additional Activities

In addition to programmed study groups centered on the fastai lectures,
additional related topics may also be covered (depending on the students' learning needs), such as:
* Python programming
* git
* pandas
* scikit-learn

Moreover, participants can also undertake individual mini-projects. The adventure Guides also curate and provide pointers to new members on what mini-projects they can undertake to level up their deep learning skills given their current skill level.

As envisioned, these activities can help fastai MOOC course increase the number of learners who go on to finish the course and more effective in achieving its goals.

### Motivations for the Adventure Guides

So aside from altruistic motives, why would an Adventure guide volunteer?

The primary reason, I believe, is because of the truism that the best way to learn a topic is by teaching it. It will help the Adventure guide gain a deeper understanding of deep learning, as well as cementing the foundations into their knowledge base.

Another reason can be providing social interaction in a supportive environment is a reward in itself.

Lastly, the ability to teach Deep Learning is a valuable skill in of itself, and may lead to professional opportunities later. 

Leading an adventure group provides valuable experience to develop these skills, as well as exposing the guide to a diverse set of domains where deep learning can be applicable.

Further incentives (such as certification, reviews, or financial remuneration) maybe added in the future, based on feedback. 
