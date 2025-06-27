<font style="color:#ff0000;">     </font>目前开发板的上电时序是：5V经过自恢复保险丝、防反接二极管、过压保护电路，首先VDD_5V、VDD_3V3上电，因此核心板先上电。核心板上电后通过CPU的PMIC_ON_REQ引脚控制底板GEN_5V和GEN_3V3上电；CPU的PERI_PWREN控制VPERI_3V3上电，并通过U11转为NVCC_CSI给摄像头部分供电。（<font style="color:#ff0000;">注：具体控制原理见3.5.1章节</font>）

精简电路参考如下：

![](https://cdn.nlark.com/yuque/0/2025/png/50461850/1742524080905-00d21745-6296-4ef8-a59a-9f4583b7dee8.png)

**注：**

**1、如果客户供电稳定则可去掉OVP保护电路；**

**2、核心板i.MX6UL-CSI部分的电压（NVCC_CSI）由底板供电。客户可以根据自己使用的外设的引脚电平来进行配置。例如外接2.8V的摄像头，则需要使用XC6219B282MR芯片转成2.8V给NVCC_CSI供电；如果所接外设引脚电平为3.3V，则不需要使用XC6219B282MR芯片，直接由GEN_3V3给NVCC_CSI供电；**

**3、选择启动配置的拨码开关部分由GEN_3V3供电。**

