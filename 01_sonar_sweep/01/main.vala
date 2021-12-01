int main () {
	int[] data = load_data ();

	int count = 0;
	for (int i = 1; i < data.length; i++) {
		if (data[i-1] < data[i]) {
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
