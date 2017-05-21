.class public Landroid/support/v21/ALPanels;
.super Landroid/widget/FrameLayout;
.source "ALPanels.java"

# interfaces
.implements Landroid/support/v21/ObservableScrollViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/ALPanels$100000000;,
        Landroid/support/v21/ALPanels$100000002;,
        Landroid/support/v21/ALPanels$100000001;,
        Landroid/support/v21/ALPanels$100000003;
    }
.end annotation


# static fields
.field public static final STATE_BOTTOM:I = 0x2

.field public static final STATE_MIDLE:I = 0x1

.field public static final STATE_TOP:I


# instance fields
.field private cc:Landroid/content/Context;

.field d:Ljava/lang/String;

.field i:Ljava/lang/String;

.field mAnimDur:I

.field mDivider:I

.field mFlexiblePanel:I

.field mHeader:Landroid/support/v21/ALHeaderPanels;

.field mHeaderHeight:I

.field mInitialY:F

.field mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

.field mInterceptorListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

.field mIntersectionHeight:I

.field mMoved:Z

.field mMovedDistanceY:F

.field mPanel:Landroid/view/View;

.field mScrollYOnDownMotion:F

.field mScrollable:Landroid/support/v21/ObservableScrollView;

.field mSlidingSlop:I

.field mSlidingState:I

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const-string v5, "dimen"

    iput-object v5, v4, Landroid/support/v21/ALPanels;->d:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "id"

    iput-object v5, v4, Landroid/support/v21/ALPanels;->i:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Landroid/support/v21/ALPanels$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v21/ALPanels$100000000;-><init>(Landroid/support/v21/ALPanels;)V

    iput-object v5, v4, Landroid/support/v21/ALPanels;->receiver:Landroid/content/BroadcastReceiver;

    move-object v4, v0

    const/16 v5, 0x14

    iput v5, v4, Landroid/support/v21/ALPanels;->mDivider:I

    move-object v4, v0

    const/16 v5, 0xc8

    iput v5, v4, Landroid/support/v21/ALPanels;->mAnimDur:I

    move-object v4, v0

    new-instance v5, Landroid/support/v21/ALPanels$100000002;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v21/ALPanels$100000002;-><init>(Landroid/support/v21/ALPanels;)V

    iput-object v5, v4, Landroid/support/v21/ALPanels;->mInterceptorListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

    .line 55
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/ALPanels;->cc:Landroid/content/Context;

    .line 56
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/ALPanels;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "com.ali.material"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 57
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/ALPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "max_header_size"

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels;->d:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/ALPanels;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/support/v21/ALPanels;->mHeaderHeight:I

    .line 58
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/ALPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "panel_height"

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels;->d:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/ALPanels;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/support/v21/ALPanels;->mFlexiblePanel:I

    .line 59
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/ALPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "intersection_height"

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels;->d:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/ALPanels;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/support/v21/ALPanels;->mIntersectionHeight:I

    .line 60
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/ALPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "sliding_slop"

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels;->d:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/ALPanels;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/support/v21/ALPanels;->mSlidingSlop:I

    .line 61
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/ALPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "panel_divider"

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels;->d:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/ALPanels;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/support/v21/ALPanels;->mDivider:I

    .line 62
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/ALPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "animation_duration"

    const-string v8, "integer"

    invoke-virtual {v6, v7, v8}, Landroid/support/v21/ALPanels;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v4, Landroid/support/v21/ALPanels;->mAnimDur:I

    return-void
.end method

.method static synthetic access$1000008(Landroid/support/v21/ALPanels;)F
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/ALPanels;->getScreenHeight()F

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$1000009(Landroid/support/v21/ALPanels;IZ)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v21/ALPanels;->changeSlidingState(IZ)V

    return-void
.end method

.method static synthetic access$1000013(Landroid/support/v21/ALPanels;FZ)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v21/ALPanels;->slideTo(FZ)V

    return-void
.end method

.method static synthetic access$1000015(Landroid/support/v21/ALPanels;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/ALPanels;->stickAnchor()V

    return-void
.end method

.method private changeSlidingState(IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v21/ALPanels;->mSlidingState:I

    .line 176
    move-object v6, v0

    iget v6, v6, Landroid/support/v21/ALPanels;->mDivider:I

    int-to-float v6, v6

    move v4, v6

    .line 177
    move-object v6, v0

    iget v6, v6, Landroid/support/v21/ALPanels;->mSlidingState:I

    packed-switch v6, :pswitch_data_0

    .line 190
    :goto_0
    move v6, v2

    if-eqz v6, :cond_0

    .line 192
    move-object v6, v0

    move v7, v4

    invoke-direct {v6, v7}, Landroid/support/v21/ALPanels;->sldingWithAnimation(F)V

    .line 198
    :goto_1
    move-object v6, v0

    const-string v7, "parent_content"

    invoke-virtual {v6, v7}, Landroid/support/v21/ALPanels;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v21/AlLay;

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/ALPanels;->mSlidingState:I

    invoke-virtual {v6, v7}, Landroid/support/v21/AlLay;->updateContent(I)V

    .line 199
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/ALPanels;->mSlidingState:I

    invoke-direct {v6, v7}, Landroid/support/v21/ALPanels;->transitionNotip(I)V

    return-void

    .line 180
    :pswitch_0
    move-object v6, v0

    iget v6, v6, Landroid/support/v21/ALPanels;->mDivider:I

    int-to-float v6, v6

    move v4, v6

    .line 181
    goto :goto_0

    .line 183
    :pswitch_1
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v21/ALPanels;->getPanelHeight()F

    move-result v6

    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v21/ALPanels;->getHeaderHeight()F

    move-result v7

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    move v4, v6

    .line 184
    goto :goto_0

    .line 186
    :pswitch_2
    const/4 v6, 0x0

    int-to-float v6, v6

    move v4, v6

    .line 187
    goto :goto_0

    .line 196
    :cond_0
    move-object v6, v0

    move v7, v4

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/v21/ALPanels;->slideTo(FZ)V

    goto :goto_1

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getHeaderHeight()F
    .locals 6

    .prologue
    .line 165
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/ALPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v3, v0

    const-string v4, "max_header_size"

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/ALPanels;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/support/v21/ALPanels;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move v0, v2

    return v0
.end method

.method private getPanelHeight()F
    .locals 6

    .prologue
    .line 210
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/ALPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v3, v0

    const-string v4, "panel_height"

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/ALPanels;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/support/v21/ALPanels;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move v0, v2

    return v0
.end method

.method private getScreenHeight()F
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/ALPanels;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move v0, v2

    return v0
.end method

.method private sldingWithAnimation(F)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-static {v6}, Lcom/nineoldandroids/view/ViewHelper;->getTranslationY(Landroid/view/View;)F

    move-result v6

    move v3, v6

    .line 216
    move v6, v3

    move v7, v1

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 218
    const/4 v6, 0x2

    new-array v6, v6, [F

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-virtual {v9}, Landroid/support/v21/TouchInterceptionFrameLayout;->getTranslationY()F

    move-result v9

    aput v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v1

    aput v9, v7, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/ALPanels;->mAnimDur:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    move-object v4, v6

    .line 219
    move-object v6, v4

    new-instance v7, Landroid/support/v21/ALPanels$100000003;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v21/ALPanels$100000003;-><init>(Landroid/support/v21/ALPanels;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    move-object v6, v4

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private slideTo(FZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)V"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v21/ALPanels;->getPanelHeight()F

    move-result v8

    const/4 v9, 0x1

    const/16 v10, 0x15e

    int-to-float v10, v10

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v21/ALPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    const/4 v8, 0x0

    :goto_0
    move v4, v8

    .line 233
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels;->mHeader:Landroid/support/v21/ALHeaderPanels;

    move v9, v4

    if-eqz v9, :cond_2

    move v9, v1

    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v21/ALPanels;->getPanelHeight()F

    move-result v10

    sub-float/2addr v9, v10

    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v21/ALPanels;->getHeaderHeight()F

    move-result v10

    sub-float/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v21/ALPanels;->getMinHeader()F

    move-result v10

    add-float/2addr v9, v10

    :goto_1
    invoke-virtual {v8, v9}, Landroid/support/v21/ALHeaderPanels;->updateFlexibleHeader(F)V

    .line 234
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    move v9, v1

    invoke-static {v8, v9}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 235
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels;->mPanel:Landroid/view/View;

    move v9, v1

    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v21/ALPanels;->getPanelHeight()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v8, v9}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 236
    move v8, v1

    const/4 v9, 0x0

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 238
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-virtual {v8}, Landroid/support/v21/TouchInterceptionFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object v5, v8

    .line 239
    move-object v8, v5

    move v9, v1

    neg-float v9, v9

    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v21/ALPanels;->getScreenHeight()F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 240
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-virtual {v8}, Landroid/support/v21/TouchInterceptionFrameLayout;->requestLayout()V

    .line 241
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels;->mPanel:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object v6, v8

    .line 242
    move-object v8, v6

    move v9, v1

    neg-float v9, v9

    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v21/ALPanels;->getPanelHeight()F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 243
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ALPanels;->mPanel:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void

    .line 232
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 233
    :cond_2
    move v9, v1

    const/4 v10, 0x1

    const/16 v11, 0x15e

    int-to-float v11, v11

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v21/ALPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    sub-float/2addr v9, v10

    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v21/ALPanels;->getHeaderHeight()F

    move-result v10

    sub-float/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v21/ALPanels;->getMinHeader()F

    move-result v10

    add-float/2addr v9, v10

    goto :goto_1
.end method

.method private stickAnchor()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    const/4 v2, 0x0

    int-to-float v2, v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v21/ALPanels;->mMovedDistanceY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 258
    move-object v2, v0

    iget v2, v2, Landroid/support/v21/ALPanels;->mSlidingSlop:I

    int-to-float v2, v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v21/ALPanels;->mMovedDistanceY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 260
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v21/ALPanels;->getPanelHeight()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-virtual {v3}, Landroid/support/v21/TouchInterceptionFrameLayout;->getTranslationY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 262
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v21/ALPanels;->changeSlidingState(IZ)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v21/ALPanels;->changeSlidingState(IZ)V

    goto :goto_0

    .line 271
    :cond_2
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v21/ALPanels;->getPanelHeight()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-virtual {v3}, Landroid/support/v21/TouchInterceptionFrameLayout;->getTranslationY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 273
    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v21/ALPanels;->changeSlidingState(IZ)V

    goto :goto_0

    .line 277
    :cond_3
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v21/ALPanels;->changeSlidingState(IZ)V

    goto :goto_0

    .line 281
    :cond_4
    move-object v2, v0

    iget v2, v2, Landroid/support/v21/ALPanels;->mMovedDistanceY:F

    const/4 v3, 0x0

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 283
    move-object v2, v0

    iget v2, v2, Landroid/support/v21/ALPanels;->mMovedDistanceY:F

    move-object v3, v0

    iget v3, v3, Landroid/support/v21/ALPanels;->mSlidingSlop:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 285
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v21/ALPanels;->getPanelHeight()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-virtual {v3}, Landroid/support/v21/TouchInterceptionFrameLayout;->getTranslationY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 287
    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v21/ALPanels;->changeSlidingState(IZ)V

    .line 291
    :goto_1
    goto :goto_0

    :cond_5
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v21/ALPanels;->changeSlidingState(IZ)V

    goto :goto_1

    .line 296
    :cond_6
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v21/ALPanels;->getPanelHeight()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-virtual {v3}, Landroid/support/v21/TouchInterceptionFrameLayout;->getTranslationY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 298
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v21/ALPanels;->changeSlidingState(IZ)V

    goto :goto_0

    .line 302
    :cond_7
    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v21/ALPanels;->changeSlidingState(IZ)V

    goto :goto_0
.end method

.method private transitionNotip(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    const-string v6, "stack"

    invoke-virtual {v5, v6}, Landroid/support/v21/ALPanels;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v21/StackLayout;

    move-object v3, v5

    .line 250
    move-object v5, v3

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v21/StackLayout;->setTransition(I)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/ALPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALPanels;->cc:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Landroid/support/v21/ScrollUtils;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method getMinHeader()F
    .locals 6

    .prologue
    .line 204
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/ALPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v3, v0

    const-string v4, "min_header_height"

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/ALPanels;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/support/v21/ALPanels;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move v0, v2

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 74
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/ALPanels;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDownMotionEvent()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method protected onFinishInflate()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/View;->onFinishInflate()V

    .line 82
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    const-string v5, "scroll"

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/ALPanels;->i:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/ALPanels;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v21/ALPanels;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v21/ObservableScrollView;

    iput-object v3, v2, Landroid/support/v21/ALPanels;->mScrollable:Landroid/support/v21/ObservableScrollView;

    .line 83
    move-object v2, v0

    move-object v3, v0

    const-string v4, "observable"

    invoke-virtual {v3, v4}, Landroid/support/v21/ALPanels;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v21/TouchInterceptionFrameLayout;

    iput-object v3, v2, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    .line 84
    move-object v2, v0

    move-object v3, v0

    const-string v4, "panel"

    invoke-virtual {v3, v4}, Landroid/support/v21/ALPanels;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v21/ALPanels;->mPanel:Landroid/view/View;

    .line 85
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels;->mInterceptorListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

    invoke-virtual {v2, v3}, Landroid/support/v21/TouchInterceptionFrameLayout;->setScrollInterceptionListener(Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;)V

    .line 86
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/ALPanels;->mScrollable:Landroid/support/v21/ObservableScrollView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v21/ObservableScrollView;->setTouchInterceptionViewGroup(Landroid/view/ViewGroup;)V

    .line 87
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v21/ALPanels;->mSlidingState:I

    .line 88
    move-object v2, v0

    move-object v3, v0

    const-string v4, "header"

    invoke-virtual {v3, v4}, Landroid/support/v21/ALPanels;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v21/ALHeaderPanels;

    iput-object v3, v2, Landroid/support/v21/ALPanels;->mHeader:Landroid/support/v21/ALHeaderPanels;

    .line 89
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/ALPanels;->mScrollable:Landroid/support/v21/ObservableScrollView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v21/ObservableScrollView;->addScrollViewCallbacks(Landroid/support/v21/ObservableScrollViewCallbacks;)V

    .line 90
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/ALPanels;->mScrollable:Landroid/support/v21/ObservableScrollView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    invoke-virtual {v2, v3}, Landroid/support/v21/ObservableScrollView;->setTouchInterceptionViewGroup(Landroid/view/ViewGroup;)V

    .line 91
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/ALPanels;->mInterceptor:Landroid/support/v21/TouchInterceptionFrameLayout;

    new-instance v3, Landroid/support/v21/ALPanels$100000001;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v21/ALPanels$100000001;-><init>(Landroid/support/v21/ALPanels;)V

    invoke-static {v2, v3}, Landroid/support/v21/ScrollUtils;->addOnGlobalLayoutListener(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScrollChanged(IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onUpOrCancelMotionEvent(Landroid/support/v21/ScrollState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v21/ScrollState;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
