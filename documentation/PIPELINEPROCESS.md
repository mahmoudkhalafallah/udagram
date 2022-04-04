**Find the required enviornment variables in the .env.sample file**

### Jobs
- ## Publish
    Only when some change occur on the master branch
- ## Build
    using a docker container:
    - install yarn
    - setup aws cli
    - setup EB cli
    - install backend dependancies
    - build backend code
    - deploy backend code
    - install frontend dependancies
    - build frontend code
    - deploy frontend code