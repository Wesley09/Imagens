.class public Landroid/support/v21/toggle/QsSound;
.super Landroid/support/v21/toggle/QuickSettingsView;
.source "QsSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/toggle/QsSound$100000000;
    }
.end annotation


# static fields
.field static final RINGGER_SILENT:I = 0x1

.field static final RINGGER_SOUND_ONLY:I = 0x3

.field static final RINGGER_SOUND_VIBRATE:I = 0x4

.field static final RINGGER_UNKNOWN:I = 0x0

.field static final RINGGER_VIB_ONLY:I = 0x2


# instance fields
.field mAudioMgr:Landroid/media/AudioManager;

.field mB:Landroid/content/BroadcastReceiver;

.field mState:I

.field mVibrate:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v21/toggle/QuickSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    move-object v6, v0

    move-object v7, v1

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, v6, Landroid/support/v21/toggle/QsSound;->mAudioMgr:Landroid/media/AudioManager;

    .line 100
    move-object v6, v0

    move-object v7, v1

    const-string v8, "vibrator"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    iput-object v7, v6, Landroid/support/v21/toggle/QsSound;->mVibrate:Landroid/os/Vibrator;

    .line 101
    move-object v6, v0

    new-instance v7, Landroid/support/v21/toggle/QsSound$100000000;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v21/toggle/QsSound$100000000;-><init>(Landroid/support/v21/toggle/QsSound;)V

    iput-object v7, v6, Landroid/support/v21/toggle/QsSound;->mB:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v6, Landroid/content/IntentFilter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 110
    move-object v6, v4

    const-string v7, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    move-object v6, v4

    const-string v7, "android.intent.action.TIME_TICK"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/toggle/QsSound;->mB:Landroid/content/BroadcastReceiver;

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->updateQsBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$1000000(Landroid/support/v21/toggle/QsSound;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/toggle/QsSound;->updateTextAndIcon()V

    return-void
.end method

.method private update(IIIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)V"
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vibrate_in_silent"

    move v8, v1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v6

    .line 82
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/toggle/QsSound;->mAudioMgr:Landroid/media/AudioManager;

    const/4 v7, 0x0

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 83
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/toggle/QsSound;->mAudioMgr:Landroid/media/AudioManager;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 84
    move v6, v4

    if-eqz v6, :cond_0

    :cond_0
    return-void
.end method

.method private updateTextAndIcon()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/toggle/QsSound;->getRinggerState()I

    move-result v6

    move v2, v6

    move-object v6, v0

    const-string v7, "qs_color"

    invoke-virtual {v6, v7}, Landroid/support/v21/toggle/QsSound;->getColor(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    .line 53
    const/4 v6, 0x0

    move v4, v6

    .line 54
    move v6, v2

    packed-switch v6, :pswitch_data_0

    .line 56
    move-object v6, v0

    const-string v7, "Vibrate Only"

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->updateQsTitle(Ljava/lang/String;I)V

    .line 57
    move-object v6, v0

    const-string v7, "qs_vibrate"

    const-string v8, "drawable"

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 76
    :goto_0
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v21/toggle/QsSound;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v21/toggle/QsSound;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 60
    :pswitch_0
    move-object v6, v0

    const-string v7, "Silent"

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->updateQsTitle(Ljava/lang/String;I)V

    .line 61
    move-object v6, v0

    const-string v7, "qs_silent"

    const-string v8, "drawable"

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 62
    goto :goto_0

    .line 64
    :pswitch_1
    move-object v6, v0

    const-string v7, "Vibrate Only"

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->updateQsTitle(Ljava/lang/String;I)V

    .line 65
    move-object v6, v0

    const-string v7, "qs_vibrate"

    const-string v8, "drawable"

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 66
    goto :goto_0

    .line 68
    :pswitch_2
    move-object v6, v0

    const-string v7, "Sound Only"

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->updateQsTitle(Ljava/lang/String;I)V

    .line 69
    move-object v6, v0

    const-string v7, "qs_ringger"

    const-string v8, "drawable"

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 70
    goto :goto_0

    .line 72
    :pswitch_3
    move-object v6, v0

    const-string v7, "Sound Vibrate"

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->updateQsTitle(Ljava/lang/String;I)V

    .line 73
    move-object v6, v0

    const-string v7, "qs_ringger"

    const-string v8, "drawable"

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 74
    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method final getRinggerState()I
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsSound;->mAudioMgr:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    move v2, v4

    .line 117
    move v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsSound;->mAudioMgr:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x4

    :goto_0
    move v0, v4

    return v0

    :cond_0
    move v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x3

    goto :goto_0

    :cond_1
    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    move v4, v2

    const/4 v5, 0x0

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected handleLongClick()Z
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.settings.SOUND_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 19
    move-object v4, v2

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 20
    move-object v4, v2

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 21
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 22
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method protected toggleState()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsSound;->getRinggerState()I

    move-result v4

    move v2, v4

    .line 29
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 43
    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->update(IIIZ)V

    .line 46
    :goto_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v21/toggle/QsSound;->updateTextAndIcon()V

    return-void

    .line 31
    :pswitch_0
    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->update(IIIZ)V

    .line 32
    goto :goto_0

    .line 34
    :pswitch_1
    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->update(IIIZ)V

    .line 35
    goto :goto_0

    .line 37
    :pswitch_2
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->update(IIIZ)V

    .line 38
    goto :goto_0

    .line 40
    :pswitch_3
    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v21/toggle/QsSound;->update(IIIZ)V

    .line 41
    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
