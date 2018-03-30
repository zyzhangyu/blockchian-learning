区块链 入门01  Geth安装到创建自己的第一条私有链


==记录自己的区块链学习==


在网上查了很多资料，发现有个人把这个写成了系列，推荐给大家，我自己的geth安装和部署自己的第一条私链也是按照这个完成的，过程中遇到的问题，以及如何解决的，我都会详细说明。


具体操作步骤网上很多人都写了，大家点进下面的链接，按步骤操作即可。


1. Geth 安装
> 区块链学堂（5）：Geth 安装 http://www.ethchinese.com/?p=634

2. Geth 搭建私有网络
> 区块链学堂（7）：Geth 搭建私有网络-实战
> http://www.ethchinese.com/?p=659



    ++按照上面链接操作会遇到创建 **创世区块** 失败的问题，请把文章里的json内容替换为附录1的json内容。++ 

3. 创建私有链，以及链上操作（挖矿，转账等）
> 区块链学堂（8）：Geth 基本命令
> http://www.ethchinese.com/?p=673
> 
> 区块链学堂（9）：Geth 基本命令2
> http://www.ethchinese.com/?p=681

    
    创建私有链进行挖矿的过程中大概率遇到以太坊执行miner.start返回null，解决方法见附录6。
    
    
---


###### 附录1，genesis.json


```json
{
"nonce": "0x0000000000000042",
"timestamp": "0x0",
"parentHash": "0x0000000000000000000000000000000000000000000000000000000000000000",
"extraData": "0x",
"gasLimit": "0x8000000",
"difficulty": "0x400",
"config": {},
"mixhash": "0x0000000000000000000000000000000000000000000000000000000000000000",
"coinbase": "0x3333333333333333333333333333333333333333", "alloc": { }
}
```

###### 附录2，延伸阅读


```
区块链学堂（5）：Geth 安装
http://www.ethchinese.com/?p=634

区块链学堂（6）：以太坊生产网络/测试网络/私有网络
http://www.ethchinese.com/?p=640

区块链学堂（7）：Geth 搭建私有网络-实战
http://www.ethchinese.com/?p=659

区块链学堂（8）：Geth 基本命令
http://www.ethchinese.com/?p=673

区块链学堂（9）：Geth 基本命令2
http://www.ethchinese.com/?p=681
```




###### 附录3，小贴士

```
//查看geth版本
geth version  

//切换回命令行，执行命令，制造创世区块
geth --datadir "./" init genesis.json


//执行一条最简单的geth命令，来创建自己的私有链条
//console 2>> geth.log 
//代表将控制台的一部分输出，输出到文件geth.log上去
–datadir 代表文件夹地址，
–nodiscover 代表该链条不希望被其他节点发现，
-console >> geth.log 代表将控制台输出到文件geth.log中去

geth --datadir "./" --nodiscover console 2>>geth.log


//私有链的全部账户
eth.accounts

//该命令将创造一个新的用户，该用户的密码是xxx. 
//当然用户也可以将xxx 改为123,或者123456，或者任意密码
personal.newAccount("xxx")


//打开另一个终端，找到geth.log的所在目录，执行命令从而持续的输出以太坊的日志
tail -f geth.log



//查看主账户的以太币数量
acc0 = eth.accounts[0]
eth.getBalance(acc0)



//如何获取账户的以太币余额
eth.getBalance("0xbcf5b841303bc08026ce2d3b8f83498ffe42c12f")



//如何在两个账户之间进行以太币转换
> acc0 = eth.accounts[0]
"0xbcf5b841303bc08026ce2d3b8f83498ffe42c12f"
> acc1 = eth.accounts[1]
"0xb8b12a801b610176935a15321f77b48dd5c0c448"
> amount = web3.toWei(0.01)
"10000000000000000"

//从acc0转移到acc1中()
> eth.sendTransaction({from: acc0, to: acc1, value: amount})


//转账之前大概率会有自动锁定，需要解锁
 personal.unlockAccount(acc0)   后输入密码，然后需要重新执行上面的转账命令
 

//开始挖矿 & 停止挖矿
> miner.start() //开始挖矿
> miner.stop() //停止挖矿




```





###### 附录4，挖矿
> 
> 1. 挖矿挖到的ether币会默认保在第一个账户中，即eth.acccounts[0]中。
> 
> 2. 挖矿是执行智能合约的基础。如果停止挖矿的话，不仅以太币会停止生成，所有智能合约的调用也会不起作用。
> 
> 3. 如果真的要停止挖矿，可以执行命令miner.stop()来停止挖矿
> 
> 4. 按上面的命令，应该是可以实现以太坊挖矿的。如果不行的话，有可能就是之前有存在的链，此时应该删除之前的数据。在Mac下即删除~/.ethash文件夹和里面的文件即可



###### 附录5，一个以太币各单位之间的转换工具
>http://ether.fund/tool/converter




###### 附录6，以太坊执行miner.start返回null的解决方法
http://mp.weixin.qq.com/s/AB9vj1EzOgWT7JyryfQhDg
https://blog.csdn.net/wo541075754/article/details/79260040


