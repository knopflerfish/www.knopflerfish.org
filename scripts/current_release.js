
function getCurrentVersion() {
    var kf_release = "@VERSION@";

    return kf_release;
}

function currentReleasePath(elem, path) {
    elem.href="releases/" + getCurrentVersion() + path;
}

function currentReleaseAbsPath(elem, path) {
    elem.href="/releases/" + getCurrentVersion() + path;
}
