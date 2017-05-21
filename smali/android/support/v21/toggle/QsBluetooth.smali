.class public Landroid/support/v21/toggle/QsBluetooth;
.super Landroid/support/v21/toggle/QuickSettingsView;
.source "QsBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/toggle/QsBluetooth$100000000;
    }
.end annotation


# instance fields
.field final d:Ljava/lang/String;

.field mBA:Landroid/bluetooth/BluetoothAdapter;

.field mR:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v21/toggle/QuickSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const-string v5, "drawable"

    iput-object v5, v4, Landroid/support/v21/toggle/QsBluetooth;->d:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Landroid/support/v21/toggle/QsBluetooth$100000000;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v21/toggle/QsBluetooth$100000000;-><init>(Landroid/support/v21/toggle/QsBluetooth;)V

    iput-object v5, v4, Landroid/support/v21/toggle/QsBluetooth;->mR:Landroid/content/BroadcastReceiver;

    .line 104
    move-object v4, v0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v21/toggle/QsBluetooth;->mBA:Landroid/bluetooth/BluetoothAdapter;

    .line 105
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QsBluetooth;->mBA:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsBluetooth;->updateState(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsBluetooth;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Landroid/support/v21/ScrollUtils;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method private updateIconAndText()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    const/4 v5, 0x0

    move v2, v5

    .line 62
    const-string v5, "Bluetooth"

    move-object v3, v5

    .line 63
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/toggle/QsBluetooth;->getActiveStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 74
    :goto_0
    move-object v5, v0

    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v21/toggle/QsBluetooth;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v8, v0

    const-string v9, "qs_color"

    const-string v10, "color"

    invoke-virtual {v8, v9, v10}, Landroid/support/v21/toggle/QsBluetooth;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v21/toggle/QsBluetooth;->updateQsTitle(Ljava/lang/String;I)V

    .line 75
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/toggle/QsBluetooth;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v21/toggle/QsBluetooth;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 76
    move-object v5, v0

    const/4 v6, 0x1

    move-object v7, v0

    const-string v8, "qs_color"

    invoke-virtual {v7, v8}, Landroid/support/v21/toggle/QsBluetooth;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v21/toggle/QsBluetooth;->showIndicator(ZI)V

    return-void

    .line 65
    :pswitch_0
    move-object v5, v0

    const-string v6, "qs_bt_on"

    const-string v7, "drawable"

    invoke-direct {v5, v6, v7}, Landroid/support/v21/toggle/QsBluetooth;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 66
    goto :goto_0

    .line 68
    :pswitch_1
    move-object v5, v0

    const-string v6, "qs_bt_ing"

    const-string v7, "drawable"

    invoke-direct {v5, v6, v7}, Landroid/support/v21/toggle/QsBluetooth;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 69
    goto :goto_0

    .line 71
    :pswitch_2
    move-object v5, v0

    const-string v6, "qs_bt_off"

    const-string v7, "drawable"

    invoke-direct {v5, v6, v7}, Landroid/support/v21/toggle/QsBluetooth;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 72
    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method canClick()Z
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    .line 87
    move v4, v2

    const/4 v5, 0x0

    if-gt v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsBluetooth;->mBA:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

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

    const-string v6, "android.settings.BLUETOOTH_SETTINGS"

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

.method protected onAttachedToWindow()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/support/v21/toggle/QuickSettingsView;->onAttachedToWindow()V

    .line 113
    new-instance v4, Landroid/content/IntentFilter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 114
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QsBluetooth;->mR:Landroid/content/BroadcastReceiver;

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
    .line 121
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/support/v21/toggle/QuickSettingsView;->onDetachedFromWindow()V

    .line 122
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsBluetooth;->mR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected toggleState()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsBluetooth;->getActiveStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 35
    :goto_0
    return-void

    .line 29
    :pswitch_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsBluetooth;->canClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsBluetooth;->mBA:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v2

    .line 31
    :cond_0
    goto :goto_0

    .line 33
    :pswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsBluetooth;->canClick()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsBluetooth;->mBA:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    .line 35
    :cond_1
    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateState(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    move v1, p1

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 56
    :goto_0
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/toggle/QsBluetooth;->updateIconAndText()V

    return-void

    .line 44
    :pswitch_0
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v21/toggle/QsBluetooth;->setActive(I)V

    .line 45
    goto :goto_0

    .line 47
    :pswitch_1
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v21/toggle/QsBluetooth;->setActive(I)V

    .line 48
    goto :goto_0

    .line 50
    :pswitch_2
    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v21/toggle/QsBluetooth;->setActive(I)V

    .line 51
    goto :goto_0

    .line 53
    :pswitch_3
    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v21/toggle/QsBluetooth;->setActive(I)V

    .line 54
    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
