.class Landroid/support/v21/ALPanels$100000003;
.super Ljava/lang/Object;
.source "ALPanels.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/ALPanels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/ALPanels;


# direct methods
.method constructor <init>(Landroid/support/v21/ALPanels;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/ALPanels$100000003;->this$0:Landroid/support/v21/ALPanels;

    return-void
.end method

.method static access$0(Landroid/support/v21/ALPanels$100000003;)Landroid/support/v21/ALPanels;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels$100000003;->this$0:Landroid/support/v21/ALPanels;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/ValueAnimator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels$100000003;->this$0:Landroid/support/v21/ALPanels;

    move-object v4, v1

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/support/v21/ALPanels;->access$1000013(Landroid/support/v21/ALPanels;FZ)V

    return-void
.end method
