.class public Landroid/support/v21/toggle/QsWifi;
.super Landroid/support/v21/toggle/QuickSettingsView;
.source "QsWifi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/toggle/QsWifi$100000000;,
        Landroid/support/v21/toggle/QsWifi$100000001;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mWifi:Landroid/net/wifi/WifiManager;

.field private mWifiName:Ljava/lang/String;

.field private wm:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v21/toggle/QuickSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v6, v0

    const-string v7, "Wifi"

    iput-object v7, v6, Landroid/support/v21/toggle/QsWifi;->mWifiName:Ljava/lang/String;

    move-object v6, v0

    new-instance v7, Landroid/support/v21/toggle/QsWifi$100000000;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v21/toggle/QsWifi$100000000;-><init>(Landroid/support/v21/toggle/QsWifi;)V

    iput-object v7, v6, Landroid/support/v21/toggle/QsWifi;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, v6, Landroid/support/v21/toggle/QsWifi;->wm:Landroid/net/wifi/WifiManager;

    .line 63
    move-object v6, v0

    new-instance v7, Landroid/os/Handler;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v7, v6, Landroid/support/v21/toggle/QsWifi;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v6, Landroid/content/IntentFilter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 65
    move-object v6, v4

    const-string v7, "android.intent.action.TIME_TICK"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/toggle/QsWifi;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/toggle/QsWifi;->updateQsBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 67
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/toggle/QsWifi;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v21/toggle/QsWifi;->updateState(I)V

    return-void
.end method

.method static synthetic access$1000004(Landroid/support/v21/toggle/QsWifi;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/toggle/QsWifi;->updateIconText()V

    return-void
.end method

.method static synthetic access$L1000000(Landroid/support/v21/toggle/QsWifi;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsWifi;->mWifiName:Ljava/lang/String;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000002(Landroid/support/v21/toggle/QsWifi;)Landroid/os/Handler;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsWifi;->mHandler:Landroid/os/Handler;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000003(Landroid/support/v21/toggle/QsWifi;)Landroid/net/wifi/WifiManager;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsWifi;->wm:Landroid/net/wifi/WifiManager;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Landroid/support/v21/toggle/QsWifi;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/toggle/QsWifi;->mWifiName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000002(Landroid/support/v21/toggle/QsWifi;Landroid/os/Handler;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/toggle/QsWifi;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$S1000003(Landroid/support/v21/toggle/QsWifi;Landroid/net/wifi/WifiManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/toggle/QsWifi;->wm:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private getWifiName()Ljava/lang/String;
    .locals 9

    .prologue
    .line 113
    move-object v0, p0

    new-instance v4, Landroid/support/v21/toggle/QsWifi$100000001;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v21/toggle/QsWifi$100000001;-><init>(Landroid/support/v21/toggle/QsWifi;)V

    move-object v2, v4

    .line 129
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsWifi;->mHandler:Landroid/os/Handler;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsWifi;->mHandler:Landroid/os/Handler;

    move-object v5, v2

    const/16 v6, 0x7d0

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 131
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsWifi;->mWifiName:Ljava/lang/String;

    const-string v5, "Wifi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsWifi;->mWifiName:Ljava/lang/String;

    const-string v5, "Wi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 133
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsWifi;->mWifiName:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/toggle/QsWifi;->mWifiName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 137
    :goto_0
    return-object v0

    :cond_1
    const-string v4, "Wi-Fi"

    move-object v0, v4

    goto :goto_0
.end method

.method private updateIconText()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    const/4 v4, 0x0

    move v2, v4

    .line 94
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsWifi;->getActiveStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 106
    :goto_0
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/toggle/QsWifi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsWifi;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 107
    move-object v4, v0

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v21/toggle/QsWifi;->getWifiName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/toggle/QsWifi;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v7, v0

    const-string v8, "qs_color"

    const-string v9, "color"

    invoke-virtual {v7, v8, v9}, Landroid/support/v21/toggle/QsWifi;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsWifi;->updateQsTitle(Ljava/lang/String;I)V

    .line 108
    move-object v4, v0

    const/4 v5, 0x1

    move-object v6, v0

    const-string v7, "qs_color"

    invoke-virtual {v6, v7}, Landroid/support/v21/toggle/QsWifi;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsWifi;->showIndicator(ZI)V

    return-void

    .line 97
    :pswitch_0
    move-object v4, v0

    const-string v5, "qs_wifi_off"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsWifi;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 98
    goto :goto_0

    .line 100
    :pswitch_1
    move-object v4, v0

    const-string v5, "qs_wifi_prepare"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsWifi;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 101
    goto :goto_0

    .line 103
    :pswitch_2
    move-object v4, v0

    const-string v5, "qs_wifi_on"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsWifi;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 104
    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
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

    const-string v6, "android.settings.WIFI_SETTINGS"

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsWifi;->getActiveStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 39
    :goto_0
    return-void

    .line 31
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsWifi;->wm:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 32
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsWifi;->wm:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    .line 34
    :cond_0
    goto :goto_0

    .line 36
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsWifi;->wm:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_1

    .line 37
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsWifi;->wm:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    .line 39
    :cond_1
    goto :goto_0

    .line 29
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
    .line 72
    move-object v0, p0

    move v1, p1

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 88
    :goto_0
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/toggle/QsWifi;->updateIconText()V

    return-void

    .line 76
    :pswitch_0
    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v21/toggle/QsWifi;->setActive(I)V

    .line 77
    goto :goto_0

    .line 79
    :pswitch_1
    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v21/toggle/QsWifi;->setActive(I)V

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v21/toggle/QsWifi;->setActive(I)V

    .line 83
    goto :goto_0

    .line 85
    :pswitch_3
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v21/toggle/QsWifi;->setActive(I)V

    .line 86
    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
