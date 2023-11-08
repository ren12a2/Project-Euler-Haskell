rep:: [Char]->[Char]
rep x = ""++x

main::IO()
main=do
    print(rep "cat")