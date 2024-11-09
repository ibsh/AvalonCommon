//
//  Prompt.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/14/24.
//

import Foundation

public enum Prompt: Equatable, Codable, Sendable {

    // MARK: - Config

    case selectBoardSpec(
        boardSpecIDs: [BoardSpecID]
    )

    case configureChallengeDeck

    case selectRookieBonusRecipient(
        rookieBonusRecipientIDs: [RookieBonusRecipientID]
    )

    case selectTeam(
        teams: [TeamSpec]
    )

    // MARK: - Table config

    case arrangePlayers(
        playerIDs: Set<PlayerID>,
        validSquares: Set<Square>
    )

    // MARK: - Turn

    case declarePlayerAction(
        validDeclarations: Set<PromptValidDeclaringPlayer>,
        playerActionsLeft: Int
    )

    case declareEmergencyReservesAction(
        validPlayers: Set<PlayerID>
    )

    case eligibleForRegenerationSkillStandUpAction(
        player: PromptBoardPlayer
    )

    case eligibleForJumpUpBonusPlayStandUpAction(
        validPlayers: Set<PromptBoardPlayer>
    )

    case eligibleForReservesBonusPlayReservesAction(
        validPlayers: Set<PlayerID>
    )

    // MARK: - Run action

    case runActionEligibleForDodgeBonusPlay(
        player: PromptBoardPlayer
    )

    case runActionEligibleForSprintBonusPlay(
        player: PromptBoardPlayer
    )

    case runActionSelectSquares(
        player: PromptBoardPlayer,
        maxDistance: Int,
        validSquares: ValidMoveSquares
    )

    // MARK: - Mark action

    case markActionEligibleForLongMarkBonusPlay(
        player: PromptBoardPlayer
    )

    case markActionSelectSquares(
        player: PromptBoardPlayer,
        maxDistance: Int,
        validSquares: ValidMoveSquares
    )

    // MARK: - Pass action

    case passActionEligibleForHailMaryPassBonusPlay(
        player: PromptBoardPlayer
    )

    case passActionSelectTarget(
        player: PromptBoardPlayer,
        validTargets: Set<PassTarget>
    )

    case passActionEligibleForAccuratePassBonusPlay(
        player: PromptBoardPlayer
    )

    case passActionEligibleForProBonusPlay(
        player: PromptBoardPlayer
    )

    case passActionResultEligibleForRawTalentBonusPlayReroll(
        player: PromptBoardPlayer,
        result: Int
    )

    // MARK: - Hurl teammate action

    case hurlTeammateActionSelectTeammate(
        player: PromptBoardPlayer,
        validTeammates: Set<PromptBoardPlayer>
    )

    case hurlTeammateActionSelectTarget(
        player: PromptBoardPlayer,
        teammate: PromptBoardPlayer,
        validTargets: Set<HurlTeammateTarget>
    )

    case hurlTeammateActionEligibleForAccuratePassBonusPlay(
        player: PromptBoardPlayer,
        teammate: PromptBoardPlayer
    )

    case hurlTeammateActionEligibleForProBonusPlay(
        player: PromptBoardPlayer,
        teammate: PromptBoardPlayer
    )

    case hurlTeammateActionResultEligibleForRawTalentBonusPlayReroll(
        player: PromptBoardPlayer,
        teammate: PromptBoardPlayer,
        result: Int
    )

    // MARK: - Foul action

    case foulActionSelectTarget(
        player: PromptBoardPlayer,
        validTargets: Set<PromptBoardPlayer>
    )

    // MARK: - Block action

    case blockActionSelectTarget(
        player: PromptBoardPlayer,
        validTargets: Set<PromptBoardPlayer>
    )

    case blockActionEligibleForStepAsideBonusPlaySidestepAction(
        player: PromptBoardPlayer
    )

    case blockActionEligibleForBodyCheckBonusPlay(
        player: PromptBoardPlayer
    )

    case blockActionEligibleForTheKidsGotMoxyBonusPlay(
        player: PromptBoardPlayer
    )

    case blockActionBlockDieResultsEligibleForOffensiveSpecialistSkillReroll(
        player: PromptBoardPlayer,
        results: BlockResults,
        maySelectResultToDecline: Bool
    )

    case blockActionBlockDieResultsEligibleForRawTalentBonusPlayReroll(
        player: PromptBoardPlayer,
        results: BlockResults,
        maySelectResultToDecline: Bool
    )

    case blockActionSelectResult(
        player: PromptBoardPlayer,
        results: BlockResults
    )

    case blockActionSelectSafeHandsLooseBallDirection(
        player: PromptBoardPlayer,
        directions: Set<PromptDirection>
    )

    case blockActionEligibleForFollowUp(
        player: PromptBoardPlayer,
        destination: Square
    )

    case blockActionEligibleForBladedKnuckleDustersBonusPlay(
        player: PromptBoardPlayer
    )

    case blockActionEligibleForAbsolutelyNailsBonusPlay(
        player: PromptBoardPlayer
    )

    case blockActionEligibleForToughEnoughBonusPlay(
        player: PromptBoardPlayer
    )

    case blockActionEligibleForProBonusPlay(
        player: PromptBoardPlayer
    )

    case blockActionEligibleForAbsoluteCarnageBonusPlay(
        player: PromptBoardPlayer
    )

    case blockActionArmourResultEligibleForRawTalentBonusPlayReroll(
        player: PromptBoardPlayer,
        result: Int
    )

    // MARK: - Sidestep action

    case sidestepActionSelectSquare(
        player: PromptBoardPlayer,
        validSquares: ValidMoveSquares
    )

    // MARK: - Stand up action

    // MARK: - Reserves action

    case reservesActionSelectSquare(
        playerID: PlayerID,
        validSquares: ValidMoveSquares
    )

    // MARK: - After injury

    case eligibleForGetInThereBonusPlayReservesAction(
        playerID: PlayerID
    )

    // MARK: - After action

    case eligibleForFrenziedSkillBlockAction(
        player: PromptBoardPlayer
    )

    case eligibleForShoulderChargeBonusPlayBlockAction(
        player: PromptBoardPlayer
    )

    case eligibleForDivingTackleBonusPlayBlockAction(
        player: PromptBoardPlayer
    )

    case eligibleForHeadbuttSkillBlockAction(
        player: PromptBoardPlayer
    )

    case eligibleForBlitzBonusPlayBlockAction(
        player: PromptBoardPlayer
    )

    case eligibleForComboPlayBonusPlayFreeAction(
        validDeclaration: PromptValidDeclaration,
        playerSquare: Square
    )

    case eligibleForDistractionBonusPlaySidestepAction(
        validPlayers: Set<PromptBoardPlayer>
    )

    case eligibleForInterventionBonusPlayMarkAction(
        /// Note that this is a set of declarations rather than player IDs because you might need to
        /// spend a Long Mark bonus play to make some of these declarations valid.
        validDeclarations: Set<PromptValidDeclaringPlayer>
    )

    case earnedObjective(
        indices: [Int],
        objectives: WrappedObjectives
    )

    case eligibleForReadyToGoBonusPlayRunAction(
        player: PromptBoardPlayer
    )

    case eligibleForReadyToGoBonusPlaySidestepAction(
        player: PromptBoardPlayer
    )

    case eligibleForReadyToGoBonusPlayStandUpAction(
        player: PromptBoardPlayer
    )

    case eligibleForYourTimeToShineBonusPlayReservesAction(
        validPlayers: Set<PlayerID>
    )

    case eligibleForYourTimeToShineBonusPlayRunAction(
        validPlayers: Set<PromptBoardPlayer>
    )

    case eligibleForCatchersInstinctsSkillRunAction(
        player: PromptBoardPlayer
    )

    case eligibleForInspirationBonusPlayFreeAction(
        validDeclarations: Set<PromptValidDeclaringPlayer>
    )

    case eligibleForShadowBonusPlayExtraMove(
        validPlayers: Set<PromptBoardPlayer>,
        square: Square
    )

    // MARK: - End turn

    case selectCardsToDiscardFromHand(
        hand: [ChallengeCard],
        active: [ChallengeCard],
        count: Int
    )

    // MARK: - Pre-turn


    case eligibleForRushingPlayBonusPlay
    case eligibleForAssistedPlayBonusPlay
    case eligibleForPassingPlayBonusPlay

    case selectObjectiveToDiscard(
        objectives: WrappedObjectives
    )
}
