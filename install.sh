#!/usr/bin/env zsh
cd $(dirname $0)
setopt extendedglob

for f in *~($(basename $0)|README*); do
    link=${HOME}/.${f}
    this=${PWD}/${f}

    if [[ -e "${link}" ]]; then
        if [[ -L "${link}" ]]; then
            end=$(python -c "import os; print os.path.realpath('${link}');")

            if [[ "${end}" != "${this}" ]]; then
                echo "[FAIL] ${link} points elsewhere. Fix it yourself." >&2
            fi
        else
            echo "[FAIL] .${f} exists in \$HOME. Symlink it yourself." >&2
        fi
    else
        ln -s "${this}" "${link}"
        echo "[ OK ] Created $link" >&2
    fi
done
