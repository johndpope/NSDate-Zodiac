# NSDate-Zodiac

Tool to detect zodiac sign

## Description
This is an iOS, Swift, iPhone, iPad category for NSDate. It gives NSDate the ability to detect its zodiac sign.

`NSDate+Zodiac.swift` has the following zodiac signs:

<pre>
enum Zodiac: String {
    case Ram = "ram_icon"
    case Bull = "bull_icon"
    case Twins = "twins_icon"
    case Crab = "crab_icon"
    case Lion = "lion_icon"
    case Maiden = "maiden_icon"
    case Scales = "scales_icon"
    case Scorpion = "scorpion_icon"
    case Archer = "archer_icon"
    case MountainSeaGoat = "mountain_sea_goat_icon"
    case WaterBearer = "water_bearer_icon"
    case Fish = "fish_icon"
    case None = ""
}
</pre>

## Use

1.  Add `NSDate+Zodiac.swift` to your project
2.  Call the `zodiac` method in the following way:

<pre>
let date = NSDate(dateString: "1998-03-14")
print(date.zodiac())
print(date.zodiac().rawValue)
</pre>

Output:

<pre>
"Fish"
"fish_icon"
</pre>