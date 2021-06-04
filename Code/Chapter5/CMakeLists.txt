cmake_minimum_required(VERSION 3.19)
project(Chapter5)

set(CMAKE_CXX_STANDARD 17)

add_executable(Chapter5 main.cpp)

# 遍历项目根目录下所有的 .cpp 文件
file (GLOB_RECURSE files *.cpp)
foreach (file ${files})
    string(REGEX REPLACE ".+/(.+)\\..*" "\\1" exe ${file})
    add_executable (${exe} ${file} exericse6_4.cpp exericse6_4.h)
    message (\ \ \ \ --\ src/${exe}.cpp\ will\ be\ compiled\ to\ bin/${exe})
endforeach ()