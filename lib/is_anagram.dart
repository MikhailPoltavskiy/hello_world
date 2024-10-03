// Заданы две строки. Определить, являются ли они анаграммами,
// то есть одна строка получена из другой перестановкой букв.
//
// Например: строки "AABBCC" и "ABCABC" или "СОЛЬ" и "ЛОСЬ" являются анаграммами.
//
// Для упрощения задачи условимся, что на вход поступают слова в верхнем регистре.

bool isAnagram(String input1, String input2) {
  if (input1.length != input2.length) return false;

  List sortedInput1 = input1.split('')..sort();
  List sortedInput2 = input2.split('')..sort();

  return sortedInput1.join() == sortedInput2.join();
}

void main() {
  print(isAnagram('AABBCC', 'ABCABC')); //true
  print(isAnagram('СОЛЬ', 'ЛОСЬ')); //true

  print(isAnagram('МОРЕ', 'ОРЕХ')); //false
  print(isAnagram('ABC', 'BCD')); //false
}
