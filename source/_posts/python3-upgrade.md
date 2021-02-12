---
title: 切到python3开发
date: 2019-06-17 05:15:03
updated: 2020-12-06 23:10:00
tags: python
---
python2切换python3的不完整笔记。

## 基础信息

使用list进行包装, 一切皆迭代器
 - zip 聚会后返回一个元组的迭代器;
 - range (替换xrange)返回迭代器;
 - 字典系列 dict.items() 替换掉 dict.iteritems(); dict.keys(), dict.values() 类似；
 - 其他函数，map, filter


语句转换为函数
 - print()
 - exec()


类型转换
 - basestring, unicode 转换为str
 - str 字符串默认使用 Unicode; 字节序列字面量用b或B前缀构造(b"\127a")
 - long 转换为int, 使用sys.maxsize表示最大数

默认编码 utf8
- 不需要文件头部添加 #coding=utf-8 
- encode() 和 decode 默认使用 UTF8 编码

高级解包
```
a, b, *rest = range(10)
# reset: [2, 3, 4, 5, 6, 7, 8, 9]
```

其他
nonlocal 关键字用于声明非局部变量
yield from 关键字后直接跟一个可迭代对象
as 关键字捕获异常信息(`except E as e`)


