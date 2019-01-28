# Does for arrays what "shift" does for positional arguments
#
# USAGE: shift_array <arr_name> [<n>]
# Returns: 1 if n > array_length or n < 0
#          0 otherwise
#
# WARNING: This function mutates the source array.
#          (Should be obvious, but...)
shift_array() {
  # Create nameref to real array
  local -n arr="$1"
  local n="${2:-1}"
  if (( n > ${#arr[@]} || n < 0 )); then
    return 1
  else
    arr=("${arr[@]:${n}}")
    return 0
  fi
}
