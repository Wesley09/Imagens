.class Landroid/support/v21/StackLayout$100000000;
.super Ljava/lang/Object;
.source "StackLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/StackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/StackLayout;

.field private final val$c:Landroid/view/View;

.field private final val$nn:I


# direct methods
.method constructor <init>(Landroid/support/v21/StackLayout;Landroid/view/View;I)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v21/StackLayout$100000000;->this$0:Landroid/support/v21/StackLayout;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v21/StackLayout$100000000;->val$c:Landroid/view/View;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/v21/StackLayout$100000000;->val$nn:I

    return-void
.end method

.method static access$0(Landroid/support/v21/StackLayout$100000000;)Landroid/support/v21/StackLayout;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/StackLayout$100000000;->this$0:Landroid/support/v21/StackLayout;

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
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/StackLayout$100000000;->val$c:Landroid/view/View;

    move-object v4, v1

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v21/StackLayout$100000000;->val$nn:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 34
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/StackLayout$100000000;->val$c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return-void
.end method
