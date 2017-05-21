.class Lcom/tenten/LayoutAnimation1$100000004;
.super Ljava/lang/Object;
.source "LayoutAnimation1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenten/LayoutAnimation1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000004"
.end annotation


# instance fields
.field private final this$0:Lcom/tenten/LayoutAnimation1;


# direct methods
.method constructor <init>(Lcom/tenten/LayoutAnimation1;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tenten/LayoutAnimation1$100000004;->this$0:Lcom/tenten/LayoutAnimation1;

    return-void
.end method

.method static access$0(Lcom/tenten/LayoutAnimation1$100000004;)Lcom/tenten/LayoutAnimation1;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayoutAnimation1$100000004;->this$0:Lcom/tenten/LayoutAnimation1;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation1$100000004;->this$0:Lcom/tenten/LayoutAnimation1;

    move-object v5, v0

    iget-object v5, v5, Lcom/tenten/LayoutAnimation1$100000004;->this$0:Lcom/tenten/LayoutAnimation1;

    iget-object v5, v5, Lcom/tenten/LayoutAnimation1;->exit:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/tenten/LayoutAnimation1;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "labas"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 110
    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation1$100000004;->this$0:Lcom/tenten/LayoutAnimation1;

    iget-object v4, v4, Lcom/tenten/LayoutAnimation1;->c:Landroid/content/Context;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation1$100000004;->this$0:Lcom/tenten/LayoutAnimation1;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/tenten/LayoutAnimation1;->setVisibility(I)V

    return-void
.end method
