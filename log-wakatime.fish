function log-wakatime \
    --description="Wakatime Terminal tracking for Fish" \

    # wakatime for fish
    #
    # Add this to the fish_prompt function in
    # ~/.config/fish/functions/fish_prompt.fish
    # (or if it doesn't exist, create it).

    set -l project "Terminal"

    if [ -d .git ]
        set project (basename (git config --local remote.origin.url))
    else
        git rev-parse > /dev/null 2>&1
        if [ $status -eq 0 ]
            set project (basename (git config --local remote.origin.url))
        end
    end

    #echo $project
    wakatime --write --plugin "log-wakatime/1.0.0" --entity-type app --project "$project" --entity (echo $history[1] | cut -d ' ' -f1) 2>&1 > /dev/null&

end
