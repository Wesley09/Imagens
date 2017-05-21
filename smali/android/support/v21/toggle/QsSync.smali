.class public Landroid/support/v21/toggle/QsSync;
.super Landroid/support/v21/toggle/QuickSettingsView;
.source "QsSync.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/toggle/QsSync$100000000;
    }
.end annotation


# instance fields
.field mCon:Landroid/net/ConnectivityManager;

.field mSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v21/toggle/QuickSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    move-object v4, v0

    move-object v5, v1

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, v4, Landroid/support/v21/toggle/QsSync;->mCon:Landroid/net/ConnectivityManager;

    .line 84
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsSync;->updateState()V

    .line 85
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v21/toggle/QsSync;->update()V

    .line 86
    move-object v4, v0

    new-instance v5, Landroid/support/v21/toggle/QsSync$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v21/toggle/QsSync$100000000;-><init>(Landroid/support/v21/toggle/QsSync;)V

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsSync;->updateQsBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private setSyncEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsSync;->mCon:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsSync;->mCon:Landroid/net/ConnectivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 61
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsSync;->cr()Landroid/content/ContentResolver;

    move-result-object v3

    move v3, v1

    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    return-void
.end method

.method private update()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsSync;->mCon:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsSync;->cr()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsSync;->setActive(I)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleLongClick()Z
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.settings.SYNC_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 100
    move-object v4, v2

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 101
    move-object v4, v2

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 102
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/support/v21/toggle/QuickSettingsView;->onAttachedToWindow()V

    .line 69
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsSync;->cr()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v3, 0x1

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v21/toggle/QsSync;->mSync:Ljava/lang/Object;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/support/v21/toggle/QuickSettingsView;->onDetachedFromWindow()V

    .line 77
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsSync;->cr()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsSync;->mSync:Ljava/lang/Object;

    invoke-static {v2}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public onStatusChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/toggle/QsSync;->update()V

    .line 17
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsSync;->updateState()V

    return-void
.end method

.method protected toggleState()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsSync;->getActiveStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 53
    :goto_0
    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsSync;->onStatusChanged(I)V

    return-void

    .line 46
    :pswitch_0
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/support/v21/toggle/QsSync;->setSyncEnable(Z)V

    .line 47
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsSync;->setActive(I)V

    .line 48
    goto :goto_0

    .line 50
    :pswitch_1
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v21/toggle/QsSync;->setSyncEnable(Z)V

    .line 51
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsSync;->setActive(I)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateState()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/drawable/Drawable;

    move-object v2, v4

    .line 30
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsSync;->getActiveStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 38
    :goto_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsSync;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 39
    move-object v4, v0

    const-string v5, "Sync"

    move-object v6, v0

    const-string v7, "qs_color"

    invoke-virtual {v6, v7}, Landroid/support/v21/toggle/QsSync;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsSync;->updateQsTitle(Ljava/lang/String;I)V

    return-void

    .line 32
    :pswitch_0
    move-object v4, v0

    const-string v5, "qs_sync_on"

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsSync;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v2, v4

    .line 33
    goto :goto_0

    .line 35
    :pswitch_1
    move-object v4, v0

    const-string v5, "qs_sync_off"

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsSync;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v2, v4

    .line 36
    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
