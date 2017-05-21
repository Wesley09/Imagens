.class public Landroid/support/v21/toggle/QsHotspot;
.super Landroid/support/v21/toggle/QuickSettingsView;
.source "QsHotspot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/toggle/QsHotspot$100000000;
    }
.end annotation


# instance fields
.field mCon:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v21/toggle/QuickSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    move-object v4, v0

    move-object v5, v1

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, v4, Landroid/support/v21/toggle/QsHotspot;->mCon:Landroid/net/wifi/WifiManager;

    .line 40
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/toggle/QsHotspot;->isTether()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsHotspot;->setActive(I)V

    .line 41
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v21/toggle/QsHotspot;->updateState()V

    .line 42
    move-object v4, v0

    new-instance v5, Landroid/support/v21/toggle/QsHotspot$100000000;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v21/toggle/QsHotspot$100000000;-><init>(Landroid/support/v21/toggle/QsHotspot;)V

    new-instance v6, Landroid/content/IntentFilter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsHotspot;->updateQsBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    .line 40
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000001(Landroid/support/v21/toggle/QsHotspot;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/toggle/QsHotspot;->updateState()V

    return-void
.end method

.method private updateState()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsHotspot;->getActiveStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 63
    :goto_0
    move-object v2, v0

    const-string v3, "Hostspot"

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsHotspot;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v0

    const-string v6, "qs_color"

    const-string v7, "color"

    invoke-virtual {v5, v6, v7}, Landroid/support/v21/toggle/QsHotspot;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v21/toggle/QsHotspot;->updateQsTitle(Ljava/lang/String;I)V

    return-void

    .line 57
    :pswitch_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsHotspot;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    const-string v5, "qs_hotspot_on"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsHotspot;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsHotspot;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 58
    goto :goto_0

    .line 60
    :pswitch_1
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsHotspot;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    const-string v5, "qs_hotspot_off"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsHotspot;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsHotspot;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 61
    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected handleLongClick()Z
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 15
    move-object v4, v2

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 16
    move-object v4, v2

    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 17
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 18
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method isTether()Z
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsHotspot;->mCon:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method protected toggleState()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsHotspot;->isTether()Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsHotspot;->mCon:Landroid/net/wifi/WifiManager;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsHotspot;->mCon:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    .line 27
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsHotspot;->setActive(I)V

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsHotspot;->mCon:Landroid/net/wifi/WifiManager;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsHotspot;->mCon:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    .line 30
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsHotspot;->setActive(I)V

    goto :goto_0
.end method
