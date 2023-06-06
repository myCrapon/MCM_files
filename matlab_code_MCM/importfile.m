function matlab = importfile(workbookFile, sheetName, dataLines)
%IMPORTFILE 导入电子表格中的数据
%  MATLAB = IMPORTFILE(FILE) 读取名为 FILE 的 Microsoft Excel
%  电子表格文件的第一张工作表中的数据。  以表形式返回数据。
%
%  MATLAB = IMPORTFILE(FILE, SHEET) 从指定的工作表中读取。
%
%  MATLAB = IMPORTFILE(FILE, SHEET,
%  DATALINES)按指定的行间隔读取指定工作表中的数据。对于不连续的行间隔，请将 DATALINES 指定为正整数标量或 N×2
%  正整数标量数组。
%
%  示例:
%  matlab = importfile("E:\【A堆（临时文件）】\matlab.xlsx", "Sheet1", [1, 1]);
%
%  另请参阅 READTABLE。
%
% 由 MATLAB 于 2023-02-18 14:34:06 自动生成

%% 输入处理

% 如果未指定工作表，则将读取第一张工作表
if nargin == 1 || isempty(sheetName)
    sheetName = 1;
end

% 如果未指定行的起点和终点，则会定义默认值。
if nargin <= 2
    dataLines = [1, 1];
end

%% 设置导入选项并导入数据
opts = spreadsheetImportOptions("NumVariables", 1);

% 指定工作表和范围
opts.Sheet = sheetName;
opts.DataRange = "A" + dataLines(1, 1) + ":A" + dataLines(1, 2);

% 指定列名称和类型
opts.VariableNames = "VarName1";
opts.VariableTypes = "datetime";

% 指定变量属性
opts = setvaropts(opts, "VarName1", "InputFormat", "");

% 导入数据
matlab = readtable(workbookFile, opts, "UseExcel", false);

for idx = 2:size(dataLines, 1)
    opts.DataRange = "A" + dataLines(idx, 1) + ":A" + dataLines(idx, 2);
    tb = readtable(workbookFile, opts, "UseExcel", false);
    matlab = [matlab; tb]; %#ok<AGROW>
end

end