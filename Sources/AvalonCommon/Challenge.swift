//
//  Challenge.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

/// Represents the front of a Challenge Card. Some of these, technically, are fakes that don't have
/// to be earned like most Challenges.
public enum Challenge: String, Hashable, Codable, Sendable {
    // Regular challenges

    /// Claim this card if your player made a Block or Foul action and the target was injured.
    /// - Note: Identical in 3E and 4E.
    case breakSomeBones

    /// Claim this card if an opponent had possession of a ball and, following your player's action,
    /// they no longer have possession of that ball.
    /// - Note: Identical in 3E and 4E.
    case freeUpTheBall

    /// Claim this card if your player made an assisted Block action and the target was knocked
    /// down.
    /// - Note: Unique to 3E.
    case gangUp

    /// Claim this card if your player made a Run action, and your team has made three or more Run
    /// actions this turn.
    /// - Note: Identical in 3E and 4E.
    case getMoving

    /// Claim this card if your team took possession of a ball that they have not had possession of
    /// at any point during the turn.
    /// - Note: Identical in 3E and 4E.
    case getTheBall

    /// Claim this card if your player made a Run, Mark or Sidestep action and is now adjacent to
    /// two or more teammates.
    /// - Note: Identical in 3E and 4E.
    case getTogether

    /// Claim this card if your player made a successful Pass action with a negative modifier on
    /// the Pass check.
    /// - Note: Identical in 3E and 4E.
    case makeARiskyPass

    /// Claim this card if your player made a Run or Pass action, and during that action a ball was
    /// moved four squares further from your team's End Zone, and your team still has
    /// possession of that ball.
    /// - Note: Identical in 3E and 4E.
    case moveTheBall

    /// Claim this card if your player made an Action that resulted in your team scoring a
    /// touchdown.
    /// - Note: Identical in 3E and 4E.
    case showboatForTheCrowd

    /// Claim this card if your player ended an action on a trapdoor and an opponent has possession
    /// of a ball.
    /// - Note: Identical in 3E and 4E.
    case showNoFear

    /// Claim this card if your player made a successful Pass action (not a hand-off).
    /// - Note: Identical in 3E and 4E.
    case showUsACompletion

    /// Claim this card if your player made a Run or Sidestep action and none of your players are
    /// adjacent to one another.
    /// - Note: Identical in 3E and 4E.
    case spreadOut

    /// Claim this card if your player made a Block action and the target was knocked down.
    /// - Note: Identical in 3E and 4E.
    case takeThemDown

    /// Claim this card if your player made a Mark action, and at least three opponents are Marked
    /// by two or more players from your team.
    /// - Note: Specific to 3E.
    case tieThemUp_3E

    /// Claim this card if your player made a Mark action, and is now marking two or more opponents
    /// who are not marked by any other players from your team.
    /// - Note: Specific to 3E.
    case tieThemUp_4E

    // 3E Endgame challenges

    /// Claim this card if your player has possession of a ball and made a Block action which
    /// resulted in the target being knocked down.
    /// - Note: Unique to 3E.
    case breakTheirLines

    /// Claim this card if your player made a Block action that resulted in the target being
    /// injured, and at least one other opponent has already been knocked down or injured this turn.
    /// - Note: Unique to 3E.
    case causeSomeCarnage

    /// Claim this card if two or more of your players are Open and within 3 squares of the other
    /// team's End Zone.
    /// - Note: Unique to 3E.
    case goDeep

    /// Claim this card if you are 4 or more points behind your opponent's score and you could not
    /// claim another Challenge card with your player's action.
    /// - Note: Unique to 3E.
    case lastChance

    /// Claim this card if 2 or more opponents are in Reserve, and your player made a Block action
    /// that resulted in the target being knocked down.
    /// - Note: Unique to 3E.
    case pileOn

    /// Claim this card if you made three or more different actions with three or more different
    /// players this turn.
    /// - Note: Identical in 3E and 4E.
    case playAsATeam

    /// Claim this card if your player made a successful long pass, and it was the second or
    /// subsequent successful pass (not a hand-off) made by your team this turn.
    /// - Note: Unique to 3E.
    case showOffALittle

    /// Claim this card if you made an Emergency Reserves action during your turn and you are 4 or
    /// more points behind your opponent's score.
    /// - Note: Unique to 3E.
    case showSomeGrit

    /// Claim this card if your player has made three or more Actions (not free actions) this turn.
    /// - Note: Identical in 3E and 4E.
    case showThemHowItsDone

    // Fake challenges

    /// This card can never be claimed as an objective, it's just to give to a new player for a free
    /// reroll.
    /// - Note: Identical in 3E and 4E.
    case rookieBonus

    /// This card can never be claimed as an objective, it's just to show up in the deck and trigger
    /// a random event "bonus play".
    /// - Note: Unique to 4E.
    case randomEvent
}
