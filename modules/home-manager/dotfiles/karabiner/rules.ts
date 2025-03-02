import {
    layer,
    map,
    rule,
    toApp,
    withModifier,
    writeToProfile,
} from "karabiner.ts";
import path from "path";

const configFilePath = path.resolve("./karabiner.json");

writeToProfile({ karabinerJsonPath: configFilePath, name: "Default" }, [
    rule("Caps Lock → Hyper").manipulators([
        map("caps_lock").toHyper().toIfAlone("escape"),
    ]),
    terminalSessionsLayer(),
    launchAppRules(),
]);

function launchAppRules() {
    return rule("Launch Apps").manipulators([
        withModifier("right_command")({
            e: toApp("Karabiner-EventViewer.app"),
            t: toApp("Ghostty"),
            m: toApp("Mail"),
            a: toApp("Activity Monitor"),
            g: toApp("Gather"),
            c: toApp("Calendar"),
            w: toAppNative("app.zen-browser.zen"),
            z: toAppNative("us.zoom.xos"),
            s: toApp("Slack"),
            v: toApp("Spotify"),
            d: toApp("TablePlus"),
        }),
    ]);
}

function toAppNative(bundleIdentifier: string) {
    return {
        software_function: {
            open_application: { bundle_identifier: bundleIdentifier },
        },
    };
}

function terminalSessionsLayer() {
    const wrapCommand = (command: string) =>
        `~/dotfiles/modules/home-manager/dotfiles/karabiner/tmux.sh '${command}'`;
    const gotoSession = (session: string) =>
        wrapCommand(`sesh connect -s ${session}`);

    return layer("k", "Terminal Sessions")
        .modifiers("right_command")
        .manipulators([
            map("a").to$(gotoSession("affluent")),
            map("e").to$(gotoSession("affiliate-etl")),
            map("d").to$(gotoSession("~/dotfiles")),
            map("t").to$(gotoSession("token-registry")),
        ]);
}
