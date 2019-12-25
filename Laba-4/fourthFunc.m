str='23 марта 2002 0.36 0.32 0.28 0.25';
disp('Оригинальная строка =');
disp([' "' str '"']); disp(' ');
spacePoz = findstr(str, ' ');
disp('Длина строки без пробелов =');
disp(length(str) - length(findstr(str, ' ')));

word1 = str(1:spacePoz(1)-1);
word2 = str(spacePoz(end)+1:end);
newStr = strcat(word2,str(spacePoz(1):spacePoz(end)));
strRevert = strcat (newStr,[' ' word1])

i = 0;
numStr = str;
while i < length(numStr)
    i = i + 1;
    switch numStr(i)
        case '0'
            numStr = [numStr(1:i-1) 'ноль' numStr(i+1:end)];
        case '1'
            numStr = [numStr(1:i-1) 'один' numStr(i+1:end)];
        case '2'
            numStr = [numStr(1:i-1) 'два' numStr(i+1:end)];
        case '3'
            numStr = [numStr(1:i-1) 'три' numStr(i+1:end)];
        case '4'
            numStr = [numStr(1:i-1) 'четыри' numStr(i+1:end)];
        case '5'
            numStr = [numStr(1:i-1) 'пять' numStr(i+1:end)];
        case '6'
            numStr = [numStr(1:i-1) 'шесть' numStr(i+1:end)];
        case '7'
            numStr = [numStr(1:i-1) 'семь' numStr(i+1:end)];
        case '8'
            numStr = [numStr(1:i-1) 'восемь' numStr(i+1:end)];
        case '9'
            numStr = [numStr(1:i-1) 'девять' numStr(i+1:end)];
    end
end
numStr

i = 1;
numArray = 0;
[a2, tf] = str2num(str(1:spacePoz(1)-1));
if tf
    numArray(i) = a2;
    i = i + 1;
end
for j = 1:length(spacePoz)-1
    [a2, tf] = str2num(str(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        numArray(i) = a2;
        i = i + 1;
    end
end
[a2, tf] = str2num(str(spacePoz(end)+1:end));
if tf
    numArray(i) = a2;
    i = i + 1;
end
numArray

f=fopen('in2.txt','wt');
fprintf(f,'23 марта 2002 0.36 0.32 0.28 0.25\n1.399 2.001 9.921 3.21 0.12\n0.129 1.865 8.341 9.33 8.01\n9.136 8.401 7.133 3.12 3.22');
fclose(f);
disp('in2.txt файл сгенирирован.'); disp(' ');

f=fopen('in2.txt','rt');
fileStr=fgetl(f); %Строка 1
fileVector1 = 0; fileVector2 = 0;
fileMatrix1 = 0; fileMatrix2 = 0;
i1 = 1; i2 = 1;
[a2, tf] = str2num(fileStr(1:spacePoz(1)-1));
if tf
    if (a2>1)
        fileVector1(i1) = a2;
        i1 = i1 + 1;
    else
        fileVector2(i2) = a2;
        i2 = i2 + 1;
    end
end
for j = 1:length(spacePoz)-1
    [a2, tf] = str2num(fileStr(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        if (a2>1)
            fileVector1(i1) = a2;
            i1 = i1 + 1;
        else
            fileVector2(i2) = a2;
            i2 = i2 + 1;
        end
    end
end
[a2, tf] = str2num(fileStr(spacePoz(end)+1:end));
if tf
    if (a2>1)
        fileVector1(i1) = a2;
        i1 = i1 + 1;
    else
        fileVector2(i2) = a2;
        i2 = i2 + 1;
    end
end
fileStr=fgetl(f); %Строка 2
spacePoz = findstr(fileStr, ' ');
i1 = 1; i2 = 1;
[a2, tf] = str2num(fileStr(1:spacePoz(1)-1));
if tf
    if (mod(a2,0.01) == 0)
        fileMatrix2(1,i1) = a2;
        i1 = i1 + 1;
    else
        fileMatrix1(1,i2) = a2;
        i2 = i2 + 1;
    end
end
for j = 1:length(spacePoz)-1
    [a2, tf] = str2num(fileStr(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        if (mod(a2,0.01) == 0)
            fileMatrix2(1,i1) = a2;
            i1 = i1 + 1;
        else
            fileMatrix1(1,i2) = a2;
            i2 = i2 + 1;
        end
    end
end
[a2, tf] = str2num(fileStr(spacePoz(end)+1:end));
if tf
    if (mod(a2,0.01) == 0)
        fileMatrix2(1,i1) = a2;
        i1 = i1 + 1;
    else
        fileMatrix1(1,i2) = a2;
        i2 = i2 + 1;
    end
end
fileStr=fgetl(f); %Строка 3
spacePoz = findstr(fileStr, ' ');
i1 = 1; i2 = 1;
[a2, tf] = str2num(fileStr(1:spacePoz(1)-1));
if tf
    if (mod(a2,0.01) == 0)
        fileMatrix2(2,i1) = a2;
        i1 = i1 + 1;
    else
        fileMatrix1(2,i2) = a2;
        i2 = i2 + 1;
    end
end
for j = 1:length(spacePoz)-1
    [a2, tf] = str2num(fileStr(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        if (mod(a2,0.01) == 0)
            fileMatrix2(2,i1) = a2;
            i1 = i1 + 1;
        else
            fileMatrix1(2,i2) = a2;
            i2 = i2 + 1;
        end
    end
end
[a2, tf] = str2num(fileStr(spacePoz(end)+1:end));
if tf
    if (mod(a2,0.01) == 0)
        fileMatrix2(2,i1) = a2;
        i1 = i1 + 1;
    else
        fileMatrix1(2,i2) = a2;
        i2 = i2 + 1;
    end
end
fileStr=fgetl(f); %Строка 4
spacePoz = findstr(fileStr, ' ');
i1 = 1; i2 = 1;
[a2, tf] = str2num(fileStr(1:spacePoz(1)-1));
if tf
    if (mod(a2,0.01) == 0)
        fileMatrix2(3,i1) = a2;
        i1 = i1 + 1;
    else
        fileMatrix1(3,i2) = a2;
        i2 = i2 + 1;
    end
end
for j = 1:length(spacePoz)-1
    [a2, tf] = str2num(fileStr(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        if (mod(a2,0.01) == 0)
            fileMatrix2(3,i1) = a2;
            i1 = i1 + 1;
        else
            fileMatrix1(3,i2) = a2;
            i2 = i2 + 1;
        end
    end
end
[a2, tf] = str2num(fileStr(spacePoz(end)+1:end));
if tf
    if (mod(a2,0.01) == 0)
        fileMatrix2(3,i1) = a2;
        i1 = i1 + 1;
    else
        fileMatrix1(3,i2) = a2;
        i2 = i2 + 1;
    end
end
fileVector1
fileMatrix1
fileMatrix2
fileMatrix3
fclose(f);

FileHtml=fopen(['lab3_2.html'],'wt');

fprintf(FileHtml,['<!doctype html>\n']);
fprintf(FileHtml,['<HTML lang="ru">\n']);
fprintf(FileHtml,['<head>\n']);
fprintf(FileHtml,['<title>Отчет по лабораторной работе \n']);
fprintf(FileHtml,['</title>\n']);
fprintf(FileHtml,['<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">']);
fprintf(FileHtml,['<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1251">\n']);
fprintf(FileHtml,['<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css">']);
fprintf(FileHtml,['</head>\n']);
fprintf(FileHtml,['<body>\n']);
fprintf(FileHtml,['<div class="container text-center">\n']);
fprintf(FileHtml,['<H3>ОТЧЕТ<br>по лабораторной работе</h3>\n']);
fprintf(FileHtml,['<br><br><h5>Исходные данные</h5>\n']);
fprintf(FileHtml,'y = sin(2*x)<br> x - вектор от 1 до 5 с шагом 0.01');
h1=figure('Name','var2.svg y = sin(2*x)');
hold on
x = [1:0.01:5];
y = sin(2*x);
plot(x,y, '-k');
hold off;
xlabel('X ось');
ylabel('Y ось');
saveas(h1,'var2', 'svg');
fprintf(FileHtml,['<br><br><div class="font-italic"> График </div>\n']);
fprintf(FileHtml,['<a href="var2.svg" class="rounded mx-auto d-block img-fluid">']);
fprintf(FileHtml,['<br><img src="var2.svg" class="img-fluid" >' '\n']);
fprintf(FileHtml,['</a>\n']);
fprintf(FileHtml,['</div>\n']);
fprintf(FileHtml,['</body>\n']);
fprintf(FileHtml,['</HTML>\n']);
fclose(FileHtml);
disp('HTML отчет сгенирирован.');
