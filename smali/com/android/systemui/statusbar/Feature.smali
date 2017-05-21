.class public Lcom/android/systemui/statusbar/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static final ATT:Z

.field private static final CHN:Z

.field private static final CHN_OPEN:Z

.field private static final CMCC:Z

.field private static final CRI:Z

.field private static final CSP:Z

.field private static final CTC:Z

.field private static final CU:Z

.field private static final DCM:Z

.field private static final EUR_OPEN:Z

.field private static final EXPEND_NONSTOP:Z

.field private static final H_PROJECT:Z

.field private static final JACTIVE:Z

.field private static final J_PROJECT:Z

.field private static final KOR:Z

.field private static final KTT:Z

.field private static final LGT:Z

.field private static final ORANGE:Z

.field private static final SKT:Z

.field private static final SPR:Z

.field private static final TMO:Z

.field private static final USA:Z

.field private static final USA_WIFI:Z

.field private static final USCC:Z

.field private static final U_PROJECT:Z

.field private static final VZW:Z

.field public static final mDataIconForCHN:Z

.field public static final mDataIconForJPN:Z

.field public static final mDataTypeBrand:Ljava/lang/String;

.field public static final mHideBrightnessControllerByTopActivity:Z

.field public static final mHideNaviBarSearchButton:Z = true

.field public static final mHideWifiInAndOut:Z

.field public static final mJumpToAir1depthForVZW:Z

.field public static final mMobileDataStringForVZW:Z

.field public static final mPLMNIconDisplay:Z

.field public static final mPanelExpandedTickerStop:Z

.field public static final mProductName:Ljava/lang/String;

.field public static final mQuickpanelAnimationStopWorkaround:Z

.field public static final mRoamingIconDisplay:Z

.field public static final mRoamingOngoingForVZW:Z

.field public static final mSetDefaultOrientationLandscapeMode:Z

.field public static final mSetDefaultSSID:Z

.field public static final mShowCarrierWifiIcon:Z

.field public static final mShowDataStrength:Z = false

.field public static final mShowGPSlicensPopup:Z

.field public static final mShowLgtLabelType:Z

.field public static final mShowMenuKeyAlways:Z

.field public static final mShowOperatorLogoIcon:Z

.field public static final mShowRecentGoogleNowButton:Z

.field public static final mShowRecentOnlyStringForVZW:Z

.field public static final mShowRecentRemoveAllButton:Z = true

.field public static final mShowRoamingToastForLGT:Z

.field public static final mShowSimCheckPopup:Z = true

.field public static final mShowWorldClock:Z

.field public static final mSimIconForCHN:Z

.field public static final mSoundProfile:Z

.field public static final mUpdateDisplayWidthWithoutNavigationBar:Z

.field public static final mUseAnimatedBrightnessIcon:Z

.field public static final mUseAttNfcIcon:Z

.field public static final mUseAutoBrightnessDetail:Z

.field public static final mUseCHNFontType:Z

.field public static final mUseKorRSSIAlgorithm:Z

.field public static final mUseRedBatteryIcon:Z

.field public static final mUseSVoiceDrivingmodeSetting:Z

.field public static final mUseServiceStateForAirplane:Z

.field public static final mUseStatusBarMarquee:Z = false

.field public static final mUseTouchWizGUI:Z = true

.field public static final mUseVzwBatteryIcon:Z

.field public static final mUseVzwSimIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeBrand:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "vzw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    .line 44
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "att"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "uc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    .line 45
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "spr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    .line 46
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "tmo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "MetroPCS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    .line 47
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "usc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    .line 48
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "cri"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CRI:Z

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "csp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CSP:Z

    .line 50
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "skt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "ktt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->KTT:Z

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "lgt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    .line 53
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "dcm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "SC-04E"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->DCM:Z

    .line 54
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "zm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    .line 55
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "zn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    .line 56
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "ctc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CTC:Z

    .line 57
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "zc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN_OPEN:Z

    .line 58
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "xx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->EUR_OPEN:Z

    .line 59
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "wifiue"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->USA_WIFI:Z

    .line 60
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USA_WIFI:Z

    if-eqz v0, :cond_12

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->USA:Z

    .line 61
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KTT:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    if-eqz v0, :cond_13

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->KOR:Z

    .line 62
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN_OPEN:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CTC:Z

    if-eqz v0, :cond_14

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    .line 63
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "ja"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "jf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "SC-04E"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "ks01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->J_PROJECT:Z

    .line 64
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "u0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "gd1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_7
    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    .line 65
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "hlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->H_PROJECT:Z

    .line 66
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeBrand:Ljava/lang/String;

    const-string v3, "ORANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->ORANGE:Z

    .line 68
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "santos10"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->EXPEND_NONSTOP:Z

    .line 71
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "jactive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->JACTIVE:Z

    .line 76
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowMenuKeyAlways:Z

    .line 77
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSetDefaultOrientationLandscapeMode:Z

    .line 79
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHideBrightnessControllerByTopActivity:Z

    .line 80
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->EXPEND_NONSTOP:Z

    if-eqz v0, :cond_17

    :cond_8
    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQuickpanelAnimationStopWorkaround:Z

    .line 81
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUpdateDisplayWidthWithoutNavigationBar:Z

    .line 82
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->J_PROJECT:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->H_PROJECT:Z

    if-eqz v0, :cond_18

    :cond_9
    move v0, v2

    :goto_9
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    .line 83
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USA:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowWorldClock:Z

    .line 84
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-nez v0, :cond_19

    move v0, v2

    :goto_a
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    .line 85
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    .line 86
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    if-eqz v0, :cond_1a

    :cond_a
    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    .line 87
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    .line 91
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v0, :cond_1b

    move v0, v2

    :goto_c
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    .line 92
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    .line 93
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CRI:Z

    if-eqz v0, :cond_1c

    :cond_b
    move v0, v2

    :goto_d
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRedBatteryIcon:Z

    .line 95
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mMobileDataStringForVZW:Z

    .line 96
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingOngoingForVZW:Z

    .line 97
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USA:Z

    if-nez v0, :cond_c

    :cond_c
    sput-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    .line 98
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    .line 99
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    .line 100
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseVzwBatteryIcon:Z

    .line 102
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KOR:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    .line 103
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KTT:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ORANGE:Z

    if-eqz v0, :cond_1d

    :cond_d
    move v0, v2

    :goto_e
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    .line 105
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowLgtLabelType:Z

    .line 106
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    .line 107
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KOR:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPanelExpandedTickerStop:Z

    .line 109
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    if-eqz v0, :cond_1e

    :cond_e
    move v0, v2

    :goto_f
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    .line 110
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->DCM:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForJPN:Z

    .line 111
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    .line 112
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseCHNFontType:Z

    .line 113
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRoamingToastForLGT:Z

    .line 115
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mJumpToAir1depthForVZW:Z

    .line 116
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CTC:Z

    if-nez v0, :cond_1f

    move v0, v2

    :goto_10
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseServiceStateForAirplane:Z

    .line 118
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    .line 119
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    if-nez v0, :cond_20

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->J_PROJECT:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->JACTIVE:Z

    if-nez v0, :cond_20

    :goto_11
    sput-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseSVoiceDrivingmodeSetting:Z

    .line 121
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->DCM:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSetDefaultSSID:Z

    return-void

    :cond_f
    move v0, v1

    .line 44
    goto/16 :goto_0

    :cond_10
    move v0, v1

    .line 46
    goto/16 :goto_1

    :cond_11
    move v0, v1

    .line 53
    goto/16 :goto_2

    :cond_12
    move v0, v1

    .line 60
    goto/16 :goto_3

    :cond_13
    move v0, v1

    .line 61
    goto/16 :goto_4

    :cond_14
    move v0, v1

    .line 62
    goto/16 :goto_5

    :cond_15
    move v0, v1

    .line 63
    goto/16 :goto_6

    :cond_16
    move v0, v1

    .line 64
    goto/16 :goto_7

    :cond_17
    move v0, v1

    .line 80
    goto/16 :goto_8

    :cond_18
    move v0, v1

    .line 82
    goto/16 :goto_9

    :cond_19
    move v0, v1

    .line 84
    goto/16 :goto_a

    :cond_1a
    move v0, v1

    .line 86
    goto/16 :goto_b

    :cond_1b
    move v0, v1

    .line 91
    goto/16 :goto_c

    :cond_1c
    move v0, v1

    .line 93
    goto/16 :goto_d

    :cond_1d
    move v0, v1

    .line 103
    goto :goto_e

    :cond_1e
    move v0, v1

    .line 109
    goto :goto_f

    :cond_1f
    move v0, v1

    .line 116
    goto :goto_10

    :cond_20
    move v2, v1

    .line 119
    goto :goto_11
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMaxLevelOfSignalStrengthIndicator()I
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x6

    .line 130
    :goto_0
    return v0

    .line 127
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CRI:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CSP:Z

    if-eqz v0, :cond_2

    .line 128
    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .line 130
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static final getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "ATT"

    .line 154
    :goto_0
    return-object v0

    .line 137
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "TMO"

    goto :goto_0

    .line 139
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-eqz v0, :cond_2

    .line 140
    const-string v0, "VZW"

    goto :goto_0

    .line 141
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    if-eqz v0, :cond_3

    .line 142
    const-string v0, "SPR"

    goto :goto_0

    .line 143
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    if-eqz v0, :cond_4

    .line 144
    const-string v0, "CMCC"

    goto :goto_0

    .line 145
    :cond_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    if-eqz v0, :cond_5

    .line 146
    const-string v0, "LGT"

    goto :goto_0

    .line 147
    :cond_5
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->DCM:Z

    if-eqz v0, :cond_6

    .line 148
    const-string v0, "DCM"

    goto :goto_0

    .line 149
    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    if-eqz v0, :cond_7

    .line 150
    const-string v0, "SKT"

    goto :goto_0

    .line 151
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    if-eqz v0, :cond_8

    .line 152
    const-string v0, "CU"

    goto :goto_0

    .line 154
    :cond_8
    const-string v0, "OPEN"

    goto :goto_0
.end method

.method public static final getOperatorSIM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "45005"

    .line 166
    :goto_0
    return-object v0

    .line 161
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KTT:Z

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "45008"

    goto :goto_0

    .line 163
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    if-eqz v0, :cond_2

    .line 164
    const-string v0, "45006"

    goto :goto_0

    .line 166
    :cond_2
    const-string v0, "OPEN"

    goto :goto_0
.end method
