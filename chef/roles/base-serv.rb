name "base-serv"
description "Base Server"
run_list [
    "recipe[install_from]",
    "recipe[build-essential]",
    "recipe[apt]",
    "recipe[esycat::utils]",
    "recipe[esycat::base-serv]",
    "recipe[esycat::mail-serv]"
]

