//
//  BonusPlay.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

/// Represents the back of a Challenge Card. Some of these, technically, are Random Events rather
/// than Bonus Plays, but their role in gameplay is very similar.
public enum BonusPlay: String, Codable, Sendable {
    // Regular bonus plays

    /// Play this card before your player makes a Pass action that is a short pass. Treat the
    /// player as having a Pass stat of 2+ for that action.
    /// - Note: Identical in 3E and 4E.
    case accuratePass

    /// Play this card before your player makes a Mark action. They can move up to 4 squares instead
    /// of two, but must still end the action Marked.
    /// - Note: Unique to 4E, but identical to 3E's "Interference".
    case aggressiveMark

    /// Play this card after your player knocks an opponent down. The opponent's Armour value is 6+
    /// for this Armour check.
    /// - Note: Specific to 4E.
    case bladedKnuckleDusters_4E

    /// Play this card after your player makes a Mark action, and has already made a Run action this
    /// turn. That player immediately makes a free Block action against an opponent they are
    /// marking.
    /// - Note: Identical in 3E and 4E.
    case blitz

    /// Play this card at the start of your turn, before the Pre-Turn Sequence. Players from your
    /// team can move adjacent to opponents when making Run actions during this turn, but doing so
    /// ends their Run action.
    /// - Note: Identical in 3E and 4E. Named "Blocking Play" in 3E and "Defensive Play" in 4E, so I
    /// gave it an agnostic name. In 3E I implement this as being playable only at the start of the
    /// turn rather than prompting at every action, which gets tedious.
    case rushingPlay

    /// Play this card at the start of your turn, before the Pre-Turn Sequence. Block actions made
    /// by your players this turn count as being assisted.
    /// - Note: Identical in 3E and 4E. Named "Defensive Play" in 3E and "Blocking Play" in 4E, so I
    /// gave it an agnostic name.
    case assistedPlay

    /// Play this card after an opponent makes a Mark action but before the Claim Challenge Card
    /// step. One of your players adjacent to that opponent can immediately make a free Sidestep
    /// action.
    /// - Note: Unique to 3E.
    case distraction

    /// Play this card after your player makes a Mark action. That player immediately makes a free
    /// Block action against an opponent they are marking. After making the Block action, place the
    /// player Prone but do not make an Armour check. If they were carrying a ball, it bounces.
    /// - Note: Identical in 3E and 4E.
    case divingTackle

    /// Play this card before your player makes a Run action. During that action the player can move
    /// adjacent to opponents, but must still end the move Open.
    /// - Note: Identical in 3E and 4E.
    case dodge

    /// Play this card after the Claim Challence Card step of your third Player Action. Immediately
    /// take a fourth Player Action, which is still part of your turn and follows all the rules for
    /// actions and claiming Challenge cards.
    /// - Note: Identical in 3E and 4E.
    case inspiration

    /// Play this card before your player makes a Mark action. They can move up to 4 squares instead
    /// of two, but must still end the action Marked.
    /// - Note: Unique to 3E, but identical to 4E's "Aggressive Mark".
    case interference

    /// 3E text:
    /// Play this card after an opponent makes a Run action but before the Claim Challenge Card
    /// step. One Open player from your team may immediately make a free Mark action but must end it
    /// adjacent to the opponent that made the Run action.
    /// 4E text:
    /// Play this card to interrupt after an opponent makes a Run action. One Open player from your
    /// team may make a free Mark action but must end it adjacent to the opponent that made the Run
    /// action.
    /// - Note: Identical in 3E and 4E.
    case intervention

    /// 3E text:
    /// Play this card at the start of your turn, after the Pre-Turn Sequence but before making your
    /// first Player Action. Pick a Prone player on your team and make a free Stand Up action.
    /// 4E text:
    /// Pick a Prone player on your team and make a free Stand Up action.
    /// - Note: This is not identical in 3E and 4E but I'm going to treat it as such because
    /// prompting the user before every player action would get onerous.
    case jumpUp

    /// Play this card immediately - do not add it to your hand. Two new balls come into play,
    /// following the rules for "New Ball" and "Multiple Balls In Play".
    /// - Note: Specific to 3E.
    case multiBall_3E

    /// Play this card at the start of your turn, before the Pre-Turn Sequence. Pass checks during
    /// this turn are made with a D8, and a result of 6+ before or after modification always
    /// succeeds.
    /// - Note: Unique to 3E.
    case passingPlay

    /// Play this card after you make an Armour Check, a Pass Check or roll the dice for a Block
    /// action. Re-roll the dice.
    /// - Note: Identical in 3E and 4E.
    case rawTalent

    /// 3E text:
    /// Play this card at the start of your turn, after the Pre-Turn Sequence but before making your
    /// first Player Action. Make a free Reserves action.
    /// 4E text:
    /// Play this card before making a Player Action. Make a free Reserves action.
    /// - Note: This is not identical in 3E and 4E but I'm going to treat it as such because
    /// prompting the user before every player action would get onerous.
    case reserves

    /// Play this card after an opponent makes a Sidestep action. One of your players that was
    /// marking that opponent before the action may move into the square the opponent moved out of.
    /// - Note: Identical in 3E and 4E, although it's called "Shadowing" in 4E.
    case shadow

    /// Play this card before your player makes a Run action. They can move an additional 2 squares.
    /// - Note: Identical in 3E and 4E.
    case sprint

    /// Play this card after an opponent targets your player with a Block action but before the dice
    /// are rolled. Your player immediately makes a free Sidestep action (after which they must be
    /// Open). The opponent's Block action is cancelled and does not count as having been made.
    /// - Note: Specific to 3E.
    case stepAside_3E

    /// Play this card after an opponent makes a Mark action. One of your players marked by that
    /// opponent may make a free Sidestep action.
    /// - Note: Specific to 4E.
    case stepAside_4E

    /// Play this card before you make an Armour check for your player. The check is made with a D8,
    /// and an unmodified result of 6+ always succeeds.
    /// - Note: Specific to 3E.
    case toughEnough_3E

    /// Play this card to interrupt after an opponent targets your player with a Block action but
    /// before the dice are rolled. The block cannot be assisted, and results of Shove should be
    /// treated as Miss.
    /// - Note: Specific to 4E.
    case toughEnough_4E

    // 3E Endgame bonus plays

    /// Play this card before your opponent makes an Armour check. Subtract 2 from the check, in
    /// addition to any other modifiers, to a minimum result of 1.
    /// - Note: Specific to 3E.
    case absoluteCarnage

    /// Play this card before making an Armour check. An unmodified result of 2 or more will succeed
    /// for that check.
    /// - Note: Specific to 3E.
    case absolutelyNails

    /// Play this card after your player knocks an opponent down. The opponent is automatically
    /// injured; do not make an Armour check.
    /// - Note: Specific to 3E.
    case bladedKnuckleDusters_3E

    /// Play this card after your player makes a Block action but before you roll the dice. The
    /// result is automatically Kerrunch; do not roll the dice.
    /// - Note: Unique to 3E.
    case bodyCheck

    /// Play this card immediately - do not add it to your hand. For the remainder of the game, your
    /// opponent cannot make free Reserves actions during the Emergency Reserves step of the Pre-
    /// Turn Sequence.
    /// - Note: Unique to 3E.
    case bribedRef

    /// Play this card after your player takes possession of the ball as the result of a Pass
    /// action, before the Claim Challenge Card step. They can immediately make a free Run action
    /// (if Open) or Sidestep action (if Marked).
    /// - Note: Unique to 3E.
    case comboPlay

    /// Play this card after your player is placed in Reserve as the result of being injured.
    /// Immediately make a free Reserves action with that player.
    /// - Note: Unique to 3E.
    case getInThere

    /// Play this card when your player makes a Pass action, before choosing the target. The
    /// target can be a teammate anywhere on the board and the check will succeed on a result of 4+,
    /// regardless of any other conditions. A result of 1 before or after modification results in a
    /// fumble.
    /// - Note: Identical in 3E and 4E.
    case hailMaryPass

    /// Play this card after your team claims a different Challenge card or scores a touchdown.
    /// Score 1 extra point.
    /// - Note: Unique to 3E.
    case legUp

    /// Play this card before you make a Player Action. For that action, your player can make a
    /// Pass (or Hurl Teammate) action, even if they are Marked.
    /// - Note: Identical in 3E and 4E.
    case nervesOfSteel

    /// Play this card immediately - do not add it to your hand. Block actions made by your players
    /// count as being assisted until the end of the game.
    /// - Note: Unique to 3E.
    case nufflesBlessing

    /// Play this card before you make a Pass or Armour check. The check is made with a D8, and a
    /// result of 6+ before or after modification always succeeds.
    /// - Note: Unique to 3E.
    case pro

    /// Play this card immediately - do not add it to your hand. Each Open player on your team may
    /// make a free Run action of 1 square only. Then each Marked player on your team can make a
    /// free Sidestep action. Then, each Prone player on your team can make a free Stand Up action.
    /// - Note: Unique to 3E.
    case readyToGo

    /// Play this card after a player from your team makes a Mark action. The player immediately
    /// makes a free Block action that targets an opponent they are marking.
    /// - Note: Unique to 3E.
    case shoulderCharge

    /// Play this card when your player makes an unassisted Block action. Roll three dice for that
    /// Block action.
    /// - Note: Identical in 3E and 4E.
    case theKidsGotMoxy

    /// Play this card immediately - do not add it to your hand. Make up to two free Reserves
    /// actions. One player that has made a Reserves action this turn can make a free Run action.
    case yourTimeToShine

    // 4E Random events

    /// Each coach may choose one Open opposing player. The chosen player is placed prone; if they
    /// were holding a ball it will bounce.
    /// - Note: Unique to 4E.
    case bananaSkins

    /// Until the end of the game, when any player makes an Armour check as the result of a Block
    /// action, a -1 modifier applies to that check.
    /// - Note: Unique to 4E.
    case crumblingPitch

    /// All Reserves players may make a free Reserves action.
    /// - Note: Unique to 4E.
    case emptyTheBenches

    /// Until the end of the game, whenever a Challenge Card is claimed or a Touchdown is scored,
    /// the team scores one additional point.
    /// - Note: Unique to 4E.
    case generousCoaches

    /// Until the end of the game, players making a Foul action treat the "Spotted" result as
    /// "Slipped", and the "Take That" result as "Got Them".
    /// - Note: Unique to 4E.
    case getTheRef

    /// Discard all active challenge cards, and deal three new cards from the deck.
    /// - Note: Unique to 4E.
    case impatientCoaches

    /// If there are any balls in play, a new ball comes into play. If there are no balls in play,
    /// two new balls come into play, following the rules for "New Ball" and "Multiple Balls In
    /// Play".
    /// - Note: Specific to 4E.
    case multiBall_4E

    /// Each coach rolls a Block die for each opposing player on the pitch. For each Kerrunch
    /// result, the player is injured. If they were holding a ball, it will bounce.
    /// - Note: Unique to 4E.
    case pitchInvasion

    /// Starting with the coach whose turn it is, both coaches remove all players from the pitch and
    /// dugout and place them in their end zone, following the rules for setting up the game. Play
    /// continues with the coach whose turn it was when the event was revealed.
    /// - Note: Unique to 4E.
    case reset

    /// Choose a random trapdoor. Any player standing on that trapdoor is injured. Any standing
    /// players adjacent to the trapdoor are placed Prone. If any of these players was holding a
    /// ball it will bounce.
    /// - Note: Unique to 4E.
    case trapdoorMonster
}
