.class public Landroid/support/v21/StackLayout;
.super Landroid/widget/LinearLayout;
.source "StackLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/StackLayout$100000000;,
        Landroid/support/v21/StackLayout$100000001;,
        Landroid/support/v21/StackLayout$100000002;
    }
.end annotation


# instance fields
.field h:Landroid/os/Handler;

.field mTransition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v5, v4, Landroid/support/v21/StackLayout;->h:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getTransition()F
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v2

    move v0, v2

    return v0
.end method

.method public run()V
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

.method public setTransition(I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/v21/StackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    move-object v3, v11

    .line 17
    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    if-le v11, v12, :cond_1

    .line 19
    const/4 v11, 0x0

    move v4, v11

    :goto_0
    move v11, v4

    move-object v12, v3

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-lt v11, v12, :cond_0

    .line 89
    :goto_1
    return-void

    .line 21
    :cond_0
    move v11, v4

    move v5, v11

    .line 22
    move-object v11, v3

    move v12, v4

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v6, v11

    .line 25
    move v11, v1

    packed-switch v11, :pswitch_data_0

    .line 28
    const/4 v11, 0x2

    new-array v11, v11, [F

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x0

    const/16 v14, 0x64

    move v15, v4

    mul-int/2addr v14, v15

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    aput v14, v12, v13

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x1

    const/4 v14, 0x0

    int-to-float v14, v14

    aput v14, v12, v13

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    const/16 v12, 0x12c

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v11

    move-object v7, v11

    .line 29
    move-object v11, v7

    new-instance v12, Landroid/support/v21/StackLayout$100000000;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    move-object v15, v6

    move/from16 v16, v5

    invoke-direct/range {v13 .. v16}, Landroid/support/v21/StackLayout$100000000;-><init>(Landroid/support/v21/StackLayout;Landroid/view/View;I)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    move-object v11, v7

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 19
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40
    :pswitch_0
    const/4 v11, 0x2

    new-array v11, v11, [F

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x0

    const/4 v14, 0x0

    int-to-float v14, v14

    aput v14, v12, v13

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x1

    const/16 v14, 0x64

    move v15, v4

    mul-int/2addr v14, v15

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    aput v14, v12, v13

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    const/16 v12, 0x12c

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v11

    move-object v8, v11

    .line 41
    move-object v11, v8

    new-instance v12, Landroid/support/v21/StackLayout$100000001;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v16}, Landroid/support/v21/StackLayout$100000001;-><init>(Landroid/support/v21/StackLayout;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    move-object v11, v8

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    goto :goto_2

    .line 63
    :pswitch_1
    const/4 v11, 0x2

    new-array v11, v11, [F

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x0

    const/16 v14, 0x64

    move v15, v4

    mul-int/2addr v14, v15

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    aput v14, v12, v13

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x1

    const/4 v14, 0x0

    int-to-float v14, v14

    aput v14, v12, v13

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    const/16 v12, 0x12c

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v11

    move-object v9, v11

    .line 64
    move-object v11, v9

    new-instance v12, Landroid/support/v21/StackLayout$100000002;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v16}, Landroid/support/v21/StackLayout$100000002;-><init>(Landroid/support/v21/StackLayout;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    move-object v11, v9

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 83
    goto/16 :goto_2

    .line 89
    :cond_1
    goto/16 :goto_1

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
