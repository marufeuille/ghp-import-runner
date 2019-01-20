# ghp-import-runner
## What's this
Maybe... usualy, if you are using github pages and static site generator(like pelican), structure of your branch is shown bellow.

- master brunch : including content
- another branch(ex: source branch): including source code 

In this case, there are very easy tool named [ghp-import](https://github.com/davisp/ghp-import).
Use this tool, we publish contents almost bellow steps.

```
git clone https://github.com/your-github-pages-repo ./repo
cd repo
ghp-import -b master -m "comment" YOUR_OUTPUT_DIR
git push origin master
```

very cool!!

but I am very laziness.

I don't want to type above commands, every time.

Scriptlize is one way to solve this.
But I use some devices, not one.

I don't want to create environment for each device.

(like installing python3, git, ghp-import)

So, I created Dockerlized ghp-import tool.


## How to use this
### Build

```
docker build -t YOUR_TAG_NAME .
```

### Use

```
docker run --name pusher -e "GIT_REPO=git@github.com:YOUR_ACCOUT/YOUR_REPOS" -e SOURCE_BRANCH=YOUR_SOURCECODE_BRANCH -e OUTPUT_DIR=YOUR_DIR_THAT_CONTAINS_YOUR_OUTPUTS -v /path/to/your/secretkey/that/you/registered/to/github.com:/root/.ssh/id_rsa --rm  YOUR_TAG_NAME
```

that's all
