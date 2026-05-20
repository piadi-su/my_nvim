import sys

def main():
    print("Incolla ASCII art e termina con CTRL+D (Mac/Linux) o CTRL+Z + Invio (Windows):\n")

    lines = sys.stdin.read().splitlines()

    if not lines:
        print("Nessun input.")
        return

    max_width = max(len(line) for line in lines)

    # IMPORTANTISSIMO: padding per mantenere allineamento
    normalized = [line.ljust(max_width) for line in lines]

    lua_lines = ",\n".join([f'  "{line}"' for line in normalized])

    output = f"""
{lua_lines}
"""

    print("\n--- LUA PER dashboard-nvim (SAFE) ---\n")
    print(output)

if __name__ == "__main__":
    main()
