.class Landroid/support/v21/toggle/QsSync$100000000;
.super Landroid/content/BroadcastReceiver;
.source "QsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/toggle/QsSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/toggle/QsSync;


# direct methods
.method constructor <init>(Landroid/support/v21/toggle/QsSync;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/toggle/QsSync$100000000;->this$0:Landroid/support/v21/toggle/QsSync;

    return-void
.end method

.method static access$0(Landroid/support/v21/toggle/QsSync$100000000;)Landroid/support/v21/toggle/QsSync;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsSync$100000000;->this$0:Landroid/support/v21/toggle/QsSync;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
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
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsSync$100000000;->this$0:Landroid/support/v21/toggle/QsSync;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsSync;->onStatusChanged(I)V

    return-void
.end method
