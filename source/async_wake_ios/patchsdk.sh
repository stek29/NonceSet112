#!/bin/sh

SDK_PATH="$(xcrun -sdk iphoneos --show-sdk-path)"
PFPATH="$SDK_PATH/System/Library/PrivateFrameworks"

sudo mkdir -p "$PFPATH"

if ! [ -d "$PFPATH/Preferences.framework" ]; then
  sudo mkdir "$PFPATH/Preferences.framework"
  sudo tee "$PFPATH/Preferences.framework/Preferences.tbd" >/dev/null << YOF
---
archs:           [ armv7, armv7s, arm64 ]
platform:        ios
install-name:    /System/Library/PrivateFrameworks/Preferences.framework/Preferences
current-version: 1.0.0
compatibility-version: 1.0.0
exports:
  - archs:            [ armv7, armv7s, arm64 ]
    symbols:          [ _ContactsOption,
                        _CreateRangeTimeLabel, _DeviceName,
                        _FallbackYear, _FilePathKey,
                        _LocalizableGTStringKeyForKey, _LocalizedPolarisExplanation,
                        _NoOneOption, _PSAbbreviatedFormattedTimeString,
                        _PSAboutLocationAndPrivacyText, _PSAccountSettingsDataclassesKey,
                        _PSActionKey, _PSAirDropImage,
                        _PSAppGroupBundleIDKey, _PSAppSettingsBundleIDKey,
                        _PSAppTintColor, _PSApplicationDeletionCompletionNotification,
                        _PSApplyBuddyThemeToNavigationBar, _PSAutoCapsKey,
                        _PSBackupClass, _PSBestGuesserKey,
                        _PSBundleCustomIconPathKey, _PSBundleHasIconKey,
                        _PSBundleIdentifierNews, _PSBundleIdentifierPodcasts,
                        _PSBundleIdentifieriTunesU, _PSBundleOverridePrincipalClassKey,
                        _PSBundlePathKey, _PSBundleSupportsSearchKey,
                        _PSButtonActionKey, _PSCellClassKey,
                        _PSCityForTimeZone, _PSConfirmationActionKey,
                        _PSConfirmationCancelKey, _PSConfirmationKey,
                        _PSConfirmationPromptKey, _PSContainerBundleIDKey,
                        _PSControlKey, _PSControlMinimumKey,
                        _PSCopyableCellKey, _PSCurrentCallTypes,
                        _PSDecimalKeyboardKey, _PSDefaultsKey,
                        _PSDeletionActionKey, _PSDeviceUDID,
                        _PSDisplaySortedByTitleKey, _PSEditableTableCellTextFieldShouldPopOnReturn,
                        _PSEmailAddressKeyboardKey, _PSEnabledKey,
                        _PSExpectedSpokenLanguage, _PSFooterAlignmentGroupKey,
                        _PSFooterHyperlinkViewActionKey, _PSFooterHyperlinkViewTargetKey,
                        _PSFooterHyperlinkViewURLKey, _PSFooterViewKey,
                        _PSFormattedTimeStringWithDays, _PSHasStockholmPass,
                        _PSHeaderDetailTextGroupKey, _PSHidesDisclosureIndicatorKey,
                        _PSIPKeyboardKey, _PSIconImageShouldFlipForRightToLeftCalendarKey,
                        _PSIconImageShouldLoadAlternateImageForRightToLeftKey, _PSIsDebug,
                        _PSIsHostingPersonalHotspot, _PSIsInternalInstall,
                        _PSIsLoggingEnabled, _PSIsNanoMirroringDomain,
                        _PSIsRadioGroupKey, _PSIsSkippedInEDUModeKey,
                        _PSIsTopLevelKey, _PSIsiPad,
                        _PSKeyNameKey, _PSKeychainSyncErrorDomain,
                        _PSKeychainSyncGetStatus, _PSKillProcessNamed,
                        _PSLazyIconAppID, _PSLazyIconLoading,
                        _PSLegacyCityFromCity, _PSLicenseFilePath,
                        _PSLocaleLanguageDirection, _PSLocalizableMesaStringForKey,
                        _PSLocalizedStringFromTableInBundleForLanguage, _PSMagnifyModeDidChangeNotification,
                        _PSManifestSectionKey, _PSMarginWidthKey,
                        _PSMultipickerStringsName, _PSNavigationControllerWillShow,
                        _PSNavigationControllerWillShowDisappearing, _PSNegateValueKey,
                        _PSNumberKeyboardKey, _PSPaneTitleKey,
                        _PSPerformSelector, _PSPlaceholderKey,
                        _PSPointImageOfColor, _PSPreferencesLaunchURL,
                        _PSPrioritizeValueTextDisplayKey, _PSPurpleBuddyIdentifier,
                        _PSRegulatoryImage, _PSRequiredCapabilitiesOrKey,
                        _PSRootControllerDidSuspendNotification, _PSRoundToPixel,
                        _PSSearchInlineTogglesEnabled, _PSSearchNanoInternalSettingsBundlePath,
                        _PSSecureBackupAccountInfo, _PSSetBatteryMonitoringEnabled,
                        _PSSetLoggingEnabled, _PSSetScheduledDNDRange,
                        _PSSetupAssistantNeedsToRun, _PSSetupFinishedAllStepsKey,
                        _PSShortTitlesDataSourceKey, _PSShowEnableKeychainSync,
                        _PSSimIsMissing, _PSSiriFlatImageNamed,
                        _PSSiriImageNamed, _PSSliderIsSegmented,
                        _PSSliderLeftImagePromiseKey, _PSSliderRightImageKey,
                        _PSSliderSegmentCount, _PSSliderSnapsToSegment,
                        _PSSpecifierActionKey, _PSSpecifierForThirdPartyBundle,
                        _PSSpecifierIsSectionKey, _PSSpecifierSearchBundleKey,
                        _PSSpecifierSearchKeywordsKey, _PSSpecifierSearchSectionID,
                        _PSSpecifierSearchURL, _PSSpecifiersKey,
                        _PSStockholmLocallyStoredValuePassNames, _PSStorageClass,
                        _PSStringForHours, _PSStringForMinutes,
                        _PSSupportsAccountSettingsDataclassesKey, _PSTableCellClassKey,
                        _PSTableCellKey, _PSTableCellUseEtchedAppearanceKey,
                        _PSTableSectionFooterTopPad, _PSTableViewSideInsetPad,
                        _PSTextViewBottomMarginKey, _PSTimeStringIsShortened,
                        _PSTimeZoneArrayForTimeZone, _PSTintedImageFromMask,
                        _PSTitlesDataSourceKey, _PSURLKeyboardKey,
                        _PSUsageBundleCategoryKey, _PSUsedByManagedAccount,
                        _PSValidValuesKey, _PSValueKey,
                        _PSWarrantyFilePath, _PSWifiChangedNotification,
                        _PSWifiPowerStateKey, _PathKey,
                        _PreferencesTableViewCellRightPad, _PreferencesTableViewFooterFont,
                        _PreferencesTableViewHeaderFont, _ProductType,
                        _RestrictionsAccountName, _ScreenScale,
                        _SearchEntryFromSpecifier, _SetDeviceName,
                        _ShowInNotificationsState, _SystemHasCapabilities,
                        _UsageSizeKey, _WifiStateChanged,
                        __PSLoggingFacility, __consuming_xpc_release,
                        _gBBSettingsGatewayDispatchQ, _kKeychainSyncCountryInfoKey,
                        _kKeychainSyncSecurityCodeAdvancedOptionsResult, _kKeychainSyncSecurityCodePeerApprovalResult,
                        _kKeychainSyncSecurityCodeSetUpLaterResult, _kKeychainSyncSpinnerKey,
                        _kPSLargeTextUsesExtendedRangeKey, _kPSWirelessDataUsageChangedNotification,
                        _kTCCBluetoothSharingID, _kTCCCameraID,
                        _kTCCFacebookID, _kTCCMediaLibraryID,
                        _kTCCMotionID, _kTCCRemindersID,
                        _kTCCSpeechRecognitionID, _kTCCTwitterID,
                        _kWantsIcon, _resetLocale,
                        _CreateDetailControllerInstanceWithClass, _EveryoneOption,
                        _ForceDisplayWeibo, _NameKey,
                        _PSAbbreviatedFormattedTimeStringWithDays, _PSAccountsClientDataclassFilterKey,
                        _PSAlignmentKey, _PSAppSettingsBundleKey,
                        _PSApplicationSpecifierForBBSection, _PSAutoCorrectionKey,
                        _PSBlankIconImage, _PSBundleIconPathKey,
                        _PSBundleIdentifieriBooks, _PSBundlePathForPreferenceBundle,
                        _PSBundleTintedIconPathKey, _PSCityForSpecifier,
                        _PSConfirmationCancelActionKey, _PSConfirmationOKKey,
                        _PSControlIsLoadingKey, _PSControllerLoadActionKey,
                        _PSDataSourceClassKey, _PSDeferItemSelectionKey,
                        _PSDisplayNameForBBSection, _PSEditingCellHorizontalInset,
                        _PSEthernetChangedNotification, _PSFooterCellClassGroupKey,
                        _PSFooterHyperlinkViewTitleKey, _PSFormattedTimeString,
                        _PSHeaderCellClassGroupKey, _PSIDKey,
                        _PSIconImageShouldFlipForRightToLeftKey, _PSIsGreenTeaCapable,
                        _PSIsKeychainSecureBackupEnabled, _PSIsPerGizmoKey,
                        _PSIsThirdPartyDetailKey, _PSIsiPhone,
                        _PSKeychainSyncGetCircleMembershipStatus, _PSLazilyLoadedBundleKey,
                        _PSLazyIconLoadingCustomQueue, _PSLicensePath,
                        _PSLocalizableStockholmStringForKey, _PSManifestEntriesKey,
                        _PSMigrateSoundsDefaults_10_0, _PSNavigationControllerWillShowAppearing,
                        _PSNotifyNanoKey, _PSPassbookImage,
                        _PSPlistNameKey, _PSPreferredLanguageIsEnglish,
                        _PSRadioGroupCheckedSpecifierKey, _PSRerootPreferencesNavigationNotification,
                        _PSScheduledDNDEnabled, _PSSearchNanoSettingsBundlePath,
                        _PSSetCustomWatchCapabilityCheck, _PSSetterKey,
                        _PSShortFormattedTimeString, _PSShowKeychainSyncRecovery,
                        _PSSiriImage, _PSSliderLeftImageKey,
                        _PSSliderRightImagePromiseKey, _PSSpeciferForThirdPartyBundle,
                        _PSSpecifierIsSearchableKey, _PSSpecifierSearchDetailPath,
                        _PSSpecifierSearchTitleKey, _PSStaticTextMessageKey,
                        _PSStringForDays, _PSStringsTableKey,
                        _PSTableCellHeightKey, _PSTableSectionFooterBottomPad,
                        _PSTextFieldNoAutoCorrectKey, _PSTimeZoneArrayForSpecifier,
                        _PSTitleKey, _PSUsageBundleAppKey,
                        _PSValidTitlesKey, _PSValuesDataSourceKey,
                        _PSWifiNameKey, _PreferencesTableViewCellLeftPad,
                        _PreferencesTableViewHeaderColor, _RestrictionsAccessGroup,
                        _SearchEntriesFromSpecifiers, _ShouldShowWeibo,
                        _TopToBottomLeftToRightViewCompare, __PSFindViewRecursively,
                        __screenScale, _kKeychainSyncPhoneNumberKey,
                        _kKeychainSyncSecurityCodeResetKeychainResult, _kNumberOfPasscodeFieldsProperty,
                        _kQuotaInformationChangedNotification, _kTCCContactsID,
                        _kTCCMicrophoneID, _kTCCSinaWeiboID,
                        _kTCCWillowID ]
    objc-classes:     [ _AlphanumericPINTableViewCell,
                        _AppWirelessDataUsageManager, _BlkTraceController,
                        _DevicePINKeypad, _DevicePINSetupController,
                        _DiscreteSlider, _FontSizeSliderCell,
                        _KeychainSyncAppleSupportController, _KeychainSyncDevicePINController,
                        _KeychainSyncPhoneSettingsFragment, _KeychainSyncSecurityCodeCell,
                        _PINView, _PSAboutTextSheetViewController,
                        _PSAccountSecurityController, _PSAccountsClientListController,
                        _PSAppListController, _PSAssistiveTouchSettingsDetail,
                        _PSBadgedTableCell, _PSBiometricIdentity,
                        _PSBrightnessController, _PSBulletedPINView,
                        _PSCastleSettingsDetail, _PSClearBackgroundCell,
                        _PSCloudStorageQuotaManager, _PSConfirmationSpecifier,
                        _PSControlTableCell, _PSDUETSettingsDetail,
                        _PSEditableListController, _PSEditingPane,
                        _PSExpandableListGroupController, _PSFacebookSettingsDetail,
                        _PSFooterHyperlinkView, _PSGuidedAccessSettingsDetail,
                        _PSInternationalController, _PSInternationalLanguageSetupController,
                        _PSKeyboardSettingsDetail, _PSKeychainSyncManager,
                        _PSKeychainSyncSecurityCodeController, _PSKeychainSyncViewController,
                        _PSLanguageSelector, _PSLazyImagePromise,
                        _PSListContainerView, _PSListItemsController,
                        _PSLocaleSelector, _PSLowPowerModeSettingsDetail,
                        _PSMagnifyController, _PSMapsSettingsDetail,
                        _PSMigratorUtilities, _PSNavBarSpinnerManager,
                        _PSNotesSettingsDetail, _PSPasscodeField,
                        _PSPhoneNumberSpecifier, _PSPhoneSettingsDetail,
                        _PSPowerlogListController, _PSQuotaInfo,
                        _PSRemindersSettingsDetail, _PSRestrictionsPasscodeController,
                        _PSSafariSettingsDetail, _PSSearchEntry,
                        _PSSearchModel, _PSSearchResults,
                        _PSSearchResultsController, _PSSegmentTableCell,
                        _PSSettingsFunctions, _PSSinaWeiboSettingsDetail,
                        _PSSliderTableCell, _PSSoftwareUpdateReleaseNotesDetail,
                        _PSSoftwareUpdateTermsManager, _PSSoundsSettingsDetail,
                        _PSSpecifierAction, _PSSpecifierGroupIndex,
                        _PSSpecifierUpdateOperation, _PSSpinnerTableCell,
                        _PSStackPushAnimationController, _PSSubtitleDisclosureTableCell,
                        _PSSwitchTableCell, _PSSystemConfigurationDynamicStoreEthernetWatcher,
                        _PSSystemConfigurationDynamicStoreWifiWatcher, _PSSystemPolicyManager,
                        _PSTableCellHighlightContext, _PSTextEditingCell,
                        _PSTextFieldPINView, _PSTextSizeSettingsDetail,
                        _PSTextViewPane, _PSThirdPartyApp,
                        _PSTimeRangeCell, _PSTwitterSettingsDetail,
                        _PSUISearchController, _PSUsageBundleApp,
                        _PSUsageBundleCell, _PSUsageBundleManager,
                        _PSVideoSubscriberPrivacyCell, _PSViewController,
                        _PSVoiceOverSettingsDetail, _PSWebContainerView,
                        _PasscodeFieldCell, _PrefsUILinkLabel,
                        _ProblemReportingController, _WirelessDataUsageWorkspace,
                        __PSDeleteButtonCell, __PSSpinnerViewController,
                        _AlphanumericPINTextField, _DevicePINController,
                        _DiagnosticDataController, _KeychainSyncAdvancedSecurityCodeController,
                        _KeychainSyncPhoneNumberController, _KeychainSyncSetupController,
                        _PSAccessibilitySettingsDetail, _PSAirplaneModeSettingsDetail,
                        _PSAutoLockSettingsDetail, _PSBluetoothSettingsDetail,
                        _PSBundleController, _PSCloudStorageOffersManager,
                        _PSControlCenterSettingsDetail, _PSDetailController,
                        _PSExpandableAppListGroupController, _PSFlickrSettingsDetail,
                        _PSIconMarginTableCell, _PSInvertColorsSettingsDetail,
                        _PSKeychainSyncPhoneNumber, _PSLanguage,
                        _PSLegalMessagePane, _PSLocaleController,
                        _PSMCCSettingsDetail, _PSMessagesSettingsDetail,
                        _PSNonMovableTapGestureRecognizer, _PSPasscodeSettingsDetail,
                        _PSPhotosAndCameraSettingsDetail, _PSRegion,
                        _PSRootController, _PSSearchIndexOperation,
                        _PSSearchResultsCell, _PSSegmentableSlider,
                        _PSSiriSettingsDetail, _PSSoftwareUpdateTableView,
                        _PSSpecifier, _PSSpecifierUpdateContext,
                        _PSSplitViewController, _PSSubtitleSwitchTableCell,
                        _PSSystemConfigurationDynamicStoreNETRBWatcher, _PSTableCell,
                        _PSTextEditingPane, _PSTextView,
                        _PSThirdPartySettingsDetail, _PSUICellularUsageApp,
                        _PSUsageBundleCategory, _PSUsageSizeHeader,
                        _PSVimeoSettingsDetail, _PSWiFiSettingsDetail,
                        _ProblemReportingAboutController, __PSDeferredUpdates,
                        __PSSpinnerHandlingNavigationController ]
    objc-ivars:       [ _DevicePINController._cancelButton,
                        _DevicePINController._error1, _DevicePINController._hasBeenDismissed,
                        _DevicePINController._mode, _DevicePINController._oldPassword,
                        _DevicePINController._sepLockInfo, _DevicePINController._substate,
                        _DevicePINController._useSEPLockInfo, _DevicePINPane._autocorrectionType,
                        _DevicePINPane._keyboardAppearance, _DevicePINPane._keypad,
                        _DevicePINPane._pinView, _DevicePINPane._simplePIN,
                        _DevicePINPane._transitioning, _FailureBarView._titleLabel,
                        _PINView._errorTitleLabel, _PINView._pinPolicyLabel,
                        _PSBadgedTableCell._badgeImageView, _PSBadgedTableCell._badgeNumberLabel,
                        _PSBulletedPINView._passcodeField, _PSConfirmationSpecifier._cancelButton,
                        _PSConfirmationSpecifier._prompt, _PSControlTableCell._control,
                        _PSEditableListController._editable, _PSEditableTableCell._delaySpecifierRelease,
                        _PSEditableTableCell._forceFirstResponder, _PSEditableTableCell._targetSetter,
                        _PSEditableTableCell._valueChanged, _PSEditingPane._requiresKeyboard,
                        _PSKeychainSyncHeaderView._detailLabel, _PSLegalMessagePane._webView,
                        _PSListController._bundlesLoaded, _PSListController._cells,
                        _PSListController._contentOffsetWithKeyboard, _PSListController._forceSynchronousIconLoadForCreatedCells,
                        _PSListController._hasAppeared, _PSListController._isVisible,
                        _PSListController._keyboardWasVisible, _PSListController._popupIsDismissing,
                        _PSListController._prequeuedReusablePSTableCells, _PSListController._reusesCells,
                        _PSListController._showingSetupController, _PSListController._specifiers,
                        _PSListController._table, _PSListItemsController._deferItemSelection,
                        _PSListItemsController._restrictionList, _PSRootController._deallocating,
                        _PSRootController._tasks, _PSSegmentTableCell._values,
                        _PSSetupController._parentController, _PSSetupController._rootInfo,
                        _PSSoftwareUpdateReleaseNotesDetail._releaseNotes, _PSSoftwareUpdateTitleCell._animatingGearView,
                        _PSSpecifier._name, _PSSpecifier._shortTitleDict,
                        _PSSpecifier._userInfo, _PSSpecifier.action,
                        _PSSpecifier.autoCorrectionType, _PSSpecifier.cellType,
                        _PSSpecifier.editPaneClass, _PSSpecifier.keyboardType,
                        _PSSpecifier.target, _PSSwitchTableCell._activityIndicator,
                        _PSSystemConfigurationDynamicStoreNETRBWatcher._netrbReason, _PSSystemConfigurationDynamicStoreNETRBWatcher._scDynamicStore,
                        _PSSystemConfigurationDynamicStoreWifiWatcher._prefs, _PSSystemConfigurationDynamicStoreWifiWatcher._wifiInterface,
                        _PSTableCell._alignment, _PSTableCell._checked,
                        _PSTableCell._customHighlightContext, _PSTableCell._lazyIcon,
                        _PSTableCell._lazyIconDontUnload, _PSTableCell._pAction,
                        _PSTableCell._reusedCell, _PSTableCell._specifier,
                        _PSTableCell._value, _PSTextEditingPane._table,
                        _PSTextFieldPINView._cell, _PSTextFieldPINView._table,
                        _PSTextView._cell, _PSTextViewTableCell._textView,
                        _PSUsageBundleManager._usageBundleApps, _PSUsageSizeHeader._sizeLabel,
                        _PSViewController._parentController, _PSViewController._specifier,
                        _PrefsUILinkLabel._url, _ProblemReportingController._appActivitySpecifiers,
                        _ProblemReportingController._filesystemMetadataSnapshotSpecifier, _QuietHoursStateController._bbGateway,
                        _QuietHoursStateController._mode, _QuietHoursStateController._overrides,
                        _QuietHoursStateController._recordID, _QuietHoursStateController._toComponents,
                        _DevicePINController._doneButton, _DevicePINController._lastEntry,
                        _DevicePINController._pinDelegate, _DevicePINController._success,
                        _DevicePINPane._isBlocked, _DevicePINPane._keypadActive,
                        _DevicePINPane._transitionView, _PINView._error,
                        _PINView._titleLabel, _PSBarButtonSpinnerView._spinner,
                        _PSConfirmationSpecifier._okButton, _PSDetailController._pane,
                        _PSEditableTableCell._delegate, _PSEditableTableCell._textColor,
                        _PSEditingPane._specifier, _PSListController._bundleControllers,
                        _PSListController._containerView, _PSListController._groups,
                        _PSListController._keyboard, _PSListController._popupIsModal,
                        _PSListController._sectionContentInsetInitialized, _PSListController._specifiersByID,
                        _PSListItemsController._lastSelectedSpecifier, _PSRootController._specifier,
                        _PSSegmentableSlider._trackMarkersColor, _PSSliderTableCell._disabledView,
                        _PSSoftwareUpdateTitleCell._progressStyle, _PSSpecifier._titleDict,
                        _PSSpecifier.autoCapsType, _PSSpecifier.detailControllerClass,
                        _PSSpecifier.setter, _PSSystemConfiguration._prefs,
                        _PSSystemConfigurationDynamicStoreNETRBWatcher._scRunLoopSource, _PSSystemConfigurationDynamicStoreWifiWatcher._wifiKey,
                        _PSTableCell._checkedImageView, _PSTableCell._lazyIconAppID,
                        _PSTableCell._pTarget, _PSTableCell._type,
                        _PSTextEditingPane._textField, _PSTextFieldSpecifier.bestGuess,
                        _PSUsageBundleManager._bundleMap, _PSUsageSizeHeader._titleLabel,
                        _PrefsUILinkLabel._touchingURL, _ProblemReportingController._diagnosticDataGroupSpecifier,
                        _QuietHoursStateController._fromComponents, _QuietHoursStateController._privilegeTypes ]
...
YOF
  echo $?
fi
