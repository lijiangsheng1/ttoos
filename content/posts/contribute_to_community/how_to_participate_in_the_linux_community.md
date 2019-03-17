---
categories:
- 开源
- 感悟
date: 2019-03-09T17:43:34+08:00
description: "我一再强调社区才是开源的真正奥秘所在，赢得社区就赢得开源，但想要赢得社区，需参与到社区中来，去年我们介绍了广义的参与社区篇，今年就具体的开源项目社区来做文章，当仁不让，Linux 作为迄今为止全球最大的开源项目，是应该介绍和学习的。"
keywords:
- Open Source
- Culture
- Reading
- News
tags:
- 每周精选
- 开源之道
title: "如何参与到 Linux 社区中来"
url: ""
---

## 内核开发流程指南

本文档旨在帮助开发者（以及他们的经理们）如何以最小的代价参与到内核的开发社区中来，试图解释Linux社区是如何运转的，进而告诉那些对Linux内核开发（或者，更深入的说，普遍意义的自由软件开发）不熟悉的人们如何去做，虽然这里有一些技术资料，但这是一个针对流程方面的讨论，不需要深入了解内核编程就可以理解，这点请毋须担心。

### 内容摘要

本节剩余部分覆盖的内容包括：内核开发流程、开发人员及其雇主可能遇到的各种坑。解释内核代码为什么应该合并到官方（“主线”）中的各种原因: 自动可用到用户、多种形式的社区支持、以及有能力影响社区开发的方向等。为Linux内核做代码贡献还必须承认 GPL兼容的许可协议。

第二节介绍开发流程、内核发布周期、以及合并窗口的机制。涵盖了补丁开发，审查和合并周期中的各个阶段。有一些关于工具和邮件列表的讨论。我们鼓励希望开始使用内核开发的开发人员将bug作为初步练习进行跟踪和修复。

第三节则为大家介绍项目早期的计划，重点在于尽快的让开发者参与到开发社区中来。

第四节是关于编码流程的，讨论人们经常遇到的陷阱。介绍了补丁的一些要求，以及一些有助于确保正确生成内核补丁的工具。

第五节讨论发布补丁以供审核的过程。要得到开发社区的认真对待，必须对补丁进行适当的格式化和描述，并且必须将它们发送到正确的地方，遵循本节中的建议，将有助于确保开发者的补丁能够被最快的接收。

第六节覆盖了发布了补丁之后发生的事情，因为工作并不是说发完补丁就万事大吉了。和审核代码的开发者一起是开发流程中相当重要的一部分，本节提供了许多关于如何在这个重要阶段避免问题的技巧。千万要谨记，代码即使是合并到主干，也并不表示所有的工作已经完成。

第七节则介绍了一些“高级”的主题，使用git管理补丁并查看其他人发布的补丁。

第八届介绍了内核开发的更多关于指向源的文档信息。

### 本文档是关于什么的

Linux 内核，一款代码超过6百万行、拥有1000多活跃贡献者、世上现有的最大、最活跃的自由软件项目。Linux 自从1991年诞生以来，该内核已发展成为同类中最佳的操作系统核心，它不仅运行在袖珍数字音乐播放器、台式机、现有最大的超级计算机乃至介于两者之间的所有类型的系统上。它是一种强大，高效，可扩展的解决方案，几乎能够适用于所有计算机体系架构。

伴随着 Linux 内核项目的快速增长，相应的希望参与到其中来的开发人员（和公司）的数量也在增长。硬件供应商希望确保 Linux 能够得到很好地支持他们的产品，从而让这些产品对Linux用户更具吸引力。而嵌入式供应商，则将Linux作为组件整合到他们的产品中，希望Linux尽可能满足系统当前的任务。而Linux发行版厂商以及其它的软件供应商则更加希望Linux在可靠性、高性能、灵活性方面有突出的能力。最后是最终用户，也同样希望对Linux进行适当的调整，进而满足自己的独特需求。

Linux最引人注目的特性之一就是让所有的开发人员都可以访问它;任何具备相应技能的人都可以去改进Linux，并尝试影响其未来的发展方向。那些专有的产品是无法提供这样的开放性的，这是自由软件的一个独特特性。其实，话说回来，Linux 内核相比于其它绝大多数的自由软件，更具开放性。最好的证据莫过于：每三个月的内核开发周期，要牵涉到超过1000多名开发人员，他们分别来自100多家不同的公司（当然也有的根本就没有公司）。

在内核开发社区中工作其实并不特别的困难，但是，话虽然这么说，仍然有很多的潜在的贡献者认为在创始参与的时候觉得困难。这么多年，内核社区已经相对成熟了，并发展出了自己独特的操作方式，从而能够在每天变更数千行代码的环境中顺利运行（并生成高质量的产品）。因此，Linux内核开发过程与专有开发方法有很大不同，这并不奇怪。

内核的开发过程可能对新人来说有些陌生，有时还会带着一丝的恐慌，这都算正常现象，尽管如此，内核已经用事实证明，这些都不是事。一个不了解内核社区的方式的开发人员（或者更糟糕的是，试图蔑视或逃避）将会在整个过程中，产生令人沮丧的体验。但是一定要明白一个道理：开发社区虽然对于愿意学习的人有莫大的帮助，但是也就到此为止了，对于那些不愿意花时间认真倾听或不关心开发过程的人来说，内核社区只能表示惋惜。

希望阅读本文档的人能够避免那些让人痛苦不堪的经历。本文包含很多的处理细节，如果可能的话，还是要及时的去亲子体验一把。内核开发社区一直缺人，尤其是那些能够帮助内核变得更好的开发者；以下内容可以帮助到你（又或者是为你工作的开发者），加入到内核社区中来。

### 感谢

本文档由Jonathan Corbet 所撰写，其邮箱地址：[corbet@lwn.net](mailto:corbet@lwn.net)。以及James Berry、Alex Chiang、Roland Dreier、Randy Dunlap、Jake Edge、Jiri Kosina、Matt Mackall、Amanda McPherson、Andrew Morton、以及 Jochen Voß 等的改进。

该文档的撰写得到了Linux基金会的大力支持，尤其要感谢 Amanda McPherson，是他看到了这项工作的价值，并让这一切变为现实。

### 将代码并入主干的重要性

总有一些公司和开发人员偶尔会问起：为什么他们应该学习如何使用内核社区并将他们的代码放入主干（“主干”即是有Linus Torvalds所维护，也是很多linux分发版的基础）。从短期来看，为内核上游社区贡献代码看起来有点得不偿失，似乎是保持现有的分支就可以了，且可以直接支持用户。而事实上，时间稍长即可证明，基于现有的分支（“脱离主干”）会付出很大的代价。

那么我们就来说说脱离主干（out-of-tree)的代价是什么，以下列表从内核开发流程上的一小部分，其中大部分内容将在本文档后面详细讨论。考虑如下情形：

* 合并到内核主干的代码是供所有 Linux 用户使用。它将自动出现在使用它的所有发行版中。不需要驱动程序磁盘，下载或支持多个版本的多个发行版的麻烦;这一切都适用于开发人员和用户。换句话说，并入主干解决了大部分的分发、支持问题。
* 虽然内核开发人员在努力的维护和用户空间接口，希望保持稳定，但是事实上，内核内部的 API 仍在不断的变化。缺乏稳定的内部界面是一个深思熟虑的设计决策;它允许随时进行基本改进，并产生更高质量的代码。基于该策略的一个结果就是，那些脱离主干的分支如果要使用新的内核，就要不断的从主干中获取这些代码，即需要不断的进行维护，而这需要大量的工作才能保持代码正常的工作。

相反，在主干中的代码就没有这些额外的工作，如果有 API 的变更，开发者们就会立即在主干中进行修复和处理。所以，合并到主干的代码在维护成本上具有显著的优势。

* 除此之外，内核中的代码通常会被其他开发人员改进。有的时候，用户社区和客户所改进的产品，往往惊喜不断。
*


### 许可证

Linux内核允许开发者以各式各样的许可证方式下来贡献代码，但是所有这些代码必须与GNU通用公共许可证（GPLv2）的版本2兼容，后者是覆盖内核发布的许可协议。

## 开发流程是如何工作的

### 宏观视野

内核开发人员使用松散的基于时间的发布过程，每两到三个月发布一次新的主要内核版本。最近的发布版本如下所示：

|  版本号   |     日期       |
| -------------  | ------------- |
|2.6.26|July 13, 2008|
|2.6.25   | April 16, 2008  |
|2.6.24   |January 24, 2008   |
|2.6.23   |October 9, 2007   |
|2.6.22   | July 8, 2007  |
|2.6.21   |April 25, 2007   |
|2.6.20   |February 7, 2007   |


### 补丁的生命周期


### 补丁是如何被接受的

### 分支树

### 工具篇

### 邮件列表


### 内核开发入门

## 早期规划

### 明确问题

### 尽早讨论

### 你都和谁聊过

### 什么时候提交？

### 获得正式接纳

## 获得代码相关的权利

### 陷阱

### 代码检查工具

### 文档

### 内部API 变更

## 提交补丁

### 什么时候提交？

### 在制作补丁之前

### 准备补丁

### 补丁格式

### 发送补丁

## 获得通过

### 审核工作

### 接下来干什么

### 其他可能发生的事情

## 高级主题

### 使用git来管理补丁

### 审核补丁

## 更多帮助内容

## 总结