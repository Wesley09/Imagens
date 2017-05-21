.class Lcom/tenten/LayoutAnimation3$100000003;
.super Ljava/lang/Object;
.source "LayoutAnimation3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenten/LayoutAnimation3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lcom/tenten/LayoutAnimation3;


# direct methods
.method constructor <init>(Lcom/tenten/LayoutAnimation3;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tenten/LayoutAnimation3$100000003;->this$0:Lcom/tenten/LayoutAnimation3;

    return-void
.end method

.method static access$0(Lcom/tenten/LayoutAnimation3$100000003;)Lcom/tenten/LayoutAnimation3;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayoutAnimation3$100000003;->this$0:Lcom/tenten/LayoutAnimation3;

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
    .line 75
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayoutAnimation3$100000003;->this$0:Lcom/tenten/LayoutAnimation3;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tenten/LayoutAnimation3;->setVisibility(I)V

    .line 76
    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayoutAnimation3$100000003;->this$0:Lcom/tenten/LayoutAnimation3;

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayoutAnimation3$100000003;->this$0:Lcom/tenten/LayoutAnimation3;

    iget-object v3, v3, Lcom/tenten/LayoutAnimation3;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/tenten/LayoutAnimation3;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
