.class public Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "EbookQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;
    }
.end annotation


# static fields
.field private static final READINGMODE_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_readingmode_checked"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-E-BookSettingButton"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEbookModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 54
    const/4 v2, 0x0

    const v3, 0x7f0c0138

    const v4, 0x7f0201cc

    const v5, 0x7f0201cb

    const v6, 0x7f0201ca

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 42
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContext:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mEbookModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;

    .line 64
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "e_reading_display_mode"

    invoke-static {v0, v1, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "e_reading_display_mode"

    invoke-static {v0, v1, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_1

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mState:Z

    .line 69
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v9, v7

    .line 67
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->setMode(I)V

    return-void
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "e_reading_display_mode"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private onDisplayReadingModeAlert()V
    .locals 7

    .prologue
    .line 124
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 126
    .local v2, "readingModeAlertLayout":Landroid/view/LayoutInflater;
    const v5, 0x7f04004b

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 129
    .local v3, "readingModeAlertView":Landroid/view/View;
    const v5, 0x7f090142

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 131
    .local v4, "readingModeCheckBox":Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$2;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c01a5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 148
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 150
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    const v5, 0x7f0c01a7

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 170
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 178
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 179
    .local v1, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 180
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 184
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 185
    return-void

    .line 182
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "e_reading_display_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, p1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->getMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mState:Z

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setReadingMode(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quickpanel_readingmode_checked"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 191
    .local v0, "checked":I
    if-eqz p1, :cond_1

    .line 192
    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->onDisplayReadingModeAlert()V

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->setMode(I)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->setMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mEbookModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 79
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "e_reading_display_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mEbookModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 75
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 82
    const-string v0, "STATUSBAR-E-BookSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E-Book Mode Setting onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 85
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->setReadingMode(Z)V

    .line 88
    :cond_0
    return-void
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$ReadingModeSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mEbookModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;->onChange(Z)V

    .line 205
    return-void
.end method
