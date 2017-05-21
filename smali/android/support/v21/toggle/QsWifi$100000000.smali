.class Landroid/support/v21/toggle/QsWifi$100000000;
.super Landroid/content/BroadcastReceiver;
.source "QsWifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/toggle/QsWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/toggle/QsWifi;


# direct methods
.method constructor <init>(Landroid/support/v21/toggle/QsWifi;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/toggle/QsWifi$100000000;->this$0:Landroid/support/v21/toggle/QsWifi;

    return-void
.end method

.method static access$0(Landroid/support/v21/toggle/QsWifi$100000000;)Landroid/support/v21/toggle/QsWifi;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsWifi$100000000;->this$0:Landroid/support/v21/toggle/QsWifi;

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
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    .line 51
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/toggle/QsWifi$100000000;->this$0:Landroid/support/v21/toggle/QsWifi;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v21/toggle/QsWifi;->updateState(I)V

    .line 52
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/toggle/QsWifi$100000000;->this$0:Landroid/support/v21/toggle/QsWifi;

    invoke-static {v6}, Landroid/support/v21/toggle/QsWifi;->access$1000004(Landroid/support/v21/toggle/QsWifi;)V

    return-void
.end method
