.class public Landroid/support/v21/TouchInterceptionFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TouchInterceptionFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;
    }
.end annotation


# instance fields
.field private mBeganFromDownMotionEvent:Z

.field private mChildrenEventsCanceled:Z

.field private mDownMotionEventPended:Z

.field private mInitialPoint:Landroid/graphics/PointF;

.field private mIntercepting:Z

.field private mPendingDownMotionEvent:Landroid/view/MotionEvent;

.field private mTouchInterceptionListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private varargs duplicateTouchEventForChildren(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "[",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 249
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v18, v3

    if-nez v18, :cond_0

    .line 252
    :goto_0
    return-void

    :cond_0
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v21/TouchInterceptionFrameLayout;->getChildCount()I

    move-result v18

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v6, v18

    :goto_1
    const/16 v18, 0x0

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    :goto_2
    goto :goto_0

    .line 253
    :cond_1
    move-object/from16 v18, v2

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroid/support/v21/TouchInterceptionFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v7, v18

    .line 254
    move-object/from16 v18, v7

    if-eqz v18, :cond_2

    .line 255
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v8, v18

    .line 256
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 257
    move-object/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v9, v18

    .line 258
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-nez v18, :cond_3

    .line 252
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 261
    :cond_3
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v10, v18

    .line 262
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    .line 263
    const/16 v18, 0x0

    move/from16 v12, v18

    .line 264
    move-object/from16 v18, v4

    if-eqz v18, :cond_4

    .line 265
    move-object/from16 v18, v4

    move-object/from16 v13, v18

    const/16 v18, 0x0

    move/from16 v14, v18

    .line 269
    :goto_3
    move/from16 v18, v14

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 273
    :cond_4
    move-object/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-virtual/range {v18 .. v20}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 274
    move/from16 v18, v12

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v18, v18, v19

    move/from16 v12, v18

    .line 275
    move/from16 v18, v12

    if-eqz v18, :cond_2

    .line 276
    goto/16 :goto_2

    .line 265
    :cond_5
    move-object/from16 v18, v13

    move/from16 v19, v14

    aget-object v18, v18, v19

    move-object/from16 v15, v18

    .line 266
    move-object/from16 v18, v15

    if-eqz v18, :cond_6

    .line 267
    move-object/from16 v18, v15

    invoke-static/range {v18 .. v18}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v16, v18

    .line 268
    move-object/from16 v18, v16

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-virtual/range {v18 .. v20}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 269
    move/from16 v18, v12

    move-object/from16 v19, v7

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v18, v18, v19

    move/from16 v12, v18

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_3
.end method

.method private obtainMotionEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 8

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v1

    invoke-static {v6}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    move-object v4, v6

    .line 235
    move-object v6, v4

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 236
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/TouchInterceptionFrameLayout;->mTouchInterceptionListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

    if-nez v6, :cond_0

    .line 104
    const/4 v6, 0x0

    move v0, v6

    .line 132
    :goto_0
    return v0

    .line 110
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 132
    :pswitch_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 112
    :pswitch_1
    move-object v6, v0

    new-instance v7, Landroid/graphics/PointF;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, v6, Landroid/support/v21/TouchInterceptionFrameLayout;->mInitialPoint:Landroid/graphics/PointF;

    .line 113
    move-object v6, v0

    move-object v7, v1

    invoke-static {v7}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v21/TouchInterceptionFrameLayout;->mPendingDownMotionEvent:Landroid/view/MotionEvent;

    .line 114
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v21/TouchInterceptionFrameLayout;->mDownMotionEventPended:Z

    .line 115
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mTouchInterceptionListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v10, v10

    const/4 v11, 0x0

    int-to-float v11, v11

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;ZFF)Z

    move-result v7

    iput-boolean v7, v6, Landroid/support/v21/TouchInterceptionFrameLayout;->mIntercepting:Z

    .line 116
    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mIntercepting:Z

    iput-boolean v7, v6, Landroid/support/v21/TouchInterceptionFrameLayout;->mBeganFromDownMotionEvent:Z

    .line 117
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v21/TouchInterceptionFrameLayout;->mChildrenEventsCanceled:Z

    .line 118
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v21/TouchInterceptionFrameLayout;->mIntercepting:Z

    move v0, v6

    goto :goto_0

    .line 121
    :pswitch_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/TouchInterceptionFrameLayout;->mInitialPoint:Landroid/graphics/PointF;

    if-nez v6, :cond_1

    .line 122
    move-object v6, v0

    new-instance v7, Landroid/graphics/PointF;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, v6, Landroid/support/v21/TouchInterceptionFrameLayout;->mInitialPoint:Landroid/graphics/PointF;

    .line 127
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mInitialPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    move v3, v6

    .line 128
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mInitialPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    move v4, v6

    .line 129
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mTouchInterceptionListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

    move-object v8, v1

    const/4 v9, 0x1

    move v10, v3

    move v11, v4

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;ZFF)Z

    move-result v7

    iput-boolean v7, v6, Landroid/support/v21/TouchInterceptionFrameLayout;->mIntercepting:Z

    .line 130
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v21/TouchInterceptionFrameLayout;->mIntercepting:Z

    move v0, v6

    goto/16 :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mTouchInterceptionListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

    if-eqz v7, :cond_0

    .line 138
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 230
    :cond_0
    :goto_0
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    move v0, v7

    :goto_1
    return v0

    .line 140
    :pswitch_0
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mIntercepting:Z

    if-eqz v7, :cond_1

    .line 141
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mTouchInterceptionListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

    move-object v8, v1

    invoke-interface {v7, v8}, Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;->onDownMotionEvent(Landroid/view/MotionEvent;)V

    .line 142
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    new-array v9, v9, [Landroid/view/MotionEvent;

    invoke-direct {v7, v8, v9}, Landroid/support/v21/TouchInterceptionFrameLayout;->duplicateTouchEventForChildren(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V

    .line 143
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    .line 145
    :cond_1
    goto :goto_0

    .line 148
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mInitialPoint:Landroid/graphics/PointF;

    if-nez v7, :cond_2

    .line 149
    move-object v7, v0

    new-instance v8, Landroid/graphics/PointF;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v8, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mInitialPoint:Landroid/graphics/PointF;

    .line 154
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/TouchInterceptionFrameLayout;->mInitialPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    move v3, v7

    .line 155
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/TouchInterceptionFrameLayout;->mInitialPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    move v4, v7

    .line 156
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/TouchInterceptionFrameLayout;->mTouchInterceptionListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

    move-object v9, v1

    const/4 v10, 0x1

    move v11, v3

    move v12, v4

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;ZFF)Z

    move-result v8

    iput-boolean v8, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mIntercepting:Z

    .line 157
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mIntercepting:Z

    if-eqz v7, :cond_5

    .line 160
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mBeganFromDownMotionEvent:Z

    if-nez v7, :cond_3

    .line 161
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mBeganFromDownMotionEvent:Z

    .line 163
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mPendingDownMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v7}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    move-object v5, v7

    .line 164
    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 165
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mTouchInterceptionListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

    move-object v8, v5

    invoke-interface {v7, v8}, Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;->onDownMotionEvent(Landroid/view/MotionEvent;)V

    .line 167
    move-object v7, v0

    new-instance v8, Landroid/graphics/PointF;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v8, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mInitialPoint:Landroid/graphics/PointF;

    .line 168
    const/4 v7, 0x0

    int-to-float v7, v7

    move v13, v7

    move v7, v13

    move v8, v13

    move v4, v8

    move v3, v7

    .line 172
    :cond_3
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mChildrenEventsCanceled:Z

    if-nez v7, :cond_4

    .line 173
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mChildrenEventsCanceled:Z

    .line 174
    move-object v7, v0

    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Landroid/support/v21/TouchInterceptionFrameLayout;->obtainMotionEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Landroid/view/MotionEvent;

    invoke-direct {v7, v8, v9}, Landroid/support/v21/TouchInterceptionFrameLayout;->duplicateTouchEventForChildren(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V

    .line 177
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mTouchInterceptionListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

    move-object v8, v1

    move v9, v3

    move v10, v4

    invoke-interface {v7, v8, v9, v10}, Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;->onMoveMotionEvent(Landroid/view/MotionEvent;FF)V

    .line 182
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mDownMotionEventPended:Z

    .line 186
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_1

    .line 188
    :cond_5
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mDownMotionEventPended:Z

    if-eqz v7, :cond_6

    .line 189
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mDownMotionEventPended:Z

    .line 190
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mPendingDownMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v7}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    move-object v5, v7

    .line 191
    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 192
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/view/MotionEvent;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v5

    aput-object v12, v10, v11

    invoke-direct {v7, v8, v9}, Landroid/support/v21/TouchInterceptionFrameLayout;->duplicateTouchEventForChildren(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V

    .line 201
    :goto_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mBeganFromDownMotionEvent:Z

    .line 204
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mChildrenEventsCanceled:Z

    .line 206
    goto/16 :goto_0

    .line 194
    :cond_6
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    new-array v9, v9, [Landroid/view/MotionEvent;

    invoke-direct {v7, v8, v9}, Landroid/support/v21/TouchInterceptionFrameLayout;->duplicateTouchEventForChildren(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 209
    :pswitch_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mBeganFromDownMotionEvent:Z

    .line 210
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mIntercepting:Z

    if-eqz v7, :cond_7

    .line 211
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mTouchInterceptionListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

    move-object v8, v1

    invoke-interface {v7, v8}, Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;->onUpOrCancelMotionEvent(Landroid/view/MotionEvent;)V

    .line 216
    :cond_7
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mChildrenEventsCanceled:Z

    if-nez v7, :cond_8

    .line 217
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mChildrenEventsCanceled:Z

    .line 218
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mDownMotionEventPended:Z

    if-eqz v7, :cond_9

    .line 219
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mDownMotionEventPended:Z

    .line 220
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/TouchInterceptionFrameLayout;->mPendingDownMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v7}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    move-object v5, v7

    .line 221
    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 222
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/view/MotionEvent;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v5

    aput-object v12, v10, v11

    invoke-direct {v7, v8, v9}, Landroid/support/v21/TouchInterceptionFrameLayout;->duplicateTouchEventForChildren(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V

    .line 227
    :cond_8
    :goto_3
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_1

    .line 224
    :cond_9
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    new-array v9, v9, [Landroid/view/MotionEvent;

    invoke-direct {v7, v8, v9}, Landroid/support/v21/TouchInterceptionFrameLayout;->duplicateTouchEventForChildren(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setScrollInterceptionListener(Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/TouchInterceptionFrameLayout;->mTouchInterceptionListener:Landroid/support/v21/TouchInterceptionFrameLayout$TouchInterceptionListener;

    return-void
.end method
