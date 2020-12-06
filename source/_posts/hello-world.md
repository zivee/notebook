---
title: Hexo搭建博客
date: 2019-05-28 03:10:04
updated: 2019-05-28 03:10:04
tags: Hexo
---
## Install Hexo

### node.js安装
```bash
$ curl https://raw.github.com/creationix/nvm/master/install.sh | sh
$ nvm install stable
```
Windows 用户下载 [安装程序](http://nodejs.org/) 来安装

### hexo客户端安装
 cnpm (gzip 压缩支持) 命令行工具代替默认的 npm,使用[淘宝 NPM 镜像](https://npm.taobao.org/)

```bash
$ npm install -g cnpm --registry=https://registry.npm.taobao.org
$ cnpm install -g hexo-cli
```

### 初始化建站

``` bash
$ hexo init <folder>
```
或者使用备份，当前用GitHub举例master为站点静态数据，源码备份在分支 _sources_
``` bash
git clone git@github.com:xxx/<folder>.git
git checkout sources
```

``` bash
$ cd <folder>
$ cnpm install
```

注意： 如需要上传特殊文件到站点根目录如*CNAME* 或 *favicon.ico*等文件可预先放入到**source**目录，备份时应包含以下文件和文件夹；
```
.
├── _config.yml
├── package.json
├── .gitignore
├── scaffolds
├── source
|   ├── _drafts
|   └── _posts
└── themes
```

github搭建hexo站点参考
[手册](https://hexo.io/zh-cn/docs/generating)
Check [documentation](https://hexo.io/zh-cn/docs/) for more info. If you get any problems when using Hexo, you can find the answer in [troubleshooting](https://hexo.io/zh-cn/docs/troubleshooting.html) or you can ask me on [GitHub](https://github.com/hexojs/hexo/issues).

## Quick Start

### Create a new post

``` bash
$ hexo new "My New Post"
```

More info: [Writing](https://hexo.io/zh-cn/docs/writing.html)

### Run server

``` bash
$ hexo server
```

More info: [Server](https://hexo.io/zh-cn/docs/server.html)

### Generate static files

``` bash
$ hexo generate
```

More info: [Generating](https://hexo.io/zh-cn/docs/generating.html)

### Deploy to remote sites

``` bash
$ hexo deploy
```

More info: [Deployment](https://hexo.io/zh-cn/docs/deployment.html)
