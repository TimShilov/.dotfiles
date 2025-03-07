{
  pkgs,
  ...
}:
{
  programs.taskwarrior = {
    enable = true;
    package = pkgs.taskwarrior3;
    config = {
      uda.taskwarrior-tui.shortcuts = {
        "1" = "~/dotfiles/scripts/taskopen.sh";
        "2" = "~/dotfiles/scripts/bugwarrior-pull.sh";
      };
    };
    extraConfig = # bash
      ''
        # Bugwarrior UDAs
        uda.githubtitle.type=string
        uda.githubtitle.label=Github Title
        uda.githubbody.type=string
        uda.githubbody.label=Github Body
        uda.githubcreatedon.type=date
        uda.githubcreatedon.label=Github Created
        uda.githubupdatedat.type=date
        uda.githubupdatedat.label=Github Updated
        uda.githubclosedon.type=date
        uda.githubclosedon.label=GitHub Closed
        uda.githubmilestone.type=string
        uda.githubmilestone.label=Github Milestone
        uda.githubrepo.type=string
        uda.githubrepo.label=Github Repo Slug
        uda.githuburl.type=string
        uda.githuburl.label=Github URL
        uda.githubtype.type=string
        uda.githubtype.label=Github Type
        uda.githubnumber.type=numeric
        uda.githubnumber.label=Github Issue/PR #
        uda.githubuser.type=string
        uda.githubuser.label=Github User
        uda.githubnamespace.type=string
        uda.githubnamespace.label=Github Namespace
        uda.githubstate.type=string
        uda.githubstate.label=GitHub State

        uda.jiraissuetype.type=string
        uda.jiraissuetype.label=Issue Type
        uda.jirasummary.type=string
        uda.jirasummary.label=Jira Summary
        uda.jiraurl.type=string
        uda.jiraurl.label=Jira URL
        uda.jiradescription.type=string
        uda.jiradescription.label=Jira Description
        uda.jiraid.type=string
        uda.jiraid.label=Jira Issue ID
        uda.jiraestimate.type=numeric
        uda.jiraestimate.label=Estimate
        uda.jirafixversion.type=string
        uda.jirafixversion.label=Fix Version
        uda.jiracreatedts.type=date
        uda.jiracreatedts.label=Created At
        uda.jirastatus.type=string
        uda.jirastatus.label=Jira Status
        uda.jirasubtasks.type=string
        uda.jirasubtasks.label=Jira Subtasks
        # END Bugwarrior UDAs
      '';
  };
}
