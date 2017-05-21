.class public Landroid/support/v21/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"

# interfaces
.implements Landroid/support/v21/Scrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/ObservableScrollView$SavedState;,
        Landroid/support/v21/ObservableScrollView$100000000;
    }
.end annotation


# instance fields
.field private mCallbackCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v21/ObservableScrollViewCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Landroid/support/v21/ObservableScrollViewCallbacks;

.field private mDragging:Z

.field private mFirstScroll:Z

.field private mIntercepted:Z

.field private mPrevMoveEvent:Landroid/view/MotionEvent;

.field private mPrevScrollY:I

.field private mScrollState:Landroid/support/v21/ScrollState;

.field private mScrollY:I

.field private mTouchInterceptionViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private dispatchOnDownMotionEvent()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/ObservableScrollView;->mCallbacks:Landroid/support/v21/ObservableScrollViewCallbacks;

    if-eqz v5, :cond_0

    .line 244
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/ObservableScrollView;->mCallbacks:Landroid/support/v21/ObservableScrollViewCallbacks;

    invoke-interface {v5}, Landroid/support/v21/ObservableScrollViewCallbacks;->onDownMotionEvent()V

    .line 246
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 247
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    :cond_1
    return-void

    .line 248
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v21/ObservableScrollViewCallbacks;

    move-object v3, v5

    .line 249
    move-object v5, v3

    invoke-interface {v5}, Landroid/support/v21/ObservableScrollViewCallbacks;->onDownMotionEvent()V

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private dispatchOnScrollChanged(IZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)V"
        }
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ObservableScrollView;->mCallbacks:Landroid/support/v21/ObservableScrollViewCallbacks;

    if-eqz v8, :cond_0

    .line 256
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ObservableScrollView;->mCallbacks:Landroid/support/v21/ObservableScrollViewCallbacks;

    move v9, v1

    move v10, v2

    move v11, v3

    invoke-interface {v8, v9, v10, v11}, Landroid/support/v21/ObservableScrollViewCallbacks;->onScrollChanged(IZZ)V

    .line 258
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-eqz v8, :cond_1

    .line 259
    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_2

    :cond_1
    return-void

    .line 260
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v21/ObservableScrollViewCallbacks;

    move-object v6, v8

    .line 261
    move-object v8, v6

    move v9, v1

    move v10, v2

    move v11, v3

    invoke-interface {v8, v9, v10, v11}, Landroid/support/v21/ObservableScrollViewCallbacks;->onScrollChanged(IZZ)V

    .line 259
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private dispatchOnUpOrCancelMotionEvent(Landroid/support/v21/ScrollState;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v21/ScrollState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/ObservableScrollView;->mCallbacks:Landroid/support/v21/ObservableScrollViewCallbacks;

    if-eqz v6, :cond_0

    .line 268
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/ObservableScrollView;->mCallbacks:Landroid/support/v21/ObservableScrollViewCallbacks;

    move-object v7, v1

    invoke-interface {v6, v7}, Landroid/support/v21/ObservableScrollViewCallbacks;->onUpOrCancelMotionEvent(Landroid/support/v21/ScrollState;)V

    .line 270
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 271
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_2

    :cond_1
    return-void

    .line 272
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v21/ObservableScrollViewCallbacks;

    move-object v4, v6

    .line 273
    move-object v6, v4

    move-object v7, v1

    invoke-interface {v6, v7}, Landroid/support/v21/ObservableScrollViewCallbacks;->onUpOrCancelMotionEvent(Landroid/support/v21/ScrollState;)V

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private hasNoCallbacks()Z
    .locals 3

    .prologue
    .line 279
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/ObservableScrollView;->mCallbacks:Landroid/support/v21/ObservableScrollViewCallbacks;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addScrollViewCallbacks(Landroid/support/v21/ObservableScrollViewCallbacks;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v21/ObservableScrollViewCallbacks;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-nez v3, :cond_0

    .line 208
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    .line 210
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    return-void
.end method

.method public clearScrollViewCallbacks()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 223
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getCurrentScrollY()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/ObservableScrollView;->mScrollY:I

    move v0, v2

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/ObservableScrollView;->hasNoCallbacks()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    move v0, v3

    .line 124
    :goto_0
    return v0

    .line 112
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 124
    :goto_1
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 120
    :pswitch_0
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x1

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput-boolean v6, v5, Landroid/support/v21/ObservableScrollView;->mDragging:Z

    iput-boolean v4, v3, Landroid/support/v21/ObservableScrollView;->mFirstScroll:Z

    .line 121
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/ObservableScrollView;->dispatchOnDownMotionEvent()V

    .line 122
    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    check-cast v5, Landroid/support/v21/ObservableScrollView$SavedState;

    move-object v3, v5

    .line 66
    move-object v5, v0

    move-object v6, v3

    iget v6, v6, Landroid/support/v21/ObservableScrollView$SavedState;->prevScrollY:I

    iput v6, v5, Landroid/support/v21/ObservableScrollView;->mPrevScrollY:I

    .line 67
    move-object v5, v0

    move-object v6, v3

    iget v6, v6, Landroid/support/v21/ObservableScrollView$SavedState;->scrollY:I

    iput v6, v5, Landroid/support/v21/ObservableScrollView;->mScrollY:I

    .line 68
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Landroid/support/v21/ObservableScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v6

    invoke-super {v5, v6}, Landroid/widget/ScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v5, v0

    invoke-super {v5}, Landroid/widget/ScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    move-object v2, v5

    .line 74
    new-instance v5, Landroid/support/v21/ObservableScrollView$SavedState;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Landroid/support/v21/ObservableScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v3, v5

    .line 75
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v21/ObservableScrollView;->mPrevScrollY:I

    iput v6, v5, Landroid/support/v21/ObservableScrollView$SavedState;->prevScrollY:I

    .line 76
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v21/ObservableScrollView;->mScrollY:I

    iput v6, v5, Landroid/support/v21/ObservableScrollView$SavedState;->scrollY:I

    .line 77
    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-super {v6, v7, v8, v9, v10}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 83
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v21/ObservableScrollView;->hasNoCallbacks()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    :goto_0
    return-void

    .line 86
    :cond_0
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroid/support/v21/ObservableScrollView;->mScrollY:I

    .line 88
    move-object v6, v0

    move v7, v2

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v21/ObservableScrollView;->mFirstScroll:Z

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v21/ObservableScrollView;->mDragging:Z

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v21/ObservableScrollView;->dispatchOnScrollChanged(IZZ)V

    .line 89
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v21/ObservableScrollView;->mFirstScroll:Z

    if-eqz v6, :cond_1

    .line 90
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v21/ObservableScrollView;->mFirstScroll:Z

    .line 93
    :cond_1
    move-object v6, v0

    iget v6, v6, Landroid/support/v21/ObservableScrollView;->mPrevScrollY:I

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 94
    move-object v6, v0

    sget-object v7, Landroid/support/v21/ScrollState;->UP:Landroid/support/v21/ScrollState;

    iput-object v7, v6, Landroid/support/v21/ObservableScrollView;->mScrollState:Landroid/support/v21/ScrollState;

    .line 104
    :cond_2
    :goto_1
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroid/support/v21/ObservableScrollView;->mPrevScrollY:I

    goto :goto_0

    .line 95
    :cond_3
    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/ObservableScrollView;->mPrevScrollY:I

    if-ge v6, v7, :cond_2

    .line 96
    move-object v6, v0

    sget-object v7, Landroid/support/v21/ScrollState;->DOWN:Landroid/support/v21/ScrollState;

    iput-object v7, v6, Landroid/support/v21/ObservableScrollView;->mScrollState:Landroid/support/v21/ScrollState;

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v21/ObservableScrollView;->hasNoCallbacks()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 130
    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    move v0, v9

    .line 197
    :goto_0
    return v0

    .line 132
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 197
    :goto_1
    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    move v0, v9

    goto :goto_0

    .line 135
    :pswitch_0
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v21/ObservableScrollView;->mIntercepted:Z

    .line 136
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v21/ObservableScrollView;->mDragging:Z

    .line 137
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v21/ObservableScrollView;->mScrollState:Landroid/support/v21/ScrollState;

    invoke-direct {v9, v10}, Landroid/support/v21/ObservableScrollView;->dispatchOnUpOrCancelMotionEvent(Landroid/support/v21/ScrollState;)V

    .line 138
    goto :goto_1

    .line 140
    :pswitch_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/ObservableScrollView;->mPrevMoveEvent:Landroid/view/MotionEvent;

    if-nez v9, :cond_1

    .line 141
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Landroid/support/v21/ObservableScrollView;->mPrevMoveEvent:Landroid/view/MotionEvent;

    .line 143
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v21/ObservableScrollView;->mPrevMoveEvent:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    move v3, v9

    .line 144
    move-object v9, v0

    move-object v10, v1

    invoke-static {v10}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    iput-object v10, v9, Landroid/support/v21/ObservableScrollView;->mPrevMoveEvent:Landroid/view/MotionEvent;

    .line 145
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v21/ObservableScrollView;->getCurrentScrollY()I

    move-result v9

    int-to-float v9, v9

    move v10, v3

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_7

    .line 148
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v21/ObservableScrollView;->mIntercepted:Z

    if-eqz v9, :cond_2

    .line 150
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 154
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/ObservableScrollView;->mTouchInterceptionViewGroup:Landroid/view/ViewGroup;

    if-nez v9, :cond_4

    .line 156
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v21/ObservableScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    move-object v4, v9

    .line 163
    :goto_2
    const/4 v9, 0x0

    int-to-float v9, v9

    move v5, v9

    .line 164
    const/4 v9, 0x0

    int-to-float v9, v9

    move v6, v9

    .line 165
    move-object v9, v0

    move-object v7, v9

    :goto_3
    move-object v9, v7

    if-eqz v9, :cond_3

    move-object v9, v7

    move-object v10, v4

    if-ne v9, v10, :cond_5

    .line 169
    :cond_3
    move-object v9, v1

    invoke-static {v9}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    move-object v7, v9

    .line 170
    move-object v9, v7

    move v10, v5

    move v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 172
    move-object v9, v4

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 173
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v21/ObservableScrollView;->mIntercepted:Z

    .line 178
    move-object v9, v7

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 182
    move-object v9, v0

    new-instance v10, Landroid/support/v21/ObservableScrollView$100000000;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v4

    move-object v14, v7

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v21/ObservableScrollView$100000000;-><init>(Landroid/support/v21/ObservableScrollView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    invoke-virtual {v9, v10}, Landroid/support/v21/ObservableScrollView;->post(Ljava/lang/Runnable;)Z

    move-result v9

    .line 188
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 158
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/ObservableScrollView;->mTouchInterceptionViewGroup:Landroid/view/ViewGroup;

    move-object v4, v9

    goto :goto_2

    .line 166
    :cond_5
    move v9, v5

    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    move-object v11, v7

    invoke-virtual {v11}, Landroid/view/View;->getScrollX()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v9, v10

    move v5, v9

    .line 167
    move v9, v6

    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    move-object v11, v7

    invoke-virtual {v11}, Landroid/view/View;->getScrollY()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v9, v10

    move v6, v9

    .line 165
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v7, v9

    goto :goto_3

    .line 193
    :cond_6
    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    move v0, v9

    goto/16 :goto_0

    .line 195
    :cond_7
    goto/16 :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeScrollViewCallbacks(Landroid/support/v21/ObservableScrollViewCallbacks;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v21/ObservableScrollViewCallbacks;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 216
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    :cond_0
    return-void
.end method

.method public scrollVerticallyTo(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v21/ObservableScrollView;->scrollTo(II)V

    return-void
.end method

.method public setScrollViewCallbacks(Landroid/support/v21/ObservableScrollViewCallbacks;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v21/ObservableScrollViewCallbacks;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/ObservableScrollView;->mCallbacks:Landroid/support/v21/ObservableScrollViewCallbacks;

    return-void
.end method

.method public setTouchInterceptionViewGroup(Landroid/view/ViewGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/ObservableScrollView;->mTouchInterceptionViewGroup:Landroid/view/ViewGroup;

    return-void
.end method
