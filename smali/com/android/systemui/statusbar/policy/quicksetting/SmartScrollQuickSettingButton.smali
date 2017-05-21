.class public Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SmartScrollQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;
    }
.end annotation


# static fields
.field private static final DB_FACE_SMART_SCROLL:Ljava/lang/String; = "face_smart_scroll"

.field private static final DB_SMART_SCROLL_ON:Ljava/lang/String; = "smart_scroll"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SmartScroll"


# instance fields
.field private mButtonStatus:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFaceState:Z

.field private mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

.field private mSmartState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 64
    const/4 v2, 0x0

    const v3, 0x7f0c012e

    const v4, 0x7f0201e4

    const v5, 0x7f0201e3

    const v6, 0x7f0201e1

    const v7, 0x7f0201e2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 60
    iput v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    .line 73
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    return p1
.end method

.method private updateStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 134
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 135
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 136
    const-string v1, "STATUSBAR-SmartScroll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatus to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-ne v1, v5, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v1, v2, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "face_smart_scroll"

    invoke-static {v1, v2, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 147
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "smart_scroll_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    return-void

    .line 141
    .end local v0    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-nez v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v1, v2, v6, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 143
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "face_smart_scroll"

    invoke-static {v1, v2, v6, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 103
    return-void
.end method

.method public doNext()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 197
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->updateStatus()V

    .line 199
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "face_smart_scroll"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll"

    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "face_smart_scroll"

    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z

    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z

    if-eqz v0, :cond_3

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z

    if-eqz v0, :cond_2

    .line 87
    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 99
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0

    :cond_1
    move v0, v2

    .line 83
    goto :goto_1

    .line 90
    :cond_2
    iput v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    .line 91
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_2

    .line 94
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    .line 95
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_2
.end method

.method public onClick(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "STATUSBAR-SmartScroll"

    const-string v1, "Processing... return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 115
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-ne v0, v1, :cond_2

    .line 116
    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    .line 129
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->updateStatus()V

    goto :goto_0

    .line 117
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-nez v0, :cond_4

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    const v0, 0x7f0c0141

    const v1, 0x7f0c0142

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    .line 125
    :cond_3
    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    goto :goto_1

    .line 126
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-ne v0, v2, :cond_1

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SmartScrollAdvancedSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->onChange(Z)V

    .line 209
    return-void
.end method
