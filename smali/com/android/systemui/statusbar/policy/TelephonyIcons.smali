.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA_1X:[[I

.field static final DATA_2G:[[I

.field static final DATA_3G:[[I

.field static final DATA_3G_LGT:[[I

.field static final DATA_3G_PLUS:[[I

.field static final DATA_4G:[[I

.field static final DATA_4G_ATT:[[I

.field static final DATA_4G_LGT:[[I

.field static final DATA_4G_LTE:[[I

.field static final DATA_4G_LTE_LTN:[[I

.field static final DATA_4G_LTE_PLUS:[[I

.field static final DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

.field static final DATA_DC:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_H_PLUS:[[I

.field static final DATA_LTE:[[I

.field static final DATA_LTE_ATT:[[I

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final DATA_SIGNAL_STRENGTH_FOCUS:[I

.field static final DATA_TMO:[[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 25
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 38
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 51
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 65
    new-array v0, v6, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    .line 80
    new-array v0, v6, [[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    .line 98
    new-array v0, v2, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    .line 106
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 107
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_FOCUS:[I

    .line 110
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    .line 112
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    .line 118
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 129
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 140
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 152
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    .line 163
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 174
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    .line 187
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 199
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    .line 210
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    .line 222
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    .line 233
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_PLUS:[[I

    .line 246
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_ATT:[[I

    .line 257
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_ATT:[[I

    .line 269
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    .line 284
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_27

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_29

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_LGT:[[I

    .line 303
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2b

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2c

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2d

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LGT:[[I

    .line 323
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2f

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_30

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DC:[[I

    .line 334
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_31

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_32

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    .line 346
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_33

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_34

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    return-void

    .line 25
    nop

    :array_0
    .array-data 4
        0x7f02011d
        0x7f02011f
        0x7f020121
        0x7f020123
        0x7f020125
    .end array-data

    :array_1
    .array-data 4
        0x7f02011e
        0x7f020120
        0x7f020122
        0x7f020124
        0x7f020126
    .end array-data

    .line 38
    :array_2
    .array-data 4
        0x7f020051
        0x7f020052
        0x7f020054
        0x7f020055
        0x7f020057
    .end array-data

    :array_3
    .array-data 4
        0x7f02005a
        0x7f02005b
        0x7f02005c
        0x7f02005d
        0x7f02005e
    .end array-data

    .line 51
    :array_4
    .array-data 4
        0x7f02011d
        0x7f02011f
        0x7f020121
        0x7f020123
        0x7f020125
    .end array-data

    :array_5
    .array-data 4
        0x7f02011e
        0x7f020120
        0x7f020122
        0x7f020124
        0x7f020126
    .end array-data

    .line 65
    :array_6
    .array-data 4
        0x7f02020a
        0x7f02020c
        0x7f02020e
        0x7f020210
        0x7f020212
        0x7f020214
    .end array-data

    :array_7
    .array-data 4
        0x7f02020b
        0x7f02020d
        0x7f02020f
        0x7f020211
        0x7f020213
        0x7f020215
    .end array-data

    .line 80
    :array_8
    .array-data 4
        0x7f020216
        0x7f020218
        0x7f02021a
        0x7f02021c
        0x7f02021e
        0x7f020220
        0x7f020222
    .end array-data

    :array_9
    .array-data 4
        0x7f020217
        0x7f020219
        0x7f02021b
        0x7f02021d
        0x7f02021f
        0x7f020221
        0x7f020223
    .end array-data

    .line 98
    :array_a
    .array-data 4
        0x7f020127
        0x7f020128
        0x7f020129
        0x7f02012a
        0x7f02012b
    .end array-data

    .line 118
    :array_b
    .array-data 4
        0x7f0200e8
        0x7f0200e8
        0x7f0200e8
        0x7f0200e8
    .end array-data

    :array_c
    .array-data 4
        0x7f0200f9
        0x7f0200f9
        0x7f0200f9
        0x7f0200f9
    .end array-data

    .line 129
    :array_d
    .array-data 4
        0x7f0200d7
        0x7f0200d7
        0x7f0200d7
        0x7f0200d7
    .end array-data

    :array_e
    .array-data 4
        0x7f0200f1
        0x7f0200f1
        0x7f0200f1
        0x7f0200f1
    .end array-data

    .line 140
    :array_f
    .array-data 4
        0x7f0200e7
        0x7f0200e7
        0x7f0200e7
        0x7f0200e7
    .end array-data

    :array_10
    .array-data 4
        0x7f0200f8
        0x7f0200f8
        0x7f0200f8
        0x7f0200f8
    .end array-data

    .line 152
    :array_11
    .array-data 4
        0x7f0200d8
        0x7f0200d8
        0x7f0200d8
        0x7f0200d8
    .end array-data

    :array_12
    .array-data 4
        0x7f0200f2
        0x7f0200f2
        0x7f0200f2
        0x7f0200f2
    .end array-data

    .line 163
    :array_13
    .array-data 4
        0x7f0200e9
        0x7f0200e9
        0x7f0200e9
        0x7f0200e9
    .end array-data

    :array_14
    .array-data 4
        0x7f0200fa
        0x7f0200fa
        0x7f0200fa
        0x7f0200fa
    .end array-data

    .line 174
    :array_15
    .array-data 4
        0x7f0200ea
        0x7f0200ea
        0x7f0200ea
        0x7f0200ea
    .end array-data

    :array_16
    .array-data 4
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
    .end array-data

    .line 187
    :array_17
    .array-data 4
        0x7f0200d5
        0x7f0200d5
        0x7f0200d5
        0x7f0200d5
    .end array-data

    :array_18
    .array-data 4
        0x7f0200ef
        0x7f0200ef
        0x7f0200ef
        0x7f0200ef
    .end array-data

    .line 199
    :array_19
    .array-data 4
        0x7f0200da
        0x7f0200da
        0x7f0200da
        0x7f0200da
    .end array-data

    :array_1a
    .array-data 4
        0x7f0200f3
        0x7f0200f3
        0x7f0200f3
        0x7f0200f3
    .end array-data

    .line 210
    :array_1b
    .array-data 4
        0x7f0200eb
        0x7f0200eb
        0x7f0200eb
        0x7f0200eb
    .end array-data

    :array_1c
    .array-data 4
        0x7f0200fc
        0x7f0200fc
        0x7f0200fc
        0x7f0200fc
    .end array-data

    .line 222
    :array_1d
    .array-data 4
        0x7f0200dc
        0x7f0200dc
        0x7f0200dc
        0x7f0200dc
    .end array-data

    :array_1e
    .array-data 4
        0x7f0200f4
        0x7f0200f4
        0x7f0200f4
        0x7f0200f4
    .end array-data

    .line 233
    :array_1f
    .array-data 4
        0x7f0200de
        0x7f0200de
        0x7f0200de
        0x7f0200de
    .end array-data

    :array_20
    .array-data 4
        0x7f0200f6
        0x7f0200f6
        0x7f0200f6
        0x7f0200f6
    .end array-data

    .line 246
    :array_21
    .array-data 4
        0x7f0200db
        0x7f0200fd
        0x7f020102
        0x7f020101
    .end array-data

    :array_22
    .array-data 4
        0x7f0200db
        0x7f0200fd
        0x7f020102
        0x7f020101
    .end array-data

    .line 257
    :array_23
    .array-data 4
        0x7f0200ec
        0x7f0200fd
        0x7f020102
        0x7f020101
    .end array-data

    :array_24
    .array-data 4
        0x7f0200ec
        0x7f0200fd
        0x7f020102
        0x7f020101
    .end array-data

    .line 269
    :array_25
    .array-data 4
        0x7f020132
        0x7f02012e
        0x7f020135
        0x7f020130
    .end array-data

    :array_26
    .array-data 4
        0x7f020132
        0x7f02012e
        0x7f020135
        0x7f020130
    .end array-data

    .line 284
    :array_27
    .array-data 4
        0x7f020108
        0x7f020108
        0x7f020108
        0x7f020108
    .end array-data

    :array_28
    .array-data 4
        0x7f020108
        0x7f020108
        0x7f020108
        0x7f020108
    .end array-data

    :array_29
    .array-data 4
        0x7f020106
        0x7f020106
        0x7f020106
        0x7f020106
    .end array-data

    :array_2a
    .array-data 4
        0x7f020106
        0x7f020106
        0x7f020106
        0x7f020106
    .end array-data

    .line 303
    :array_2b
    .array-data 4
        0x7f020109
        0x7f020109
        0x7f020109
        0x7f020109
    .end array-data

    :array_2c
    .array-data 4
        0x7f020109
        0x7f020109
        0x7f020109
        0x7f020109
    .end array-data

    :array_2d
    .array-data 4
        0x7f020107
        0x7f020107
        0x7f020107
        0x7f020107
    .end array-data

    :array_2e
    .array-data 4
        0x7f020107
        0x7f020107
        0x7f020107
        0x7f020107
    .end array-data

    .line 323
    :array_2f
    .array-data 4
        0x7f0200e6
        0x7f0200e6
        0x7f0200e6
        0x7f0200e6
    .end array-data

    :array_30
    .array-data 4
        0x7f0200f7
        0x7f0200f7
        0x7f0200f7
        0x7f0200f7
    .end array-data

    .line 334
    :array_31
    .array-data 4
        0x7f0200d6
        0x7f0200d6
        0x7f0200d6
        0x7f0200d6
    .end array-data

    :array_32
    .array-data 4
        0x7f0200f0
        0x7f0200f0
        0x7f0200f0
        0x7f0200f0
    .end array-data

    .line 346
    :array_33
    .array-data 4
        0x7f0200dd
        0x7f0200dd
        0x7f0200dd
        0x7f0200dd
    .end array-data

    :array_34
    .array-data 4
        0x7f0200f5
        0x7f0200f5
        0x7f0200f5
        0x7f0200f5
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
