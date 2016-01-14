#!/bin/zsh

: before
{
    source $ZPLUG_ROOT/zplug.zsh
    local -A zplugs
    local    expect actual
    local -i status_code
} &>/dev/null

describe "__help__"
    it "help"
        expect="$ZPLUG_HELP"
        actual="$(zplug help 2>&1)"
        status_code=$status
        assert.equals "$expect" "$actual"
        assert.false $status_code
    end
end

: after
{
    unset zplugs
    unset expect actual
    unset expects actuals
    unset status_code
} &>/dev/null
