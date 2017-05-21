.class Landroid/support/v21/toggle/QsSound$100000000;
.super Landroid/content/BroadcastReceiver;
.source "QsSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/toggle/QsSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/toggle/QsSound;


# direct methods
.method constructor <init>(Landroid/support/v21/toggle/QsSound;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/toggle/QsSound$100000000;->this$0:Landroid/support/v21/toggle/QsSound;

    return-void
.end method

.method static access$0(Landroid/support/v21/toggle/QsSound$100000000;)Landroid/support/v21/toggle/QsSound;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsSound$100000000;->this$0:Landroid/support/v21/toggle/QsSound;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
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
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsSound$100000000;->this$0:Landroid/support/v21/toggle/QsSound;

    invoke-static {v4}, Landroid/support/v21/toggle/QsSound;->access$1000000(Landroid/support/v21/toggle/QsSound;)V

    return-void
.end method
