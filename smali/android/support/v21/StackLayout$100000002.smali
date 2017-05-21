.class Landroid/support/v21/StackLayout$100000002;
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
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/StackLayout;

.field private final val$c:Landroid/view/View;

.field private final val$vg:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/v21/StackLayout;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v21/StackLayout$100000002;->this$0:Landroid/support/v21/StackLayout;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v21/StackLayout$100000002;->val$vg:Landroid/view/ViewGroup;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v21/StackLayout$100000002;->val$c:Landroid/view/View;

    return-void
.end method

.method static access$0(Landroid/support/v21/StackLayout$100000002;)Landroid/support/v21/StackLayout;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/StackLayout$100000002;->this$0:Landroid/support/v21/StackLayout;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10
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
    .line 68
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    const-string v5, "android.support.v21.LayoutLinear"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/StackLayout$100000002;->val$vg:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/StackLayout$100000002;->val$c:Landroid/view/View;

    move-object v6, v1

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 71
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/StackLayout$100000002;->this$0:Landroid/support/v21/StackLayout;

    move-object v6, v1

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v5, v6}, Landroid/support/v21/StackLayout;->setTranslationY(F)V

    .line 72
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/StackLayout$100000002;->val$c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 73
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/StackLayout$100000002;->val$vg:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->requestLayout()V

    .line 74
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/StackLayout$100000002;->this$0:Landroid/support/v21/StackLayout;

    invoke-virtual {v5}, Landroid/support/v21/StackLayout;->requestLayout()V

    .line 78
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v5

    move-object v3, v5

    new-instance v5, Ljava/lang/NoClassDefFoundError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 76
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/StackLayout$100000002;->val$c:Landroid/view/View;

    move-object v6, v1

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 77
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/StackLayout$100000002;->val$vg:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->requestLayout()V

    .line 78
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/StackLayout$100000002;->this$0:Landroid/support/v21/StackLayout;

    invoke-virtual {v5}, Landroid/support/v21/StackLayout;->requestLayout()V

    goto :goto_0
.end method
