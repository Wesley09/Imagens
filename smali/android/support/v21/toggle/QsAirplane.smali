.class public Landroid/support/v21/toggle/QsAirplane;
.super Landroid/support/v21/toggle/QuickSettingsView;
.source "QsAirplane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/toggle/QsAirplane$Observe;,
        Landroid/support/v21/toggle/QsAirplane$100000000;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v21/toggle/QuickSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v4, Landroid/support/v21/toggle/QsAirplane$Observe;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v21/toggle/QsAirplane$Observe;-><init>(Landroid/support/v21/toggle/QsAirplane;)V

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsAirplane$Observe;->o()V

    .line 75
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/toggle/QsAirplane;->cr()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsAirplane;->updateState(I)V

    .line 76
    move-object v4, v0

    new-instance v5, Landroid/support/v21/toggle/QsAirplane$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v21/toggle/QsAirplane$100000000;-><init>(Landroid/support/v21/toggle/QsAirplane;)V

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsAirplane;->updateQsBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method protected handleLongClick()Z
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 17
    move-object v4, v2

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 18
    move-object v4, v2

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 19
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method protected toggleState()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 58
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsAirplane;->getActiveStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 69
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 60
    :pswitch_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsAirplane;->cr()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4

    .line 61
    move-object v4, v2

    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    .line 62
    goto :goto_0

    .line 64
    :pswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsAirplane;->cr()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4

    .line 65
    move-object v4, v2

    const-string v5, "state"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    .line 66
    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateState(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v21/toggle/QsAirplane;->setActive(I)V

    .line 27
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsAirplane;->getActiveStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 35
    :goto_0
    move-object v3, v0

    const-string v4, "Airplane Mode"

    move-object v5, v0

    const-string v6, "qs_color"

    invoke-virtual {v5, v6}, Landroid/support/v21/toggle/QsAirplane;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v21/toggle/QsAirplane;->updateQsTitle(Ljava/lang/String;I)V

    return-void

    .line 29
    :pswitch_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsAirplane;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v0

    const-string v6, "ic_launcher"

    const-string v7, "drawable"

    invoke-virtual {v5, v6, v7}, Landroid/support/v21/toggle/QsAirplane;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v21/toggle/QsAirplane;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 30
    goto :goto_0

    .line 32
    :pswitch_1
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsAirplane;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v0

    const-string v6, "ic_launcher"

    const-string v7, "drawable"

    invoke-virtual {v5, v6, v7}, Landroid/support/v21/toggle/QsAirplane;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v21/toggle/QsAirplane;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 33
    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
