#!/usr/local/bin/php
<?php
$entries = [];
exec("docker images", $entries);
$head = array_shift($entries);

$sizePos = strpos($head, "SIZE");
$entriesExtra = [];
foreach ($entries as $entry) {
    $sizeString = substr($entry, $sizePos);
    preg_match("(MB|GB)", $sizeString, $matches);
    switch($matches[0]) {
        case "GB":
            $multiplier = 1024;
            break;
        default:
            $multiplier = 1;
            break;
    }
    $sizeValue = floatval($sizeString) * $multiplier;
    $entriesExtra[] = [$entry, $sizeValue];
}
usort($entriesExtra, function($a, $b) {
    return $a[1] < $b[1];
});
foreach ($entriesExtra as $entry) {
    echo $entry[0] . "\n";
}
