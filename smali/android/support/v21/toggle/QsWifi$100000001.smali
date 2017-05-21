.class Landroid/support/v21/toggle/QsWifi$100000001;
.super Ljava/lang/Object;
.source "QsWifi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/toggle/QsWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/toggle/QsWifi;


# direct methods
.method constructor <init>(Landroid/support/v21/toggle/QsWifi;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/toggle/QsWifi$100000001;->this$0:Landroid/support/v21/toggle/QsWifi;

    return-void
.end method

.method static access$0(Landroid/support/v21/toggle/QsWifi$100000001;)Landroid/support/v21/toggle/QsWifi;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsWifi$100000001;->this$0:Landroid/support/v21/toggle/QsWifi;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QsWifi$100000001;->this$0:Landroid/support/v21/toggle/QsWifi;

    invoke-static {v5}, Landroid/support/v21/toggle/QsWifi;->access$L1000003(Landroid/support/v21/toggle/QsWifi;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QsWifi$100000001;->this$0:Landroid/support/v21/toggle/QsWifi;

    invoke-static {v5}, Landroid/support/v21/toggle/QsWifi;->access$L1000003(Landroid/support/v21/toggle/QsWifi;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    move-object v2, v5

    .line 120
    move-object v5, v2

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    move-object v3, v5

    .line 121
    move-object v5, v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_0

    move-object v5, v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_1

    .line 123
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QsWifi$100000001;->this$0:Landroid/support/v21/toggle/QsWifi;

    move-object v6, v2

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/v21/toggle/QsWifi;->access$S1000000(Landroid/support/v21/toggle/QsWifi;Ljava/lang/String;)V

    .line 126
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QsWifi$100000001;->this$0:Landroid/support/v21/toggle/QsWifi;

    invoke-static {v5}, Landroid/support/v21/toggle/QsWifi;->access$L1000002(Landroid/support/v21/toggle/QsWifi;)Landroid/os/Handler;

    move-result-object v5

    move-object v6, v0

    const/16 v7, 0x64

    new-instance v8, Ljava/lang/Integer;

    move v10, v7

    move-object v11, v8

    move-object v7, v11

    move v8, v10

    move-object v9, v11

    move v10, v8

    move-object v11, v9

    move-object v8, v11

    move v9, v10

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method
