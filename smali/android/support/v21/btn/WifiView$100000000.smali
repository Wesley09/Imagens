.class Landroid/support/v21/btn/WifiView$100000000;
.super Landroid/content/BroadcastReceiver;
.source "WifiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/btn/WifiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/btn/WifiView;


# direct methods
.method constructor <init>(Landroid/support/v21/btn/WifiView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/btn/WifiView$100000000;->this$0:Landroid/support/v21/btn/WifiView;

    return-void
.end method

.method static access$0(Landroid/support/v21/btn/WifiView$100000000;)Landroid/support/v21/btn/WifiView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/WifiView$100000000;->this$0:Landroid/support/v21/btn/WifiView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 36
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/WifiView$100000000;->this$0:Landroid/support/v21/btn/WifiView;

    iget-object v7, v7, Landroid/support/v21/btn/WifiView;->A_WIFI_STATE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/WifiView$100000000;->this$0:Landroid/support/v21/btn/WifiView;

    iget-object v7, v7, Landroid/support/v21/btn/WifiView;->A_WIFI_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/WifiView$100000000;->this$0:Landroid/support/v21/btn/WifiView;

    iget-object v7, v7, Landroid/support/v21/btn/WifiView;->A_RSSI_CHANGED:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 37
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/WifiView$100000000;->this$0:Landroid/support/v21/btn/WifiView;

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/btn/WifiView;->updateWifi(Landroid/content/Intent;Ljava/lang/String;)V

    .line 39
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/WifiView$100000000;->this$0:Landroid/support/v21/btn/WifiView;

    iget-object v7, v7, Landroid/support/v21/btn/WifiView;->A_INET_COND:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/WifiView$100000000;->this$0:Landroid/support/v21/btn/WifiView;

    iget-object v7, v7, Landroid/support/v21/btn/WifiView;->A_CONECT_CHANGE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 39
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/WifiView$100000000;->this$0:Landroid/support/v21/btn/WifiView;

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/btn/WifiView;->updateKonek(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
