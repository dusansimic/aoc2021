int main () {
	int[] data = load_data ();

	int count = 0;
	int sum = data[0] + data[1] + data[2];
	for (int i = 3; i < data.length; i++) {
		int new_sum = sum  - data[i-3] + data[i];
		if (sum < new_sum) {
			count++;
		}
	}

	stdout.printf("%d\n", count);
	
	return 0;
}

int[] load_data () {
	string? input = null;
	int[] data = {};

	do {
		input = stdin.read_line ();

		if (input != null && input != "") {
			data += int.parse(input);
		}
	} while (input != null && input != "");

	return data;
}
