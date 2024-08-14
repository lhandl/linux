case ${0#-} in
  ksh)
    PS1="${HOSTNAME%%.*}:\${PWD} \$ "
    ;;
  *)
    if [[ ${EUID} == 0 ]]; then
      export PS1="\[\]\h:\w # \[\]"
    else
      export PS1="\[\]\u@\h:\w $ \[\]"
    fi
    ;;
esac
