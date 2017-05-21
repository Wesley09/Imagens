.class Landroid/support/v21/toggle/QsAirplane$100000000;
.super Landroid/content/BroadcastReceiver;
.source "QsAirplane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/toggle/QsAirplane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/toggle/QsAirplane;


# direct methods
.method constructor <init>(Landroid/support/v21/toggle/QsAirplane;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/toggle/QsAirplane$100000000;->this$0:Landroid/support/v21/toggle/QsAirplane;

    return-void
.end method

.method static access$0(Landroid/support/v21/toggle/QsAirplane$100000000;)Landroid/support/v21/toggle/QsAirplane;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsAirplane$100000000;->this$0:Landroid/support/v21/toggle/QsAirplane;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
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
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsAirplane$100000000;->this$0:Landroid/support/v21/toggle/QsAirplane;

    move-object v5, v2

    const-string v6, "state"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsAirplane;->updateState(I)V

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
