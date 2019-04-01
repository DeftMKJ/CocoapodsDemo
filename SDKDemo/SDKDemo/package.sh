#!/bin/bash
read -p "请输入版本号码: " version

workspaceName="SDKDemo"
targetName="MKJPay"
name="${targetName}-v${version}"
tagertDir=~/Desktop/${name}


if [[ -d ${tagertDir} ]]; then
	echo "已存在--->${tagertDir}"
else
	echo "不存在，创建文件夹--->${tagertDir}"
	mkdir -p ${tagertDir}
fi


x86_64_dir=${tagertDir}/x86_64
arm_64_dir=${tagertDir}/arm64
arm_v7_dir=${tagertDir}/armv7
#echo "${x86_64_dir}---${arm_64_dir}--${arm_v7_dir}"

 xcodebuild clean build -workspace ${workspaceName}.xcworkspace -scheme ${workspaceName} -configuration Debug -arch x86_64 -sdk iphonesimulator12.1 TARGET_BUILD_DIR=${x86_64_dir}
 xcodebuild clean build -workspace ${workspaceName}.xcworkspace -scheme ${workspaceName} -configuration Debug -arch arm64 -sdk iphoneos12.1 TARGET_BUILD_DIR=${arm_64_dir}
 xcodebuild clean build -workspace ${workspaceName}.xcworkspace -scheme ${workspaceName} -configuration Debug -arch armv7 -sdk iphoneos12.1 TARGET_BUILD_DIR=${arm_v7_dir}

 lipo -create "${x86_64_dir}/lib${targetName}.a" "${arm_64_dir}/lib${targetName}.a" "${arm_v7_dir}/lib${targetName}.a" -o "${tagertDir}/MKJPay.a"

 open ${tagertDir}	


