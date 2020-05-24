###
 # @Author: shangyameng
 # @Email: shangyameng@aliyun.com
 # @Date: 2020-05-22 15:22:47
 # @LastEditTime: 2020-05-24 12:41:39
 # @FilePath: /leanote/build_image.sh
### 

printf "\n================ Start build leanote:latest image ================\n\n"
echo '开始下载蚂蚁笔记安装包'
# wget https://nchc.dl.sourceforge.net/project/leanote-bin/2.6.1/leanote-linux-amd64-v2.6.1.bin.tar.gz
echo '下载完毕...开始构建镜像'
docker build -t leanote:latest .
printf "\n================ leanote:latest image build Successful ================\n\n"
