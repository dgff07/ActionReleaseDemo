#!/bin/bash

is_major () {
    [[ "$1" == *"breaking change:"* ]]
}

is_minor () {
    [[ "$1" =~ ^feat[(]?.*[)]?:.* ]]
}

is_patch () {
    [[ "$1" =~ ^fix[(]?.*[)]?:.* ]]
}

test="feat(asd): asdasd asd"

if is_patch "$test"; then
    echo "is patch"
elif is_major "$test"; then
    echo "is major"
elif is_minor "$test"; then
    echo "is minor"
else
    echo "It will not upgrade"
fi