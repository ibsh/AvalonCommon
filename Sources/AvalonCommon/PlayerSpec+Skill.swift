//
//  PlayerSpec+Skill.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/13/24.
//

import Foundation

extension PlayerSpec {
    public enum Skill: String, Codable, Sendable {
        /// After resolving the Claim Challenge Card step for a Block action performed by this
        /// player, if any of the block dice showed a Miss, this player is injured.
        /// - Note: Unique to 4E.
        case bloodlust

        /// This player can make a special Block action while Open. Choose an Open or Marked
        /// opponent within 3 squares to be the target. The Block action cannot be assisted. Treat
        /// results of "Shove" as "Miss".
        /// - Note: Identical in 3E and 4E.
        case bomber

        /// If this player is Open and is the target of a successful Pass action (not a hand-off),
        /// they can make a free Run action.
        /// - Note: Identical in 3E and 4E.
        case catchersInstincts

        /// When this player makes a Block action, roll a D6 along with the block dice. If the
        /// result is a 6, the target is automatically injured - do not resolve the block dice.
        /// - Note: Unique to 3E.
        case claws

        /// Opponents adjacent to this player can never assist a Block action.
        /// - Note: Unique to 4E.
        case defensive

        /// When this player is chosen as the target of a Block action, they may interrupt to make
        /// a free short pass or hand-off, with no modifiers.
        /// - Note: Unique to 4E.
        case dumpOff

        /// When this player makes a Run action they can move adjacent to opponents, but must end
        /// the action Open.
        /// - Note: Identical in 3E and 4E.
        case elusive

        /// ORIGINAL TEXT
        /// When this player makes a Block action, you must resolve the results of all the dice
        /// rolled, in the order of your choosing. For each knocked down result, the opposing coach
        /// must make an Armour check for the target player.
        /// MY TEXT
        /// When this player makes a Block action, you must resolve the results of all the dice
        /// rolled, in the following order: shove, smash, kerrunch, tackle, miss. For each shove
        /// result that moves the opponent, this player must follow up. For each knocked down
        /// result, the opposing coach must make an Armour check for the target player. If this
        /// player is disabled by a tackle result, all subsequent knockdowns from other tackle
        /// results are still applied.
        /// - Note: Identical in 3E and 4E.
        case enforcer

        /// When this player makes a Run action they can move adjacent to opponents and through
        /// teammates and obstructions, but must end the action Open and not on an obstruction.
        /// - Note: Identical in 3E and 4E.
        case ethereal

        /// Whenever this Player fails a Throw check, they may re-roll the die.
        /// - Note: Unique to 4E.
        case expertPasser

        /// After this player makes a Mark action, they can immediately make a free Block action.
        /// - Note: Identical in 3E and 4E.
        case frenzied

        /// Whenever this player is moved into a square containing a ball, they pick it up, as
        /// though they were making a Run action.
        /// - Note: Identical in 3E and 4E.
        case handlingSkills

        /// If this player makes a Run action, followed by a Mark action, they can immediately make
        /// a free Block action.
        /// - Note: Identical in 3E and 4E.
        case headbutt

        /// After this player makes a Block action, they may make a free Run action of up to 2
        /// spaces. This action may be made even if they are marked.
        /// - Note: Unique to 4E.
        case hitAndRun

        /// When this player makes a Block action, treat results of "Tackle" or "Smash" as
        /// "Kerrunch". In addition, if this player is the target of a Block action, treat results
        /// of "Shove" as "Miss".
        /// - Note: Identical in 3E and 4E.
        case hulkingBrute

        /// This player can perform a Hurl Teammate action.
        /// - Note: Identical in 3E and 4E.
        case hurlTeammate

        /// Opponents may move or end their move adjacent to this player during a Run action. In
        /// addition, when this player makes a Block action, treat results of "Tackle" as "Miss".
        /// - Note: Identical in 3E and 4E.
        case insignificant

        /// When this player makes a Run action they can move adjacent to and through players, but
        /// must end the action Open.
        /// - Note: Identical in 3E and 4E.
        case leap

        /// When this player makes a Run action they can move adjacent to opponents, but must end
        /// the action Open. This player cannot make Pass actions.
        /// - Note: Unique to 4E.
        case litheCreature

        /// When this player makes a Block action, treat results of "Smash" as "Kerrunch".
        /// - Note: Identical in 3E and 4E.
        case mightyBlow

        /// When an adjacent teammate would be injured as a result of their Bloodlust ability, you
        /// may choose for this player to be injured instead.
        /// - Note: Unique to 4E.
        case minion

        /// When this player makes a Block action, you can choose to re-roll the block dice.
        /// - Note: Identical in 3E and 4E.
        case offensiveSpecialist

        /// At the end of any action performed by this player, any adjacent teammates may make a
        /// free Stand Up action.
        /// - Note: Unique to 4E.
        case pickMeUp

        /// After the Pre-Turn sequence, but before making your first Player Action, if this player
        /// is prone, they can make a free Stand Up action.
        /// - Note: Identical in 3E and 4E.
        case regenerate

        /// After this player makes a Run action, they may make a free short throw.
        /// - Note: Unique to 4E.
        case runningPass

        /// When this player makes a Run action, they can move adjacent to opponents, but doing so
        /// ends the action.
        /// - Note: Unique to 3E.
        case rush

        /// If this player is knocked down while holding a ball, you can choose which adjacent
        /// square the ball bounces into instead of rolling a D8.
        /// - Note: Identical in 3E and 4E.
        case safeHands

        /// When this player is the target of a Block action, treat results of "Shove" as "Miss".
        /// - Note: Identical in 3E and 4E.
        case standFirm

        /// Opponents may move adjacent to this player during a Run action, but doing so ends the
        /// action. In addition, when this player makes a Block action, treat results of "Tackle" as
        /// "Miss".
        /// - Note: Identical in 3E and 4E.
        case titchy

        /// When this player makes a Block or Foul action, roll a D6 along with the block dice. If
        /// the result is a 6, the target is automatically injured - do not resolve the block dice.
        /// - Note: Unique to 4E.
        case violent

        /// This player can make a free Sidestep action.
        /// - Note: Unique to 4E.
        case wardance

        /// This player can make a Run action while Marked. When this player makes a Run action,
        /// they can move adjacent to opponents, and finish the action Open or Marked. This player's
        /// Block actions cannot be assisted.
        /// - Note: Identical in 3E and 4E.
        case warMachine

        /// Block actions targeting this player may not be assisted.
        /// - Note: Unique to 4E.
        case woodlandAid
    }
}
