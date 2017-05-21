.class Landroid/support/v21/ALPanels$100000002;
.super Ljava/lang/Object;
.source "ALPanels.java"

# interfaces
.implements Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/ALPanels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
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

    iput-object v4, v3, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    return-void
.end method

.method static access$0(Landroid/support/v21/ALPanels$100000002;)Landroid/support/v21/ALPanels;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onDownMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget-object v4, v4, Landroid/support/v21/ALPanels;->mScrollable:Landroid/support/v21/ObservableScrollView;

    invoke-virtual {v4}, Landroid/support/v21/ObservableScrollView;->getCurrentScrollY()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/support/v21/ALPanels;->mScrollYOnDownMotion:F

    .line 113
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget-object v4, v4, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-static {v4}, Lcom/nineoldandroids/view/ViewHelper;->getTranslationY(Landroid/view/View;)F

    move-result v4

    iput v4, v3, Landroid/support/v21/ALPanels;->mInitialY:F

    return-void
.end method

.method public onMoveMotionEvent(Landroid/view/MotionEvent;FF)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "FF)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v7, v2

    const/4 v8, 0x0

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    move v7, v2

    move v8, v3

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 121
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v21/ALPanels;->mMoved:Z

    .line 122
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget-object v7, v7, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v21/TouchInterceptionFrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 124
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget-object v7, v7, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-virtual {v7}, Landroid/support/v21/TouchInterceptionFrameLayout;->getTranslationY()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget v8, v8, Landroid/support/v21/ALPanels;->mScrollYOnDownMotion:F

    sub-float/2addr v7, v8

    move v8, v3

    add-float/2addr v7, v8

    move v5, v7

    .line 125
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v21/ALPanels;->mMoved:Z

    .line 126
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget v8, v8, Landroid/support/v21/ALPanels;->mIntersectionHeight:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 128
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget v7, v7, Landroid/support/v21/ALPanels;->mIntersectionHeight:I

    neg-int v7, v7

    int-to-float v7, v7

    move v5, v7

    .line 141
    :cond_1
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    move v8, v5

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/support/v21/ALPanels;->access$1000013(Landroid/support/v21/ALPanels;FZ)V

    .line 142
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget-object v7, v7, Landroid/support/v21/ALPanels;->mScrollable:Landroid/support/v21/ObservableScrollView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v21/ObservableScrollView;->scrollVerticallyTo(I)V

    .line 143
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget-object v8, v8, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-static {v8}, Lcom/nineoldandroids/view/ViewHelper;->getTranslationY(Landroid/view/View;)F

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget v9, v9, Landroid/support/v21/ALPanels;->mInitialY:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/v21/ALPanels;->mMovedDistanceY:F

    return-void

    .line 130
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    invoke-static {v7}, Landroid/support/v21/ALPanels;->access$1000008(Landroid/support/v21/ALPanels;)F

    move-result v7

    move v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    .line 132
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    invoke-static {v7}, Landroid/support/v21/ALPanels;->access$1000008(Landroid/support/v21/ALPanels;)F

    move-result v7

    move v5, v7

    .line 133
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget-object v7, v7, Landroid/support/v21/ALPanels;->mScrollable:Landroid/support/v21/ObservableScrollView;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    invoke-static {v8}, Landroid/support/v21/ALPanels;->access$1000008(Landroid/support/v21/ALPanels;)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/support/v21/ObservableScrollView;->scrollVerticallyTo(I)V

    goto :goto_0

    .line 135
    :cond_3
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    invoke-static {v8}, Landroid/support/v21/ALPanels;->access$1000008(Landroid/support/v21/ALPanels;)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 137
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget v7, v7, Landroid/support/v21/ALPanels;->mDivider:I

    int-to-float v7, v7

    move v5, v7

    goto :goto_0

    .line 138
    :cond_4
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    invoke-static {v8}, Landroid/support/v21/ALPanels;->access$1000008(Landroid/support/v21/ALPanels;)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 139
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget-object v7, v7, Landroid/support/v21/ALPanels;->mScrollable:Landroid/support/v21/ObservableScrollView;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget-object v8, v8, Landroid/support/v21/ALPanels;->mScrollable:Landroid/support/v21/ObservableScrollView;

    invoke-virtual {v8}, Landroid/support/v21/ObservableScrollView;->getMaxScrollAmount()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v21/ObservableScrollView;->scrollVerticallyTo(I)V

    goto :goto_0
.end method

.method public onUpOrCancelMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget-boolean v3, v3, Landroid/support/v21/ALPanels;->mMoved:Z

    if-eqz v3, :cond_0

    .line 157
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    invoke-static {v3}, Landroid/support/v21/ALPanels;->access$1000015(Landroid/support/v21/ALPanels;)V

    .line 159
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v21/ALPanels;->mMoved:Z

    return-void
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;ZFF)Z
    .locals 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget v8, v8, Landroid/support/v21/ALPanels;->mIntersectionHeight:I

    int-to-float v8, v8

    move v6, v8

    .line 106
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget-object v9, v9, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-static {v9}, Lcom/nineoldandroids/view/ViewHelper;->getTranslationY(Landroid/view/View;)F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    move v8, v2

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels$100000002;->this$0:Landroid/support/v21/ALPanels;

    iget-object v8, v8, Landroid/support/v21/ALPanels;->mScrollable:Landroid/support/v21/ObservableScrollView;

    invoke-virtual {v8}, Landroid/support/v21/ObservableScrollView;->getCurrentScrollY()I

    move-result v8

    int-to-float v8, v8

    move v9, v4

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    :goto_0
    move v0, v8

    return v0

    :cond_1
    const/4 v8, 0x1

    goto :goto_0
.end method
