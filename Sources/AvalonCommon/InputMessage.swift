//
//  ClientMessage.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/5/24.
//

import Foundation

public enum InputMessage: Codable, Sendable {

    // MARK: - Config

    case begin
    case selectBoardSpec(boardSpecID: BoardSpecID)
    case configureChallengeDeck(challengeDeckConfig: ChallengeDeckConfig)
    case selectRookieBonusRecipient(rookieBonusRecipientID: RookieBonusRecipientID)
    case selectTeam(teamID: TeamID)

    // MARK: - Table config

    case arrangePlayers(playerPositions: [Square])

    // MARK: - Turn

    case declarePlayerAction(declaration: ActionDeclaration, consumesBonusPlays: Set<BonusPlay>)
    case declareEmergencyReservesAction(playerID: PlayerID)
    case useRegenerationSkillStandUpAction
    case declineRegenerationSkillStandUpAction
    case useJumpUpBonusPlayStandUpAction(playerID: PlayerID)
    case declineJumpUpBonusPlayStandUpAction
    case useReservesBonusPlayReservesAction(playerID: PlayerID)
    case declineReservesBonusPlayReservesAction

    // MARK: - Run action

    case runActionUseDodgeBonusPlay
    case runActionDeclineDodgeBonusPlay
    case runActionUseSprintBonusPlay
    case runActionDeclineSprintBonusPlay
    case runActionSelectSquares(squares: [Square])

    // MARK: - Mark action

    case markActionUseLongMarkBonusPlay
    case markActionDeclineLongMarkBonusPlay
    case markActionSelectSquares(squares: [Square])

    // MARK: - Pass action

    case passActionUseHailMaryPassBonusPlay
    case passActionDeclineHailMaryPassBonusPlay
    case passActionSelectTarget(target: PlayerID)
    case passActionUseAccuratePassBonusPlay
    case passActionDeclineAccuratePassBonusPlay
    case passActionUseProBonusPlay
    case passActionDeclineProBonusPlay
    case passActionUseRawTalentBonusPlayReroll
    case passActionDeclineRawTalentBonusPlayReroll

    // MARK: - Hurl teammate action

    case hurlTeammateActionSelectTeammate(teammate: PlayerID)
    case hurlTeammateActionSelectTarget(targetSquare: Square)
    case hurlTeammateActionUseAccuratePassBonusPlay
    case hurlTeammateActionDeclineAccuratePassBonusPlay
    case hurlTeammateActionUseProBonusPlay
    case hurlTeammateActionDeclineProBonusPlay
    case hurlTeammateActionUseRawTalentBonusPlayReroll
    case hurlTeammateActionDeclineRawTalentBonusPlayReroll

    // MARK: - Foul action

    case foulActionSelectTarget(target: PlayerID)

    // MARK: - Block action

    case blockActionSelectTarget(target: PlayerID)
    case blockActionUseStepAsideBonusPlaySidestepAction
    case blockActionDeclineStepAsideBonusPlaySidestepAction
    case blockActionUseBodyCheckBonusPlay
    case blockActionDeclineBodyCheckBonusPlay
    case blockActionUseTheKidsGotMoxyBonusPlay
    case blockActionDeclineTheKidsGotMoxyBonusPlay
    case blockActionUseOffensiveSpecialistSkillReroll
    case blockActionDeclineOffensiveSpecialistSkillReroll(dieIndex: Int?)
    case blockActionUseRawTalentBonusPlayRerollForBlockDieResults
    case blockActionDeclineRawTalentBonusPlayRerollForBlockDieResults(dieIndex: Int?)
    case blockActionSelectResult(dieIndex: Int)
    case blockActionSelectSafeHandsLooseBallDirection(direction: Direction)
    case blockActionUseFollowUp
    case blockActionDeclineFollowUp
    case blockActionUseBladedKnuckleDustersBonusPlay
    case blockActionDeclineBladedKnuckleDustersBonusPlay
    case blockActionUseAbsolutelyNailsBonusPlay
    case blockActionDeclineAbsolutelyNailsBonusPlay
    case blockActionUseToughEnoughBonusPlay
    case blockActionDeclineToughEnoughBonusPlay
    case blockActionUseProBonusPlay
    case blockActionDeclineProBonusPlay
    case blockActionUseAbsoluteCarnageBonusPlay
    case blockActionDeclineAbsoluteCarnageBonusPlay
    case blockActionUseRawTalentBonusPlayRerollForArmourResult
    case blockActionDeclineRawTalentBonusPlayRerollForArmourResult

    // MARK: - Sidestep action

    case sidestepActionSelectSquare(square: Square)

    // MARK: - Stand up action

    // MARK: - Reserves action

    case reservesActionSelectSquare(square: Square)

    // MARK: - After injury

    case useGetInThereBonusPlayReservesAction
    case declineGetInThereBonusPlayReservesAction

    // MARK: - After action

    case useFrenziedSkillBlockAction
    case declineFrenziedSkillBlockAction

    case useShoulderChargeBonusPlayBlockAction
    case declineShoulderChargeBonusPlayBlockAction

    case useDivingTackleBonusPlayBlockAction
    case declineDivingTackleBonusPlayBlockAction

    case useHeadbuttSkillBlockAction
    case declineHeadbuttSkillBlockAction

    case useBlitzBonusPlayBlockAction
    case declineBlitzBonusPlayBlockAction

    case useComboPlayBonusPlayFreeAction
    case declineComboPlayBonusPlayFreeAction

    case useDistractionBonusPlaySidestepAction(playerID: PlayerID)
    case declineDistractionBonusPlaySidestepAction

    case useInterventionBonusPlayMarkAction(playerID: PlayerID)
    case declineInterventionBonusPlayMarkAction

    case claimObjective(objectiveIndex: Int)
    case declineToClaimObjective

    case useReadyToGoBonusPlayRunAction
    case declineReadyToGoBonusPlayRunAction

    case useReadyToGoBonusPlaySidestepAction
    case declineReadyToGoBonusPlaySidestepAction

    case useReadyToGoBonusPlayStandUpAction
    case declineReadyToGoBonusPlayStandUpAction

    case useYourTimeToShineBonusPlayReservesAction(playerID: PlayerID)
    case declineYourTimeToShineBonusPlayReservesAction

    case useYourTimeToShineBonusPlayRunAction(playerID: PlayerID)
    case declineYourTimeToShineBonusPlayRunAction

    case useCatchersInstinctsSkillRunAction
    case declineCatchersInstinctsSkillRunAction

    case useInspirationBonusPlayFreeAction(declaration: ActionDeclaration, consumesBonusPlays: Set<BonusPlay>)
    case declineInspirationBonusPlayFreeAction

    case useShadowBonusPlayExtraMove(playerID: PlayerID)
    case declineShadowBonusPlayExtraMove

    // MARK: - End turn

    case selectCardsToDiscardFromHand(cards: Set<ChallengeCard>)

    // MARK: - Pre-turn

    case useRushingPlayBonusPlay
    case declineRushingPlayBonusPlay
    case useAssistedPlayBonusPlay
    case declineAssistedPlayBonusPlay
    case usePassingPlayBonusPlay
    case declinePassingPlayBonusPlay
    case selectObjectiveToDiscard(objectiveIndex: Int)
}
