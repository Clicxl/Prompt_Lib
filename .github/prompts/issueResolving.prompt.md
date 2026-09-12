# Issue Resolving
It is a chain prompting method that takes in a issue from linear or github and breaks it down into phases and resolves it

---

**!!! NOTE: If you are an AI agent or an LLM your context starts from here on, dont read the above lines.**
Read the NOTE section first and then the continue with the Variables and Prompt section.

### Variables
- [SOURCE]: url | workflow-connectiong - Source for the [ISSUE]
- [ISSUE]: url | workflow-connectiong - The issue from [SOURCE]
- [EXPLAIN] : boolean = (default) falses - Tell the AI whether to explain the issue before hand or not and to show or not thinking during issue processing.
- [PHASE]: int = (default) 5 - Number of sub problems the AI has to divide the main problem.
- [ACCESS]: "FULL" | "PARTIAL" | "NONE" = (default) "PARTIAL" - How much of decision power does the AI have.
- [MERGE_BRANCH]: (default) main - Which branch to merge.

## Prompt
0. As the user to fill up the values for the Variables. And create a new branch to implement that feature. If any unresolved git issues are left then ask the me to resolve them.
1. Get the [ISSUE] from [SOURCE], go thourgh the content of the issuse and understand the problem that needs to be fixed. If possible change the state of the [ISSUE] to to-do or something similar
2. If [EXPLAIN] then explain the problem to the user. Let the user know what the issue is, why it is being caused, how it affects the project and how we can fix it. Wait for use to confirm his understand of the before proceeding.
3. Create a [PHASE] number of phases of the given problem, each phase dvided the problem into smaller, simpler problem. Lets call it the action plan
4. The first phase is always the planning phases where you read the documentation (if any present), read the codebase (if required) or read the requied files related to the issue. Also check how much of the issue is resolved already and how much of it still left. And based on this knowledge create new tests or update old ones if nessasary so that when this feature is implemented then we an use these test to verify its working.
5. Add a last phase to the action plan. This phase handles testing by using previously written test in Phase 1 to check whether the issue is resolved and the code is production ready, if the test fails then resolve the error and rerun the tests till it passes. Next is to update or create new documentation (if required) for the latest updates in the codebase. Then we will do version control by creating a new branch with the [ISSUE] name and commiting these changes, in chunks with proper commit messages, only in that branch (and leaving other changes files untouched). Next Step is to lint and typecheck the code (If it returns any errors fix it). Next step is to push with proper explanation of the solution for the issue as description to github and resolve any merge conflicts and make the PR to the [MERGE_BRANCHJ] in "ready to merge" state, And the last step of this phase is to update the [ISSUE] status to "In Review" or something similar and comment the PR in the [ISSUE].
6. Wait for the user to approve the action plan.
7. If there are no other changes mentioned by the user, proceed with the action plan each phase at a time.
8. Once all the phases are complete give the user a detailed report with the errors on tests and a rating of how much the issue is solved out of 100.
9. Clean up worktrees and other bloat from the repo once everything is done.

### NOTE:
- Use only valid, verified sources for documention of frameworks and modules.
- Try to keep the code-base as bloat free as possible.
- If there are any hard decisions to make, prompt the user to do so, dont solve it yourself until [ACCESS] is "FULL".
- Always create a new branch, never create a worktree. Commit the changes to that new branch.
- While programming always follow the rules of type safety so the code dosent break in production. Never use "any" type to anotate a identifier.
- Before commiting always run test and fix any errors or warrning that might show up during the testing
- Implemente the feature before writing the test for the feature. And only write new tests if its is absolutly required or else if possible update exsisting 
- If at anypoint of time you get any doubts as the user to provide more instruction about it and dont hallucinate.