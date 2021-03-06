---
categories:
- 开源
- 感悟
date: 2017-06-06T22:12:03+08:00
description: "如果有人让你解释开源，你该怎么开口？从何说起？你可能会回溯到1976年MIT人工智能实验室方能回答这个问题。那么如果有人问你开源的现状如何？文档齐全吗？女孩的参与多吗？你该怎么回答？幸好，GitHub做了这样一个开放式的调查！供你我评头论足，实在不行，自己再分析一番。"
keywords:
- Open Source
- Culture
- Reading
- News
tags:
- 时事分析
- 开源之道
title: 开源界的现状如何？——2017开源调查
url: ""
---
## 背景介绍

GitHub 作为大名鼎鼎的基于社交的代码托管平台颇受大众欢迎，但是GitHub似乎并没有止步，仍在不断的探索更多的可能性，比如在今年2月14日发布了[开源指南](https://ocselected.github.io/open-source-guide/)项目，并在随后发布了[GitHub开源社区](https://github.com/open-source)，这一连串的事件，明确的说明，伴随着开源力量的崛起，GitHub要在这方面发力。

当然科学的做事，是需要一些背景调查的。于是GitHub联合学术界、开源社区、以及软件界，搞了一次大规模的调查。目标一部分来自于GitHub上的仓库，超过3800个，随机询问了5500个开发者，而在其它的开源社区则是定向的500个调查。

相信根据这些调查，GitHub后面会有一系列的动作，比如帮助开发者更好的维护项目。当然，从开发者的角度来讲，了解下现在开源的现状，不止于项目本身，而是 **方法论、文化、软实力** 等方面的内容，也是对自身视野的提升有很大的帮助的。以下便是这次GitHub调查的详细内容。

## 调查理论依据

科学的去理解一个事件，或者是去做一件事情，要比着急的去看一个结果更加的重要，这也是开源之道的初衷。所以，我们先来看看GitHub的这次调查的依据，以及一些样题的抽查。

### 此次调查的目标

在当今的数字世界，几乎所有的社会和经济都是由开源软件所支撑的。理解那些构建、维护、使用这些项目的人们是至关重要的，任何人都很关心开源的可持续发展，当然主要是因为很多的服务和技术都严重依赖于开源。

这项调查的目的是为提供对开源社区的了解的一系列主题提供高质量的数据，并为今后的研究提供信息：

* **提供高质量的数据** 有助于理解开源是如何工作的，使用那些工具，社区是如何运转的。
* **有助于更多的公众了解和了解现代全球经济所依赖的独特组织的公共物品供应体系。**
* **帮助开源的用户、贡献者、维护者、以及相关利益者相互彼此理解对方**，如动机、经验和需求等方面。

### 设计

本次调查融合了来自学术界、业界以及开源社区，[设计原则](https://github.com/github/open-source-survey/blob/master/design-principles.md)也是经过科学的探讨过的。主要聚焦于以下几个方面：

* 关于消费和贡献的行为和偏好。
* 关于在线空间隐私的态度和做法。
* 寻求并提供技术帮助。
* 消极的经历及其后果。
* 使用和贡献开源的企业政策。
* 开源参与者的人口统计数据，以及技术的历史。

### 实际调查样例

中文版可访问：[2017GitHub 开源调查](https://github.com/github/open-source-survey/blob/master/translations/oss-survey-chinese.txt)（繁体中文版）内容非常的详尽，比如问到性别、年龄区间等。

## 结论

GitHub的这次调查结果数据也是开放的，有兴趣的同学可以自行[下载](http://github-images.s3.amazonaws.com/open-source-survey/data_for_public_release.zip)，并分析。此数据和问题均遵循CC0-1.0许可协议。

### 文档的呼声最高，却通常是最被忽略的那个

Linux和Git的创始人Linus曾经说过一句话：“文档就像性爱，糟糕的时候，不如没有。” 其实，开源项目针对入门者不友好是出了名的难，比如前几日StackOverflow上说成功的帮助超过一百万人推出Vim，好吧。vim自己是怎么搞的？

不完善的文档，言辞含糊的文档，思路不清晰的文档，还不如没有文档！为什么没有人写文档？超过95%开源项目死掉的原因是因为没有文档，你信吗？返回头来证明，似乎颇有些道理。

看了这个调查，你还不为你的项目撰写文档？如果是在本土的话的，麻烦也要提供中文文档！（清晰的英文文档是默认！必须！）

### 负面的活动虽然不频繁，但是却最容易被放大

运营社区，友好，让开发者有归属感，能够切身感受到自己是有价值的、受欢迎的，这是一个成功的社区必须要做到的一点。中国有句古话叫做：“毋以善小而不为”。名誉和文化就是通过每一件小事所积累起来的。

社区撕逼的事情过于常见，Node.js仓库事件、NetBSD分离事件等等不一而足。但是，更多的是，不够友好的结果是，大家都会远离你。其实，摆在本土的困局是“鼠目寸光”，以为全世界只有自己一家在使用开源，主动将所有的贡献拒人于千里之外。

尤其是以公司，没有很好的经历过InnerSource的团队成员，会将非开源文化的内容带到社区中来。比如本土的一些所谓的仅仅只是把代码开放了的“开源项目”。就是最好的例证。

请不要粗鲁的对待他人，冷漠也是粗鲁的一种形式！要友好！不要粗鲁！

### 女性的参与相对非常的少

开源界的男女比例是超级严重失衡，根据调查结果来看，95%的是男性，女性仅占3%。尽管开源界很努力的去尝试改变这一局面，虽然取得了一定的效果，但是显然不够理想。至于原因，多数人称是开源社区不够友好。难道是说话过于直接了？这也是难以了解女性细腻的一面。开源界应该雇佣更多的女性社区经理。

陌生人之间的合作是开源最引人注目的方面之一，所以请： **努力建立一个人人都欢迎参与的社区**。

另外需要说明一点的就是：开源工作有助于人们建立自己的专业信誉。这也是开源的威望来源！让更多的人承认自己，技术思想以及各种技巧。

### 使用和参与开源的绝大多数来自商业公司雇员

无论是Kernel的报告，还是本次调查，都说明了开源的贡献主要还是来自于企业的雇员，大多数人为项目所做的贡献也是ta本来的工作要求。

这其实牵扯的问题还是比较多的，首先是公司管理的绩效考核问题，这是让所有人头痛的问题，为开源所做的贡献，怎么样才能满足公司的考核需求？继而是知识产权问题，如何做到分离？法律问题该如何定义？很多公司依旧是一种混沌状态，模棱两可的，或者干脆就是上个世纪的“丰田”模式，当然，多数还是80年代的工厂模式。

这部分的调查结果，充分显示了大家对于开源的态度，尚需要做更多的工作。

### 人们在选择软件时，默认会优先采用开源

多数人认为开源软件相比于专有软件要更加的安全，但是在稳定性和体验而言，开源软件又相比弱了。但是，即便如此，绝大多数人们还是默认会优先选择开源软件。

这次我们来读一读图：

![](https://raw.githubusercontent.com/OCselected/ttoos/master/content/public/open_source_value.png)

认为软件诸多特性中重要的仍然是稳定性和安全性，这确实是业务的基石。一个优秀的开源项目必须要满足这两个特性，否则就可能被抛弃。

相对以用户体验、兼容性、透明度、可定制性、开销、可信、可复制，均是中规中矩的，没有特别的重要，但有总比没有好！成为了开源项目的加分项，即在功能性满足、稳定、安全之外才考虑的因素。其实大家真的不在乎用户体验，这里的用户其实是开发者本身，他们多多少少都是有着技术崇拜情结的，过于友好和简单，反而让他们怀疑人生。

让人意外的结果是，大家对于开源是否创新，社区支持力度是否强，并不怎么感冒。这是否和开源将近40多年都是在追赶专有技术有关？人们拥有了思维定势？而对于开源已经成为创新的领先位置有所后知后觉？至于支持本身大家却并不在意，这也反映出来开源已经成主流，技术人员的累积量已经到达一定的水平。有了自己搞定的强烈意识。
