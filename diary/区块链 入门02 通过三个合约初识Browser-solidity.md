区块链 入门02 通过三个合约初识Browser-solidity



昨天部署了第一条私有链，也布置了一个简单的智能合约，但是那个智能合约毕竟太过简单，今天学习Browser-solidity编译器的使用，主要是通过三个简单的合约来了解remix-ide的使用，合约的详细学习还要放在之后。

#### 1.Browser-solidity的安装
> 区块链学堂（11）：Browser-solidity 2–右侧的奥秘
> http://www.ethchinese.com/?p=765

按照这篇文章的步骤可以进行Browser-solidity的本地安装，按照文章步骤操作大概率会遇到如下问题，

 ![image](https://raw.githubusercontent.com/zyzhangyu/pictures/master/%E5%AE%89%E8%A3%85remix-ide%E9%81%87%E5%88%B0%E7%9A%84%E9%97%AE%E9%A2%98.png)
 
 解决的办法就是箭头指向的那里
 ```
 brew install wget
 ```
 
####  2.通过三个简单的合约熟悉Browser-solidity的使用

三个简单的合约其实就是这三篇文章里的代码

>区块链学堂（12）：Browser-solidity 3–数组增删改查的合约
>http://www.ethchinese.com/?p=776

>区块链学堂（13）：Browser-solidity 4–Token代币合约
>http://www.ethchinese.com/?p=784

>区块链学堂（14）：Browser-solidity 5–Token基于账户的代币合约
>http://www.ethchinese.com/?p=790

##### a.如果你认真的使用Browser-solidity调试这三个合约的话，会发现第一个增删改查的合约delete方法是有问题的，我把自己重新打过的三个合约代码上传到了github。

>在这个地址可以下载代码
>https://github.com/zyzhangyu/blockchian-learning/tree/master/code%20store/%E9%80%9A%E8%BF%87%E4%B8%89%E4%B8%AA%E7%AE%80%E5%8D%95%E7%9A%84%E5%90%88%E7%BA%A6%E4%BA%86%E8%A7%A3remixIDE


##### b.这里的代码如果放在今天跑，每一个函数都会给一个警告，这个添加一个public关键字就好了，但是以后要根据合约的实际业务情况，选择适合的关键字。









