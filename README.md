<div align="center">
  <img src="https://github.com/LumosNet/Lumos/blob/master/img/Lumos.png">
</div>

# Lumos Demos
## 简介

[Lumos](https://gitee.com/lumos-net/lumos)框架的示例demo存放仓库，您可以在这里找到lumos提供的所有demo

## Demos

名                    | 博客链接                                                                                                                                                                           | 数据集
----------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------
**LeNet5**                 | [<img src="https://img.shields.io/badge/Lumos-LeNet5-brightgreen" />](https://github.com/LumosNet/Lumos-Build/raw/main/v0.1.0/lumos_0.1.0_linux_cpu.run)           | [MNIST](https://pan.baidu.com/s/1Qm7HRy0oVx-eiVl0jBxC5A?pwd=6bxh)
**MNIST**                 | [<img src="https://img.shields.io/badge/Lumos-Mnist-brightgreen" />](https://github.com/LumosNet/Lumos-Build/raw/main/v0.1.0/lumos_0.1.0_linux_gpu.run)           | [MNIST](https://pan.baidu.com/s/1Qm7HRy0oVx-eiVl0jBxC5A?pwd=6bxh)
**XOR**                 | [<img src="https://img.shields.io/badge/Lumos-Xor-brightgreen" />](https://github.com/LumosNet/Lumos-Build/raw/main/v0.1.0/lumos_0.1.0_linux_gpu.run)           | [XOR](https://pan.baidu.com/s/1KMGSVsDKPFy7U9Wnfxd7yw?pwd=ec2o)

## 运行Demos
首先您需要安装lumos框架，最新安装问价如下

版本                    | 链接                                                                                                                                                                           | Coretype
----------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------
**v0.1**                 | [<img src="https://img.shields.io/badge/Lumos-CPU-brightgreen" />](https://github.com/LumosNet/Lumos-Build/raw/main/v0.1.0/lumos_0.1.0_linux_cpu.run)           | CPU
**v0.1**                 | [<img src="https://img.shields.io/badge/Lumos-GPU-brightgreen" />](https://github.com/LumosNet/Lumos-Build/raw/main/v0.1.0/lumos_0.1.0_linux_gpu.run)           | GPU

Lumos安装完成后，clone当前demos仓库
```shell
git clone git@github.com:LumosNet/Lumos-Demos.git
```
下载对应demo数据集，在Lumos-Demos根目录下新建data文件夹，并将您下载好的数据集放入data文件夹中

我们为您提供了编译的Makefile，您只需使用make命令编译即可

编译完成后使用如下指令查看相关可操作内容

```
./lumos.exe --help
```

## XOR
以XOR模型为例，当您编译完成后，使用如下命令
```
./lumos.exe -d xor
```
调用XOR模型开始训练和测试
Lumos会打印如下网络结构

```
[Lumos]         max   5  Layers
Im2col          Layer    :    [flag=1]
Connect         Layer    :    [output=   4, bias=1, active=relu]
Connect         Layer    :    [output=   2, bias=1, active=relu]
Connect         Layer    :    [output=   1, bias=1, active=relu]
Mse             Layer    :    [output=   1]
```

经过训练和测试您将看到最终结果如下

```
Session Start To Detect Test Cases
Test Data Path: ./src/demo/xor/data/00.png
Label:   0
Truth:   0.000000
Predict: 0.189420
Loss:    0.035880

Test Data Path: ./src/demo/xor/data/01.png
Label:   1
Truth:   1.000000
Predict: 0.842445
Loss:    0.024823

Test Data Path: ./src/demo/xor/data/11.png
Label:   0
Truth:   0.000000
Predict: 0.135885
Loss:    0.018465

Test Data Path: ./src/demo/xor/data/10.png
Label:   1
Truth:   1.000000
Predict: 0.866493
Loss:    0.017824
```

## 联系我们：

####     邮箱：yuzhuoandlb@foxmail.com
