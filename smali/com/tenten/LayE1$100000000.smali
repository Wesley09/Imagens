.class Lcom/tenten/LayE1$100000000;
.super Landroid/content/BroadcastReceiver;
.source "LayE1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenten/LayE1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/tenten/LayE1;


# direct methods
.method constructor <init>(Lcom/tenten/LayE1;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tenten/LayE1$100000000;->this$0:Lcom/tenten/LayE1;

    return-void
.end method

.method static access$0(Lcom/tenten/LayE1$100000000;)Lcom/tenten/LayE1;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayE1$100000000;->this$0:Lcom/tenten/LayE1;

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

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayE1$100000000;->this$0:Lcom/tenten/LayE1;

    move-object v5, v0

    iget-object v5, v5, Lcom/tenten/LayE1$100000000;->this$0:Lcom/tenten/LayE1;

    invoke-static {v5}, Lcom/tenten/LayE1;->access$L1000001(Lcom/tenten/LayE1;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tenten/LayE1;->startAnimation(Landroid/view/animation/Animation;)V

    .line 42
    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayE1$100000000;->this$0:Lcom/tenten/LayE1;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tenten/LayE1;->setVisibility(I)V

    return-void
.end method
