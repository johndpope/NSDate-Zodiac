# NSDate-Zodiac

Tool to detect zodiac sign

## Description
This is an iOS, Swift, iPhone, iPad category for NSDate. It gives NSDate the ability to detect its zodiac sign.

`NSDate+Zodiac.swift` has the following zodiac signs:

<pre>
public enum Zodiac {
    case Ram
    case Bull
    case Twins
    case Crab
    case Lion
    case Maiden
    case Scales
    case Scorpion
    case Archer
    case MountainSeaGoat
    case WaterBearer
    case Fish
    case Undefined
}
</pre>

## Use

1.  Add `NSDate+Zodiac.swift` to your project
2.  In `zodiac` property you can access to zodiac sign:

<pre>
let date = NSDate(dateString: "1998-03-14")
print(date.zodiac)
</pre>

Output:

<pre>
Fish
</pre>
