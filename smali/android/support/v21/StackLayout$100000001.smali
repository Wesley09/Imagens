.class Landroid/support/v21/StackLayout$100000001;
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
    name = "100000001"
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

    iput-object v6, v5, Landroid/support/v21/StackLayout$100000001;->this$0:Landroid/support/v21/StackLayout;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v21/StackLayout$100000001;->val$vg:Landroid/view/ViewGroup;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v21/StackLayout$100000001;->val$c:Landroid/view/View;

    return-void
.end method

.method static access$0(Landroid/support/v21/StackLayout$100000001;)Landroid/support/v21/StackLayout;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/StackLayout$100000001;->this$0:Landroid/support/v21/StackLayout;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11
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
    .line 45
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    const-string v6, "android.support.v21.LayoutLinear"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/StackLayout$100000001;->val$vg:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 47
    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v4, v6

    .line 48
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/StackLayout$100000001;->val$c:Landroid/view/View;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 49
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/StackLayout$100000001;->val$c:Landroid/view/View;

    move-object v7, v1

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 50
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/StackLayout$100000001;->this$0:Landroid/support/v21/StackLayout;

    move-object v7, v1

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v6, v7}, Landroid/support/v21/StackLayout;->setTranslationY(F)V

    .line 51
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/StackLayout$100000001;->val$vg:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    .line 52
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/StackLayout$100000001;->this$0:Landroid/support/v21/StackLayout;

    invoke-virtual {v6}, Landroid/support/v21/StackLayout;->requestLayout()V

    .line 56
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v6

    move-object v3, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 54
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/StackLayout$100000001;->val$c:Landroid/view/View;

    move-object v7, v1

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 55
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/StackLayout$100000001;->val$vg:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    .line 56
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/StackLayout$100000001;->this$0:Landroid/support/v21/StackLayout;

    invoke-virtual {v6}, Landroid/support/v21/StackLayout;->requestLayout()V

    goto :goto_0
.end method
