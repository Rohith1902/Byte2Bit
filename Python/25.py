
def parse_log(lines):
    severity_count = {
        "UVM_INFO": 0,
        "UVM_WARNING": 0,
        "UVM_ERROR": 0,
        "UVM_FATAL": 0
    }

    failed_tests = []

    for line in lines:
        words = line.split()

        severity = words[0]
        test_name = words[3].rstrip(":")

        if severity in severity_count:
            severity_count[severity] += 1

        if severity in ("UVM_ERROR", "UVM_FATAL"):
            if test_name not in failed_tests:
                failed_tests.append(test_name)

    return severity_count, failed_tests


lines = [
    "UVM_INFO @ 100ns: test_alu started",
    "UVM_WARNING @ 220ns: test_alu timeout close",
    "UVM_ERROR @ 340ns: test_fifo overflow detected",
    "UVM_INFO @ 400ns: test_fifo started",
    "UVM_ERROR @ 510ns: test_alu mismatch",
    "UVM_FATAL @ 600ns: test_dma bus error"
]

counts, failed_tests = parse_log(lines)

print("Severity counts:", counts)
print("Failed tests:", failed_tests)
