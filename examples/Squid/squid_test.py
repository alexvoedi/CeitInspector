import sys
sys.path.append( "../.." )
from ceitinspector import MainEngine

# Run the whole tests online

me = MainEngine()
me.print_options()
me.self_check()
me.run()
me.failures_analyzing()
me.dump_overall_results(file_path="./confuzz_squid_conferr.csv")

# Run the results analyzing offline

# me = MainEngine()
# me.print_options()
# me.start_offline_analyzing()
# me.failures_analyzing(mode = "default")
# me.success_analyzing(mode="default")
# me.dump_overall_results("./confuzz_squid_confdiag.csv")
