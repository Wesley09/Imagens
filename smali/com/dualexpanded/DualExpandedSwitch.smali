.class Lcom/dualexpanded/DualExpandedSwitch;
.super Landroid/widget/FrameLayout;
.source "DualExpandedSwitch.java"


# instance fields
.field private inLeft:Landroid/view/animation/TranslateAnimation;

.field private inRight:Landroid/view/animation/TranslateAnimation;

.field private mChildren:[Landroid/view/View;

.field private mCurrentView:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mPreviousMove:I

.field private mWidth:I

.field private outLeft:Landroid/view/animation/TranslateAnimation;

.field private outRight:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    .line 52
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/dualexpanded/DualExpandedSwitch$1;

    invoke-direct {v1, p0}, Lcom/dualexpanded/DualExpandedSwitch$1;-><init>(Lcom/dualexpanded/DualExpandedSwitch;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    .line 71
    return-void
.end method


# virtual methods
.method getCurrentIndex()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    return v0
.end method

.method moveLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    iget v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    iget-object v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mChildren:[Landroid/view/View;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mPreviousMove:I

    if-eq v0, v2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    .line 118
    iput v2, p0, Lcom/dualexpanded/DualExpandedSwitch;->mPreviousMove:I

    .line 120
    :cond_0
    return-void
.end method

.method moveRight()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 124
    iget v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mPreviousMove:I

    if-eq v0, v3, :cond_0

    .line 125
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 127
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    .line 131
    iput v3, p0, Lcom/dualexpanded/DualExpandedSwitch;->mPreviousMove:I

    .line 133
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/dualexpanded/DualExpandedSwitch;->getChildCount()I

    move-result v0

    .line 89
    .local v0, "count":I
    new-array v2, v0, [Landroid/view/View;

    iput-object v2, p0, Lcom/dualexpanded/DualExpandedSwitch;->mChildren:[Landroid/view/View;

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 91
    iget-object v2, p0, Lcom/dualexpanded/DualExpandedSwitch;->mChildren:[Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/dualexpanded/DualExpandedSwitch;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    .line 92
    iget v2, p0, Lcom/dualexpanded/DualExpandedSwitch;->mCurrentView:I

    if-eq v1, v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/dualexpanded/DualExpandedSwitch;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldW"    # I
    .param p4, "oldH"    # I

    .prologue
    const-wide/16 v3, 0x190

    const/4 v2, 0x0

    .line 75
    iput p1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mWidth:I

    .line 76
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->inLeft:Landroid/view/animation/TranslateAnimation;

    .line 77
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->outLeft:Landroid/view/animation/TranslateAnimation;

    .line 78
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->inRight:Landroid/view/animation/TranslateAnimation;

    .line 79
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/dualexpanded/DualExpandedSwitch;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->outRight:Landroid/view/animation/TranslateAnimation;

    .line 81
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 82
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 83
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 84
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 85
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dualexpanded/DualExpandedSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 101
    const/4 v0, 0x1

    return v0
.end method
