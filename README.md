# Seq-copy
### perl pet-project

1) seq.pl - Код на perl
2) tests - Список тестов с корректными input и output. Код из файла seq.pl проверен на этих тестах.

### Необходимо пофиксить:
* На данный момент в программе: first, last, step. **В man seq: параметры должны идти в след. порядке: first, step, last.**
* Написать короче обработку условий. **При обработке неудачного ввода, использовать постфиксный оператор if для die**
* Вместе for лучше использовать foreach для обхода списка, **for нужен зачастую только для каких-то математических вычислений**
* Переименовать переменные left, right
* Указать в комментариях, почему я использую какие-то константы. **Либо в названии переменной указать, почему переменная равна такому числу**
* Исправить for с $step>=1
* В ветке из if'ов, если обработаны все случаи, то стоит последним оставить *else*, **но если очень хочется пометить, какой случай обработает *else*, то можно в комментариях его указать.**

### Полезные навыки, которые я вынес из этого проекта:
1) Более пристально начал относиться к тестированию
2) Код нужно писать и для компилятора, и для **разработчика**
3) Познакомился с синтаксисом perl
4) Пришло понимание того, что чаще стоит указывать комментарии для объяснения того или иного кода
5) Если есть эталонное решение, то стоит сравнивать его работу с разрабатываемым алгоритмом