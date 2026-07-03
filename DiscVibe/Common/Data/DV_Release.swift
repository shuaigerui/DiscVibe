
import UIKit

import Foundation

enum FS_EventData {

    static let eventList: [DV_Room] = [
        DV_Room(
            coverImageName: "home_02",
            title: "Championship",
            dateText: "Sunday, July 19, 2026",
            timeText: "10:00 AM — 5:30 PM",
            locationText: "Toronto, Ontario, Canada",
            introduction: """
            Full stock of official tournament-grade frisbees and backup discs are prepared to keep matches running non-stop. All games follow standard Spirit of the Game rules with equal-gender mixed teams. We split divisions for beginners and advanced players to guarantee fair and balanced competition.\nA pre-game rules & tactics briefing will be held at 9:30 AM. Rest zone, shaded seating and complimentary cold drinks are provided throughout the event.\nPlayers from local frisbee communities will compete and socialize. The top 2 teams win exclusive branded frisbee merchandise as prizes.
            """
        ),
        DV_Room(
            coverImageName: "home_03",
            title: "Masters Tournament",
            dateText: "Saturday, July 19, 2026",
            timeText: "3:00 PM — 7:00 PM",
            locationText: "Fairlands Road, England",
            introduction: """
            This regional qualifying event serves as the preliminary selection for the national urban frisbee league. A complete set of standard match frisbees and backup supplies are prepared.\n Competitions are divided into youth group and adult coed group, strictly following international ultimate frisbee competition rules. Technical instructors will answer rule questions throughout the tournament. Participants can gain official competition points through this event. On-site rest facilities, washrooms and free parking are provided for all registered teams.
            """
        ),
        DV_Room(
            coverImageName: "home_04",
            title: "Irvine Open",
            dateText: "Saturday, July 11, 2026",
            timeText: "09:00 AM — 17:00 PM",
            locationText: "California, USA",
            introduction: """
            This official open ultimate frisbee competition abides by global standard Spirit of the Game regulations. We have fully stocked tournament-spec frisbees and spare discs to ensure uninterrupted matches.\nThe competition adopts co-ed mixed team grouping, with separate beginner and elite divisions to match participants of different competitive levels. Pre-event official rules interpretation and tactical guidance will be arranged.\nShaded rest areas, drinking water and on-site first-aid service are available.\nOutstanding teams will receive official event trophies and customized frisbee merchandise awards. All local frisbee athletes and amateur teams are eligible to register.
            """
        ),
        DV_Room(
            coverImageName: "home_05",
            title: "Beach Frisbee",
            dateText: "Saturday, July 11, 2026",
            timeText: "09:00 AM — 17:30 PM",
            locationText: "California, USA",
            introduction: """
            Official beach ultimate frisbee competition following international beach frisbee rules. A full supply of sand-resistant professional beach discs and backup spares will be provided for all matches.\nAll teams are coed with balanced gender rosters, split into recreational and competitive divisions to suit players of all skill levels. Briefing on sand court boundaries, wind adaption tactics and match rules will be held before kickoff.\nShaded lounge zones, fresh water stations, shower facilities and first aid are available along the shoreline. Top-ranked teams earn trophies, custom beach frisbees and summer sports gift sets. All amateur teams and individual sign-ups are welcome.
            """
        )
    ]
}
