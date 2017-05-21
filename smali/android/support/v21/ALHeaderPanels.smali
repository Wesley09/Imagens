.class public Landroid/support/v21/ALHeaderPanels;
.super Landroid/widget/RelativeLayout;
.source "ALHeaderPanels.java"


# instance fields
.field MIN_DISTANCE:F

.field cc:Landroid/content/Context;

.field mClock:Landroid/view/View;

.field mDivider:F

.field mDownX:F

.field mDownY:F

.field mFlexibleClock:F

.field mMinTranslate:F

.field mParentContent:Landroid/view/View;

.field mUpX:F

.field mUpY:F

.field sc:Landroid/support/v21/Scrollable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const/16 v5, 0x32

    int-to-float v5, v5

    iput v5, v4, Landroid/support/v21/ALHeaderPanels;->MIN_DISTANCE:F

    move-object v4, v0

    const/16 v5, 0x14

    int-to-float v5, v5

    iput v5, v4, Landroid/support/v21/ALHeaderPanels;->mDivider:F

    .line 22
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/ALHeaderPanels;->cc:Landroid/content/Context;

    .line 23
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/ALHeaderPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/ALHeaderPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "material_header_divider"

    const-string v8, "dimen"

    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Landroid/support/v21/ScrollUtils;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/support/v21/ALHeaderPanels;->mDivider:F

    .line 24
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/ALHeaderPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/ALHeaderPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "flexible_text"

    const-string v8, "dimen"

    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Landroid/support/v21/ScrollUtils;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/support/v21/ALHeaderPanels;->mFlexibleClock:F

    .line 25
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/ALHeaderPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/ALHeaderPanels;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "min_transition"

    const-string v8, "dimen"

    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Landroid/support/v21/ScrollUtils;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/support/v21/ALHeaderPanels;->mMinTranslate:F

    return-void
.end method


# virtual methods
.method expandPanel(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    new-instance v5, Landroid/content/Intent;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "com.ali.material"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 66
    move-object v5, v3

    const-string v6, "expand"

    move v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 67
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/ALHeaderPanels;->cc:Landroid/content/Context;

    move-object v6, v3

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/View;->onFinishInflate()V

    .line 59
    move-object v2, v0

    move-object v3, v0

    const-string v4, "clock"

    invoke-virtual {v3, v4}, Landroid/support/v21/ALHeaderPanels;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v21/ALHeaderPanels;->mClock:Landroid/view/View;

    .line 60
    move-object v2, v0

    move-object v3, v0

    const-string v4, "parent_content"

    invoke-virtual {v3, v4}, Landroid/support/v21/ALHeaderPanels;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v21/ALHeaderPanels;->mParentContent:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 51
    :cond_0
    :goto_0
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    move v0, v6

    :goto_1
    return v0

    .line 33
    :pswitch_0
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, v6, Landroid/support/v21/ALHeaderPanels;->mDownX:F

    .line 34
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, v6, Landroid/support/v21/ALHeaderPanels;->mDownY:F

    .line 35
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    .line 38
    :pswitch_1
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, v6, Landroid/support/v21/ALHeaderPanels;->mUpY:F

    .line 39
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, v6, Landroid/support/v21/ALHeaderPanels;->mUpX:F

    .line 40
    move-object v6, v0

    iget v6, v6, Landroid/support/v21/ALHeaderPanels;->mDownX:F

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/ALHeaderPanels;->mUpX:F

    sub-float/2addr v6, v7

    move v3, v6

    move-object v6, v0

    iget v6, v6, Landroid/support/v21/ALHeaderPanels;->mDownY:F

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/ALHeaderPanels;->mUpY:F

    sub-float/2addr v6, v7

    move v4, v6

    .line 42
    move v6, v4

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 43
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v21/ALHeaderPanels;->expandPanel(I)V

    .line 44
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    .line 45
    :cond_1
    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 46
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v21/ALHeaderPanels;->expandPanel(I)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setObservableScrollView(Landroid/support/v21/ObservableScrollView;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v21/ObservableScrollView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/ALHeaderPanels;->sc:Landroid/support/v21/Scrollable;

    return-void
.end method

.method public updateFlexibleHeader(F)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v21/ALHeaderPanels;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v21/ALHeaderPanels;->mFlexibleClock:F

    invoke-static {v7, v8, v9}, Landroid/support/v21/ScrollUtils;->getFloat(FFF)F

    move-result v7

    float-to-int v7, v7

    move v3, v7

    .line 73
    move-object v7, v0

    iget v7, v7, Landroid/support/v21/ALHeaderPanels;->mFlexibleClock:F

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v21/ALHeaderPanels;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v21/ALHeaderPanels;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v4, v7

    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroid/support/v21/ALHeaderPanels;->mFlexibleClock:F

    move v9, v3

    int-to-float v9, v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroid/support/v21/ALHeaderPanels;->mFlexibleClock:F

    div-float/2addr v7, v8

    move v5, v7

    .line 75
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALHeaderPanels;->mParentContent:Landroid/view/View;

    move v8, v1

    move-object v9, v0

    iget v9, v9, Landroid/support/v21/ALHeaderPanels;->mDivider:F

    div-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/ALHeaderPanels;->mParentContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    neg-float v8, v8

    invoke-static {v7, v8}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 76
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALHeaderPanels;->mClock:Landroid/view/View;

    const/4 v8, 0x0

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/nineoldandroids/view/ViewHelper;->setPivotX(Landroid/view/View;F)V

    .line 77
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALHeaderPanels;->mClock:Landroid/view/View;

    const/4 v8, 0x0

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    .line 78
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALHeaderPanels;->mClock:Landroid/view/View;

    const/4 v8, 0x1

    int-to-float v8, v8

    move v9, v5

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 79
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ALHeaderPanels;->mClock:Landroid/view/View;

    const/4 v8, 0x1

    int-to-float v8, v8

    move v9, v5

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 80
    move-object v7, v0

    move v8, v1

    move-object v9, v0

    iget v9, v9, Landroid/support/v21/ALHeaderPanels;->mDivider:F

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method
