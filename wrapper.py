import subprocess

# Your input array
input_array = ["1", "2", "3", "4", "5"]
# Compile the C program (assuming it's saved as CProg.c)
subprocess.run(["gcc", "CProg.c", "-o", "CProg"])
# Run the compiled C program with the input array as arguments
process = subprocess.run(["./CProg"] + input_array, capture_output=True, text=True)
# Store the output of the C program in a Python variable
output_variable = process.stdout.strip()
# Print or use the stored output
print("C program output:")
print(output_variable)


subprocess.run(['ghc', 'hprog.hs'])
process = subprocess.run(['./hprog'] + [str(x) for x in input_array], text=True, capture_output=True)
result = process.stdout.strip()
print("Haskell program output:")
print(result)

prolog_input = "[" + ",".join(map(str, input_array)) + "]."
result2 = subprocess.run(['swipl', '-q', '-g', 'main', '-t', 'halt', 'example.pl'], input=prolog_input,
capture_output=True, text=True)
output_result = result2.stdout.strip()

print("Prolog program output:")
print(output_result)

# --------------------------------------------------------------

matlab_executable = r"C:\\Program Files\\MATLAB\\R2023b\\bin\\matlab"
matlab_command1 = [matlab_executable, '-nodisplay', '-nosplash', '-nodesktop', '-r', "run('mat');"]

# Execute the first MATLAB script
subprocess.run(matlab_command1)

with open('input.txt', 'r') as file:
    line = file.readline()
    input_array2 = [int(value) for value in line.split(',')]

# Compile the C program (assuming it's saved as CProg.c)
subprocess.run(["gcc", "CProg2.c", "-o", "CProg2"])
input_array2_str = [str(value) for value in input_array2]
with open('input_data.txt', 'w') as file:
    file.write(' '.join(input_array2_str))
# Run the compiled C program with the input array as arguments
process = subprocess.run(["./CProg2", "input_data.txt"], capture_output=True, text=True)

# Store the output of the C program in a Python variable
output_variable = process.stdout.strip()
# Print or use the stored output

# Save the output_variable to a file
with open('c_output.txt', 'w') as f:
    f.write(output_variable)

# Define the command to execute the second MATLAB script and exit MATLAB after execution
matlab_command2 = [matlab_executable, '-nodisplay', '-nosplash', '-nodesktop', '-r', "run('mat2');"]

# Execute the second MATLAB script
subprocess.run(matlab_command2)

with open('input.txt', 'r') as file:
    line = file.readline()
    input_array = [int(value) for value in line.split(',')]

# Compile haskell
subprocess.run(['ghc', 'hprog2.hs'])

# Path to the input file
input_file_path = 'input_data.txt'

# Run the compiled Haskell program with the input file as an argument
process = subprocess.run(['./hprog2', input_file_path], text=True, capture_output=True)

# Get the result from stdout and strip any extra whitespace
result = process.stdout.strip()

# Write the result to h_output.txt
with open('h_output.txt', 'w') as f:
    f.write(result)

with open('input_data.txt', 'r') as file:
    contents = file.read().strip()

# Add a newline character at the end of the input
prolog_input = contents + "\n"

# Run the Prolog script and pass the input
result2 = subprocess.run(['swipl', '-q', '-g', 'main', '-t', 'halt', 'example2.pl'], input=prolog_input, capture_output=True, text=True)

# Capture the output
output_result = result2.stdout.strip()

# Write the result to p_output.txt
with open('p_output.txt', 'w') as f:
    f.write(output_result)