.class public Landroid/support/v21/btn/AlarmBtn;
.super Landroid/widget/ImageView;
.source "AlarmBtn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/btn/AlarmBtn$100000000;,
        Landroid/support/v21/btn/AlarmBtn$AlarmObserve;
    }
.end annotation


# instance fields
.field private br:Landroid/content/BroadcastReceiver;

.field private cc:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/btn/AlarmBtn;->cc:Landroid/content/Context;

    .line 20
    move-object v4, v0

    new-instance v5, Landroid/support/v21/btn/AlarmBtn$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v21/btn/AlarmBtn$100000000;-><init>(Landroid/support/v21/btn/AlarmBtn;)V

    iput-object v5, v4, Landroid/support/v21/btn/AlarmBtn;->br:Landroid/content/BroadcastReceiver;

    .line 34
    new-instance v4, Landroid/support/v21/btn/AlarmBtn$AlarmObserve;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    new-instance v7, Landroid/os/Handler;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, v6, v7}, Landroid/support/v21/btn/AlarmBtn$AlarmObserve;-><init>(Landroid/support/v21/btn/AlarmBtn;Landroid/os/Handler;)V

    invoke-virtual {v4}, Landroid/support/v21/btn/AlarmBtn$AlarmObserve;->observe()V

    return-void
.end method

.method static synthetic access$L1000000(Landroid/support/v21/btn/AlarmBtn;)Landroid/content/Context;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/AlarmBtn;->cc:Landroid/content/Context;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Landroid/support/v21/btn/AlarmBtn;Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/btn/AlarmBtn;->cc:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 42
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/btn/AlarmBtn;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "jj_alarm"

    const/16 v7, 0x8

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v21/btn/AlarmBtn;->setVisibility(I)V

    .line 43
    new-instance v4, Landroid/content/IntentFilter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 44
    move-object v4, v2

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    move-object v4, v2

    const-string v5, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/btn/AlarmBtn;->cc:Landroid/content/Context;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/AlarmBtn;->br:Landroid/content/BroadcastReceiver;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 54
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/AlarmBtn;->cc:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/AlarmBtn;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
