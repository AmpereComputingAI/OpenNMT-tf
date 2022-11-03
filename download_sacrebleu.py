import sacrebleu

test_set = "wmt14"
langpair = "en-de"

print("Downloading the test files...")
source_file = sacrebleu.get_source_file(test_set, langpair=langpair)
target_file = sacrebleu.get_reference_files(test_set, langpair=langpair)[0]
