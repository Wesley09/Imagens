.class Lcom/tenten/LayoutAnimation1$100000006;
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
    name = "100000006"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenten/LayoutAnimation1$100000006$100000005;
    }
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

    iput-object v4, v3, Lcom/tenten/LayoutAnimation1$100000006;->this$0:Lcom/tenten/LayoutAnimation1;

    return-void
.end method

.method static access$0(Lcom/tenten/LayoutAnimation1$100000006;)Lcom/tenten/LayoutAnimation1;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayoutAnimation1$100000006;->this$0:Lcom/tenten/LayoutAnimation1;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayoutAnimation1$100000006;->this$0:Lcom/tenten/LayoutAnimation1;

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayoutAnimation1$100000006;->this$0:Lcom/tenten/LayoutAnimation1;

    iget-object v3, v3, Lcom/tenten/LayoutAnimation1;->exit:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/tenten/LayoutAnimation1;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/tenten/LayoutAnimation1$100000006$100000005;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/tenten/LayoutAnimation1$100000006$100000005;-><init>(Lcom/tenten/LayoutAnimation1$100000006;)V

    check-cast v3, Ljava/lang/Runnable;

    const/16 v4, 0x12c

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    return-void
.end method
