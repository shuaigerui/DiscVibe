
import UIKit

import Foundation

struct DV_Login {
var likedBackPage_string: String!
var docFlag: Int? = 0
var destinationOffset: Double? = 0



    let coverImageName: String
    let title: String
    let summaryText: String
    let description: String
}

enum FS_SkillData {

    static let skillList: [DV_Login] = [
        DV_Login(
            coverImageName: "skill_01",
            title: "Basic Throwing Drills",
            summaryText: """
            Forehand & Backhand
            Static Practice
            Stand still on flat sand...
            """,
            description: """
            Forehand & Backhand Static Practice: Stand still on flat sand, practice backhand and forehand throws separately. Aim at a marker 10–15 meters away. Sand reduces disc bounce, ideal for stabilizing release posture. Do 50 throws per arm daily to fix wrist snap timing.

            Wind Adaptation Throwing: Beach wind is unstable. Practice low flat throws against crosswind; tilt disc upward slightly when throwing into headwind. Avoid high floating passes which get blown off course easily.

            Short Quick Pass Drills: Pair up for 5m rapid passing. Focus on compact arm movement, no big wind-up. Train fast release to counter sudden coastal gusts during real matches.
            """
        ),
        DV_Login(
            coverImageName: "skill_02",
            title: "Catching Training",
            summaryText: """
            Pancake Catch Drills
            Sand ground cushions
            falls, safe to practice ....
            """,
            description: """
            Pancake Catch Drills: Sand ground cushions falls, safe to practice pancake catches for high and low discs. Train two-hand clamping movement, keep eyes locked on the disc until fully secured.

            Running Catch Along Shoreline: Sprint parallel to the water while your partner throws leading passes. Learn to adjust running speed based on wind drift of the flying disc.

            Emergency One-Hand Catch: Practice left/right single-hand grabs for wide passes. Sand softens landings so you can dive safely to extend catching range without injury.
            """
        ),
        DV_Login(
            coverImageName: "skill_03",
            title: "Walking on sand",
            summaryText: """
            Sand Agility Shuffle
            Mark small cones on
            sand, perform lateral...
            """,
            description: """
            Sand Agility Shuffle: Mark small cones on sand, perform lateral shuffles, side steps and quick pivots. Sand creates resistance, strengthening leg muscles for constant sprinting during beach games.

            Explosive Sprint Start: Practice short burst sprints of 20m repeatedly. Dig your toes slightly into sand for better traction when cutting toward the disc.

            Quick Pivot Drill: Hold a disc, pivot left and right rapidly on soft sand. Improve balance to avoid slipping when receiving passes under defensive pressure.
            """
        ),
        DV_Login(
            coverImageName: "skill_04",
            title: "Wind Reading Core Skill",
            summaryText: """
            re-Training Wind Check
            Offshore / Onshore
            Wind Adjustment...
            """,
            description: """
            re-Training Wind Check: Before every drill, test wind direction by tossing a light disc upward to observe drift. Adjust throwing angle and power accordingly.

            Offshore / Onshore Wind Adjustment:
            • Onshore wind (blowing toward land): Throw lower, add extra wrist power
            • Offshore wind (blowing out to sea): Lift disc edge, use gentler release force

            Crosswind Correction: Offset your aim 2–3 meters against wind direction to compensate horizontal drift of the disc.
            """
        ),
        DV_Login(
            coverImageName: "skill_05",
            title: "Defensive Practice",
            summaryText: """
            Marking Stance on Sand
            Wind-Affected Interception
            Predict disc drift for steals...
            """,
            description: """
            Marking Stance on Sand: Bend knees deeper than grass court to maintain stability on loose sand. Keep light footwork to block easy throwing lanes without slipping.

            Wind-Affected Interception Drills: Simulate windy conditions to practice reading blown-off passes. Train yourself to predict disc drift and position for steals.
            """
        )
    ]
}
