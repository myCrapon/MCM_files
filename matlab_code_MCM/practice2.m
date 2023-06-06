clc
clear
fid = fopen('practice1.m','r');
count = 0;
while ~feof(fid)
    line = fgetl(fid);
    if isempty(line) || strncmp(line,'%',1) || ~ischar(line)
        continue
    end
    count = count + 1;
    disp(count)
end
count
disp(count)

fclose(fid);
    %ischar(array):             Determine whether a array is a character array.
    %isempty(array):            Determine whether a array is empty.
    %feof(FileID):              Determine whether a array is ended.
    %fopen(file,permission):    open a file and read it.
    %fgetl(File):               determine a file's one of the row end delete the newline character.
    %strncmp函数，进行字符串比较，相同输出为1，不同输出为0；
    % 三种情况：（single，single）；（single，array）；（array，array）
    %其中的内容均为字符串
    %disp(anything):           Show the content directly.
    %exist():                  Determine whether a file is existive.



