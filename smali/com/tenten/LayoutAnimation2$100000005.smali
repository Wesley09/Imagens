.class Lcom/tenten/LayoutAnimation2$100000005;
.super Ljava/lang/Object;
.source "LayoutAnimation2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenten/LayoutAnimation2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation


# instance fields
.field private final this$0:Lcom/tenten/LayoutAnimation2;


# direct methods
.method constructor <init>(Lcom/tenten/LayoutAnimation2;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tenten/LayoutAnimation2$100000005;->this$0:Lcom/tenten/LayoutAnimation2;

    return-void
.end method

.method static access$0(Lcom/tenten/LayoutAnimation2$100000005;)Lcom/tenten/LayoutAnimation2;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayoutAnimation2$100000005;->this$0:Lcom/tenten/LayoutAnimation2;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayoutAnimation2$100000005;->this$0:Lcom/tenten/LayoutAnimation2;

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayoutAnimation2$100000005;->this$0:Lcom/tenten/LayoutAnimation2;

    iget-object v3, v3, Lcom/tenten/LayoutAnimation2;->enter:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/tenten/LayoutAnimation2;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayoutAnimation2$100000005;->this$0:Lcom/tenten/LayoutAnimation2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tenten/LayoutAnimation2;->setVisibility(I)V

    return-void
.end method
