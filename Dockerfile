FROM node:12
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/ktrany/pbftTestProject.git

RUN cd pbftTestProject && \
    git checkout $git_branch && \
    git pull && \
    yarn install
WORKDIR /pbftTestProject
CMD ["npm", "test"]
