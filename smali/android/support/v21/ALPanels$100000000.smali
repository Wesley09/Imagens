.class Landroid/support/v21/ALPanels$100000000;
.super Landroid/content/BroadcastReceiver;
.source "ALPanels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/ALPanels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/ALPanels;


# direct methods
.method constructor <init>(Landroid/support/v21/ALPanels;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/ALPanels$100000000;->this$0:Landroid/support/v21/ALPanels;

    return-void
.end method

.method static access$0(Landroid/support/v21/ALPanels$100000000;)Landroid/support/v21/ALPanels;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels$100000000;->this$0:Landroid/support/v21/ALPanels;

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
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "material"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/ALPanels$100000000;->this$0:Landroid/support/v21/ALPanels;

    move-object v5, v2

    const-string v6, "expand"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/support/v21/ALPanels;->access$1000009(Landroid/support/v21/ALPanels;IZ)V

    :cond_0
    return-void
.end method
