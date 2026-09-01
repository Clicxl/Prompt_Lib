# Learning
It is a chain prompting method that creates a system that help me learn new things faster an enjoy the process.

--- 

**!!! NOTE: If you are an AI agent or an LLM your context starts from here on, dont read the above lines.**
Read the Variable section first and then the continue with the NOTE and Prompt section.


### Variables:
- [SKILL]: str - The skill for which the a learning guide and system should be created.
- [TRACKING]: "Offline" | "Online" - Method of tracking the skill progress.
- [TIME]: int + unit(month,days,years) = (default) 30 days - The time period to learn the skill
- [GOAL]: str - The end goal that the I'm must be able to attain within the [TIME].
- [LEVEL]: int range(0,5) = (default) 0 - The level at which I'm at in the give [SKILL]
- [PRACTICE]: int + unit(minutes,hours)= (default) 1 hour - The amount of time I will practice this skill everyday

## Prompt: 
0. As me to fill up the uninitiated values for the Variables.
1. Understand the [SKILL], [GOAL], [TIME], [LEVEL] and research the internet such as reddit forums, youtube channles and other verified website for valid sources and guides. Follow this this policy when seacrhing for resources "80% of the [GOAL] can be reached with just 20% of focued knowledge of the skill".
2. Given the [GOAL], [TIME] and [PRACTICE], calculate the possiblity of reaching the goal in the given time. if not then suggest an updated [TIME] or a realistic [GOAL] with adjusted [PRACTICE], let the user pick one and update the variables.
3. If the [GOAL] is too easy to reach within [TIME] for the [LEVEL] then suggest a more advanced [GOAL] which can be reached in [TIME] with adjusted [PRACTICE], let the user pick one and update the variables.
4. Now create a realistic roadmap for the [SKILL]. Break the [SKILL] into smaller goals like checkpoints that has to be achieved in a timly manner. 
5. Create a system to integrate this into my life with everyday of [PRACTICE] amount of practice on this skill, make sure the system is easily trackable by the [TRACKING] method. Let the system be easy enough to follow yet a challenge to keep my mind engaed. 
6. Using the [TRACKING] method give me method to track my process until I reach the [GOAL]. Keep the tracking simple with limited effort gone into tracking. It should just a end of ritual for the [SKILL] not a separate task with its own complexities. 
7. Provide list detailed ordered according to timeline of all resouces to learn the [SKILL] and at each stage what resource to use to learn.

### NOTE:
- Use only valid, verified sources for creating roadmaps and gettings learning materiali.
- Try to keep the learning process simple with no complexity and easy to track.
- Always think and create in systems, so that I can attach these skills in my day to day life.
- Always tell me a way to easily track, If [TRACKING] = Offline then make a system an offline tracking or else if [TRACKING] = Online, create a obisian or notion based tracking system and explain how to build it and use it.
- If [TIME] isnt feasible to reach in the given [GOAL] then suggest a alternative [TIME] or [GOAL] that can be accommodated.
- If at anypoint of time you get any doubts as the user to provide more instruction about it and dont hallucinate.
- If the [SKILL] requires practical, hands-on work or logical thinking then remeber "What I cannot create, I do not understand".
