.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_5_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_6_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 22
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    .line 31
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 51
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_5_LEVEL_CONNECTION_STRENGTH:[I

    .line 60
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_6_LEVEL_CONNECTION_STRENGTH:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 78
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 13
    :array_0
    .array-data 4
        0x7f0c00a5
        0x7f0c00a6
        0x7f0c00a7
        0x7f0c00a8
        0x7f0c00a9
    .end array-data

    .line 22
    :array_1
    .array-data 4
        0x7f0c00a5
        0x7f0c00a6
        0x7f0c00a7
        0x7f0c00a8
        0x7f0c00c2
        0x7f0c00a9
    .end array-data

    .line 31
    :array_2
    .array-data 4
        0x7f0c00a5
        0x7f0c00a6
        0x7f0c00a7
        0x7f0c00a8
        0x7f0c00c2
        0x7f0c00c3
        0x7f0c00a9
    .end array-data

    .line 42
    :array_3
    .array-data 4
        0x7f0c00aa
        0x7f0c00ab
        0x7f0c00ac
        0x7f0c00ad
        0x7f0c00b0
    .end array-data

    .line 51
    :array_4
    .array-data 4
        0x7f0c00aa
        0x7f0c00ab
        0x7f0c00ac
        0x7f0c00ad
        0x7f0c00ae
        0x7f0c00b0
    .end array-data

    .line 60
    :array_5
    .array-data 4
        0x7f0c00aa
        0x7f0c00ab
        0x7f0c00ac
        0x7f0c00ad
        0x7f0c00ae
        0x7f0c00af
        0x7f0c00b0
    .end array-data

    .line 71
    :array_6
    .array-data 4
        0x7f0c00b2
        0x7f0c00b3
        0x7f0c00b4
        0x7f0c00b5
        0x7f0c00b6
    .end array-data

    .line 78
    :array_7
    .array-data 4
        0x7f0c00b7
        0x7f0c00b8
        0x7f0c00b9
        0x7f0c00ba
        0x7f0c00bb
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
