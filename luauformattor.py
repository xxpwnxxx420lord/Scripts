# A non-lua script in github.com/xxxpwnxxx420lord/scripts?!?!??

def format(code): 
    lines = code.split("\n")
    a = []
    ident = 0
    ident_str = "    "
    for line in lines:
        stripped = line.strip()
        if not stripped:
            a.append("")
            continue
        if stripped.startswith(("end", "until")):
            ident -= 1
        a.append(f"{ident_str * ident}{stripped}")
        if stripped.startswith(("function", "if", "for", "while", "repeat", "do")) and not stripped.endswith("end"):
            ident += 1

    return "\n".join(a)

with open("Exported.luau", "w", encoding="utf-8") as file:
    file.write(format(
        """

        """
    ))

    # After like 2 hours it finally works woohoo!
