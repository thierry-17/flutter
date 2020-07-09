String scream(int length) => "A${'a' * length}h!";

void main() {
	final values = [1, 2, 3, 5, 10, 50];

	// 명령형 코드
	/* for (var length in values) {
		print(scream(length));
	} */

	// 기능형 코드1
	// values.map(scream).forEach(print);

	// 기능형 코드2
	values.skip(3).take(3).map(scream).forEach(print);
}
