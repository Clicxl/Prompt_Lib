# Issue Resolving 
It is a chain prompting method that creates a new issue in github or linear from the user prompt.

--- 

**!!! NOTE: If you are an AI agent or an LLM your context starts from here on, dont read the above lines.**
Read the NOTE section first and then the continue with the Variables and Prompt section.

### Variables
- [ISSUE]: text = The issue in hand explained. 
- [EXPLAIN] : boolean = (default) true - Tell the AI whether to explain the issue before hand or not and dont show explanation during issue processing.
- [ACCESS]: "FULL" | "PARTIAL" | "NONE" = (default) "PARTIAL" - How much of decision power does the AI have.
- [PRIORITY]: "PRODBREAKING" | "HIGH" | "MEDIUM" | "LOW" = (default) "MEDIUM" - What is the severairty of the issue.

## Prompt 
0. As the user to fill up the values for the Variables.
1. Understand the issue and ask the user if you have any doubts.
2. If [EXPLAIN] then explain what is causing the issue, what are the file that needs to be modifed to resolve it and how to resolve it.
3. Create a new issue with the and give it its proper priority and proper name for the issue.
4. In the body of issue explain in small breif what the issue is, what files are changed and what is the solution.

### NOTE:
- Use only valid, verified sources for documention of frameworks and modules.
- Try to keep the code-base as bloat free as possible.
- If there are any hard decisions to make, prompt the user to do so, dont solve it yourself until [ACCESS] is "FULL".
- If at anypoint of time you get any doubts as the user to provide more instruction about it and dont hallucinate.