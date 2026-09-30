import sys

def main():
    print("paste ASCII art terminate CTRL+D (Mac/Linux) or CTRL+Z + enter (Windows):\n")

    lines = sys.stdin.read().splitlines()

    if not lines:
        print("No input.")
        return

    max_width = max(len(line) for line in lines)

    normalized = [line.ljust(max_width) for line in lines]

    lua_lines = ",\n".join([f'  "{line}"' for line in normalized])

    output = f"""
{lua_lines}
"""

    print("\n--- LUA for dashboard-nvim ---\n")
    print(output)

if __name__ == "__main__":
    main()
