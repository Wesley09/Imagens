.class public Lcom/bloody/badboy/MaterialRipple;
.super Landroid/widget/RelativeLayout;
.source "MaterialRipple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bloody/badboy/a;,
        Lcom/bloody/badboy/b;,
        Lcom/bloody/badboy/c;,
        Lcom/bloody/badboy/d;
    }
.end annotation


# instance fields
.field private HEIGHT:I

.field private WIDTH:I

.field private animationRunning:Z

.field private canvasHandler:Landroid/os/Handler;

.field private durationEmpty:I

.field private frameRate:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hasToZoom:Ljava/lang/Boolean;

.field private isCentered:Ljava/lang/Boolean;

.field private onCompletionListener:Lcom/bloody/badboy/c;

.field private originBitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private radiusMax:F

.field private rippleAlpha:I

.field private rippleColor:I

.field private rippleDuration:I

.field private ripplePadding:I

.field private rippleType:Ljava/lang/Integer;

.field private final runnable:Ljava/lang/Runnable;

.field private scaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private timer:I

.field private timerEmpty:I

.field private x:F

.field private y:F

.field private zoomDuration:I

.field private zoomScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    const/16 v4, 0x19

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    move-object v3, v0

    const/16 v4, 0x15e

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    move-object v3, v0

    const/16 v4, 0x5a

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    move-object v3, v0

    const/4 v4, 0x0

    int-to-float v4, v4

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->radiusMax:F

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/bloody/badboy/MaterialRipple;->animationRunning:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->timer:I

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->timerEmpty:I

    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->durationEmpty:I

    move-object v3, v0

    const/4 v4, -0x1

    int-to-float v4, v4

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->x:F

    move-object v3, v0

    const/4 v4, -0x1

    int-to-float v4, v4

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->y:F

    move-object v3, v0

    new-instance v4, Lcom/bloody/badboy/a;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/bloody/badboy/a;-><init>(Lcom/bloody/badboy/MaterialRipple;)V

    iput-object v4, v3, Lcom/bloody/badboy/MaterialRipple;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const/16 v5, 0x19

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    move-object v4, v0

    const/16 v5, 0x15e

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    move-object v4, v0

    const/16 v5, 0x5a

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    move-object v4, v0

    const/4 v5, 0x0

    int-to-float v5, v5

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->radiusMax:F

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/bloody/badboy/MaterialRipple;->animationRunning:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->timer:I

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->timerEmpty:I

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->durationEmpty:I

    move-object v4, v0

    const/4 v5, -0x1

    int-to-float v5, v5

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->x:F

    move-object v4, v0

    const/4 v5, -0x1

    int-to-float v5, v5

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->y:F

    move-object v4, v0

    new-instance v5, Lcom/bloody/badboy/a;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/bloody/badboy/a;-><init>(Lcom/bloody/badboy/MaterialRipple;)V

    iput-object v5, v4, Lcom/bloody/badboy/MaterialRipple;->runnable:Ljava/lang/Runnable;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/bloody/badboy/MaterialRipple;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v0

    const/16 v6, 0x19

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    move-object v5, v0

    const/16 v6, 0x15e

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    move-object v5, v0

    const/16 v6, 0x5a

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    move-object v5, v0

    const/4 v6, 0x0

    int-to-float v6, v6

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->radiusMax:F

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/bloody/badboy/MaterialRipple;->animationRunning:Z

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->timer:I

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->timerEmpty:I

    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->durationEmpty:I

    move-object v5, v0

    const/4 v6, -0x1

    int-to-float v6, v6

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->x:F

    move-object v5, v0

    const/4 v6, -0x1

    int-to-float v6, v6

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->y:F

    move-object v5, v0

    new-instance v6, Lcom/bloody/badboy/a;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/bloody/badboy/a;-><init>(Lcom/bloody/badboy/MaterialRipple;)V

    iput-object v6, v5, Lcom/bloody/badboy/MaterialRipple;->runnable:Ljava/lang/Runnable;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/bloody/badboy/MaterialRipple;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$1000032(Lcom/bloody/badboy/MaterialRipple;Ljava/lang/Boolean;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bloody/badboy/MaterialRipple;->sendClickEvent(Ljava/lang/Boolean;)V

    return-void
.end method

.method private createAnimation(FF)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/bloody/badboy/MaterialRipple;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-boolean v4, v4, Lcom/bloody/badboy/MaterialRipple;->animationRunning:Z

    if-nez v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/bloody/badboy/MaterialRipple;->hasToZoom:Ljava/lang/Boolean;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/bloody/badboy/MaterialRipple;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v4, v5}, Lcom/bloody/badboy/MaterialRipple;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/bloody/badboy/MaterialRipple;->WIDTH:I

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->HEIGHT:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->radiusMax:F

    move-object v4, v0

    iget-object v4, v4, Lcom/bloody/badboy/MaterialRipple;->rippleType:Ljava/lang/Integer;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/bloody/badboy/MaterialRipple;->radiusMax:F

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->radiusMax:F

    :cond_1
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/bloody/badboy/MaterialRipple;->radiusMax:F

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->ripplePadding:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->radiusMax:F

    move-object v4, v0

    iget-object v4, v4, Lcom/bloody/badboy/MaterialRipple;->isCentered:Ljava/lang/Boolean;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/bloody/badboy/MaterialRipple;->rippleType:Ljava/lang/Integer;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    :cond_2
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/bloody/badboy/MaterialRipple;->getMeasuredWidth()I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->x:F

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/bloody/badboy/MaterialRipple;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->y:F

    :goto_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/bloody/badboy/MaterialRipple;->animationRunning:Z

    move-object v4, v0

    iget-object v4, v4, Lcom/bloody/badboy/MaterialRipple;->rippleType:Ljava/lang/Integer;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lcom/bloody/badboy/MaterialRipple;->originBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    move-object v4, v0

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/bloody/badboy/MaterialRipple;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/bloody/badboy/MaterialRipple;->originBitmap:Landroid/graphics/Bitmap;

    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Lcom/bloody/badboy/MaterialRipple;->invalidate()V

    :cond_4
    return-void

    :cond_5
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->x:F

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/bloody/badboy/MaterialRipple;->y:F

    goto :goto_0
.end method

.method private getCircleBitmap(I)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v8, v0

    iget-object v8, v8, Lcom/bloody/badboy/MaterialRipple;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/bloody/badboy/MaterialRipple;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v3, v8

    new-instance v8, Landroid/graphics/Canvas;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v3

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v8

    new-instance v8, Landroid/graphics/Paint;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    move-object v5, v8

    new-instance v8, Landroid/graphics/Rect;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    iget v10, v10, Lcom/bloody/badboy/MaterialRipple;->x:F

    move v11, v1

    int-to-float v11, v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    move-object v11, v0

    iget v11, v11, Lcom/bloody/badboy/MaterialRipple;->y:F

    move v12, v1

    int-to-float v12, v12

    sub-float/2addr v11, v12

    float-to-int v11, v11

    move-object v12, v0

    iget v12, v12, Lcom/bloody/badboy/MaterialRipple;->x:F

    move v13, v1

    int-to-float v13, v13

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object v13, v0

    iget v13, v13, Lcom/bloody/badboy/MaterialRipple;->y:F

    move v14, v1

    int-to-float v14, v14

    add-float/2addr v13, v14

    float-to-int v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v8

    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    move-object v8, v4

    move-object v9, v0

    iget v9, v9, Lcom/bloody/badboy/MaterialRipple;->x:F

    move-object v10, v0

    iget v10, v10, Lcom/bloody/badboy/MaterialRipple;->y:F

    move v11, v1

    int-to-float v11, v11

    move-object v12, v5

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object v8, v5

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v8

    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lcom/bloody/badboy/MaterialRipple;->originBitmap:Landroid/graphics/Bitmap;

    move-object v10, v6

    move-object v11, v6

    move-object v12, v5

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v8, v3

    move-object v0, v8

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/bloody/badboy/MaterialRipple;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    move-object v7, v0

    const-string v8, "ripplecolor"

    invoke-virtual {v7, v8}, Lcom/bloody/badboy/MaterialRipple;->setColorResId(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/bloody/badboy/MaterialRipple;->rippleColor:I

    move-object v6, v1

    move-object v7, v2

    sget-object v8, Lcom/bloody/badboy/e;->MaterialRipple:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/bloody/badboy/e;->MaterialRipple_ripple_type:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    new-instance v8, Ljava/lang/Integer;

    move v13, v7

    move-object v14, v8

    move-object v7, v14

    move v8, v13

    move-object v9, v14

    move v13, v8

    move-object v14, v9

    move-object v8, v14

    move v9, v13

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    iput-object v7, v6, Lcom/bloody/badboy/MaterialRipple;->rippleType:Ljava/lang/Integer;

    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/bloody/badboy/e;->MaterialRipple_ripple_zoom:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    new-instance v8, Ljava/lang/Boolean;

    move v13, v7

    move-object v14, v8

    move-object v7, v14

    move v8, v13

    move-object v9, v14

    move v13, v8

    move-object v14, v9

    move-object v8, v14

    move v9, v13

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v7, v6, Lcom/bloody/badboy/MaterialRipple;->hasToZoom:Ljava/lang/Boolean;

    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/bloody/badboy/e;->MaterialRipple_ripple_centered:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    new-instance v8, Ljava/lang/Boolean;

    move v13, v7

    move-object v14, v8

    move-object v7, v14

    move v8, v13

    move-object v9, v14

    move v13, v8

    move-object v14, v9

    move-object v8, v14

    move v9, v13

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v7, v6, Lcom/bloody/badboy/MaterialRipple;->isCentered:Ljava/lang/Boolean;

    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/bloody/badboy/e;->MaterialRipple_ripple_rippleDuration:I

    move-object v9, v0

    iget v9, v9, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v6, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/bloody/badboy/e;->MaterialRipple_ripple_framerate:I

    move-object v9, v0

    iget v9, v9, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v6, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/bloody/badboy/e;->MaterialRipple_ripple_alpha:I

    move-object v9, v0

    iget v9, v9, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v6, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/bloody/badboy/e;->MaterialRipple_ripple_ripplePadding:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lcom/bloody/badboy/MaterialRipple;->ripplePadding:I

    move-object v6, v0

    new-instance v7, Landroid/os/Handler;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v7, v6, Lcom/bloody/badboy/MaterialRipple;->canvasHandler:Landroid/os/Handler;

    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/bloody/badboy/e;->MaterialRipple_ripple_zoomScale:I

    const v9, 0x3f83d70a    # 1.03f

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Lcom/bloody/badboy/MaterialRipple;->zoomScale:F

    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/bloody/badboy/e;->MaterialRipple_ripple_zoomDuration:I

    const/16 v9, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Lcom/bloody/badboy/MaterialRipple;->zoomDuration:I

    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v6, v0

    new-instance v7, Landroid/graphics/Paint;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v6, Lcom/bloody/badboy/MaterialRipple;->paint:Landroid/graphics/Paint;

    move-object v6, v0

    iget-object v6, v6, Lcom/bloody/badboy/MaterialRipple;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object v6, v0

    iget-object v6, v6, Lcom/bloody/badboy/MaterialRipple;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/bloody/badboy/MaterialRipple;->paint:Landroid/graphics/Paint;

    move-object v7, v0

    iget v7, v7, Lcom/bloody/badboy/MaterialRipple;->rippleColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object v6, v0

    iget-object v6, v6, Lcom/bloody/badboy/MaterialRipple;->paint:Landroid/graphics/Paint;

    move-object v7, v0

    iget v7, v7, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/bloody/badboy/MaterialRipple;->setWillNotDraw(Z)V

    move-object v6, v0

    new-instance v7, Landroid/view/GestureDetector;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    new-instance v10, Lcom/bloody/badboy/b;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/bloody/badboy/b;-><init>(Lcom/bloody/badboy/MaterialRipple;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, v6, Lcom/bloody/badboy/MaterialRipple;->gestureDetector:Landroid/view/GestureDetector;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/bloody/badboy/MaterialRipple;->setDrawingCacheEnabled(Z)V

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/bloody/badboy/MaterialRipple;->setClickable(Z)V

    goto/16 :goto_0
.end method

.method private sendClickEvent(Ljava/lang/Boolean;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/bloody/badboy/MaterialRipple;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/AdapterView;

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/bloody/badboy/MaterialRipple;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/AdapterView;

    move-object v3, v8

    move-object v8, v3

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    move v4, v8

    move-object v8, v3

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v8

    move-wide v5, v8

    move-object v8, v1

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v8

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v8

    move-object v9, v3

    move-object v10, v0

    move v11, v4

    move-wide v12, v5

    invoke-interface/range {v8 .. v13}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v8

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v8, v3

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    move-object v9, v3

    move-object v10, v0

    move v11, v4

    move-wide v12, v5

    invoke-interface/range {v8 .. v13}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method


# virtual methods
.method public animateRipple(FF)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/bloody/badboy/MaterialRipple;->createAnimation(FF)V

    return-void
.end method

.method public animateRipple(Landroid/view/MotionEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/bloody/badboy/MaterialRipple;->createAnimation(FF)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move-object v5, v0

    iget-boolean v5, v5, Lcom/bloody/badboy/MaterialRipple;->animationRunning:Z

    if-eqz v5, :cond_5

    move-object v5, v0

    iget v5, v5, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->timer:I

    move-object v7, v0

    iget v7, v7, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    mul-int/2addr v6, v7

    if-gt v5, v6, :cond_1

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/bloody/badboy/MaterialRipple;->animationRunning:Z

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->timer:I

    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->durationEmpty:I

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->timerEmpty:I

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    move-object v5, v0

    invoke-virtual {v5}, Lcom/bloody/badboy/MaterialRipple;->invalidate()V

    move-object v5, v0

    iget-object v5, v5, Lcom/bloody/badboy/MaterialRipple;->onCompletionListener:Lcom/bloody/badboy/c;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/bloody/badboy/MaterialRipple;->onCompletionListener:Lcom/bloody/badboy/c;

    move-object v6, v0

    invoke-interface {v5, v6}, Lcom/bloody/badboy/c;->onComplete(Lcom/bloody/badboy/MaterialRipple;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/bloody/badboy/MaterialRipple;->canvasHandler:Landroid/os/Handler;

    move-object v6, v0

    iget-object v6, v6, Lcom/bloody/badboy/MaterialRipple;->runnable:Ljava/lang/Runnable;

    move-object v7, v0

    iget v7, v7, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v5

    move-object v5, v0

    iget v5, v5, Lcom/bloody/badboy/MaterialRipple;->timer:I

    const/4 v6, 0x0

    if-ne v5, v6, :cond_2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v5

    :cond_2
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->x:F

    move-object v7, v0

    iget v7, v7, Lcom/bloody/badboy/MaterialRipple;->y:F

    move-object v8, v0

    iget v8, v8, Lcom/bloody/badboy/MaterialRipple;->radiusMax:F

    move-object v9, v0

    iget v9, v9, Lcom/bloody/badboy/MaterialRipple;->timer:I

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/bloody/badboy/MaterialRipple;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/bloody/badboy/MaterialRipple;->paint:Landroid/graphics/Paint;

    const-string v6, "#80ffffff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object v5, v0

    iget-object v5, v5, Lcom/bloody/badboy/MaterialRipple;->rippleType:Ljava/lang/Integer;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lcom/bloody/badboy/MaterialRipple;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    move-object v5, v0

    iget v5, v5, Lcom/bloody/badboy/MaterialRipple;->timer:I

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    move-object v5, v0

    iget v5, v5, Lcom/bloody/badboy/MaterialRipple;->durationEmpty:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    move-object v7, v0

    iget v7, v7, Lcom/bloody/badboy/MaterialRipple;->timer:I

    move-object v8, v0

    iget v8, v8, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->durationEmpty:I

    :cond_3
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->timerEmpty:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->timerEmpty:I

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->radiusMax:F

    move-object v7, v0

    iget v7, v7, Lcom/bloody/badboy/MaterialRipple;->timerEmpty:I

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/bloody/badboy/MaterialRipple;->durationEmpty:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lcom/bloody/badboy/MaterialRipple;->getCircleBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v3, v5

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    int-to-float v7, v7

    const/4 v8, 0x0

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Lcom/bloody/badboy/MaterialRipple;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v5, v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/bloody/badboy/MaterialRipple;->paint:Landroid/graphics/Paint;

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->rippleColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object v5, v0

    iget-object v5, v5, Lcom/bloody/badboy/MaterialRipple;->rippleType:Ljava/lang/Integer;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    move-object v5, v0

    iget v5, v5, Lcom/bloody/badboy/MaterialRipple;->timer:I

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3f19999a    # 0.6f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Lcom/bloody/badboy/MaterialRipple;->paint:Landroid/graphics/Paint;

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lcom/bloody/badboy/MaterialRipple;->timerEmpty:I

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/bloody/badboy/MaterialRipple;->durationEmpty:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->timer:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/bloody/badboy/MaterialRipple;->timer:I

    :cond_5
    goto/16 :goto_0

    :cond_6
    move-object v5, v0

    iget-object v5, v5, Lcom/bloody/badboy/MaterialRipple;->paint:Landroid/graphics/Paint;

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_7
    move-object v5, v0

    iget-object v5, v5, Lcom/bloody/badboy/MaterialRipple;->paint:Landroid/graphics/Paint;

    move-object v6, v0

    iget v6, v6, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lcom/bloody/badboy/MaterialRipple;->timer:I

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method public getFrameRate()I
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    move v0, v2

    return v0
.end method

.method public getRippleAlpha()I
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    move v0, v2

    return v0
.end method

.method public getRippleColor()I
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/bloody/badboy/MaterialRipple;->rippleColor:I

    move v0, v2

    return v0
.end method

.method public getRippleDuration()I
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    move v0, v2

    return v0
.end method

.method public getRipplePadding()I
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/bloody/badboy/MaterialRipple;->ripplePadding:I

    move v0, v2

    return v0
.end method

.method public getRippleType()Lcom/bloody/badboy/d;
    .locals 4

    move-object v0, p0

    invoke-static {}, Lcom/bloody/badboy/d;->values()[Lcom/bloody/badboy/d;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bloody/badboy/MaterialRipple;->rippleType:Ljava/lang/Integer;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public getZoomDuration()I
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/bloody/badboy/MaterialRipple;->zoomDuration:I

    move v0, v2

    return v0
.end method

.method public getZoomScale()F
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/bloody/badboy/MaterialRipple;->zoomScale:F

    move v0, v2

    return v0
.end method

.method public isCentered()Ljava/lang/Boolean;
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/bloody/badboy/MaterialRipple;->isCentered:Ljava/lang/Boolean;

    move-object v0, v2

    return-object v0
.end method

.method public isZooming()Ljava/lang/Boolean;
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/bloody/badboy/MaterialRipple;->hasToZoom:Ljava/lang/Boolean;

    move-object v0, v2

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/bloody/badboy/MaterialRipple;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-super {v6, v7, v8, v9, v10}, Landroid/view/View;->onSizeChanged(IIII)V

    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/bloody/badboy/MaterialRipple;->WIDTH:I

    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/bloody/badboy/MaterialRipple;->HEIGHT:I

    move-object v6, v0

    new-instance v7, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v10, v0

    iget v10, v10, Lcom/bloody/badboy/MaterialRipple;->zoomScale:F

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v12, v0

    iget v12, v12, Lcom/bloody/badboy/MaterialRipple;->zoomScale:F

    move v13, v1

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move v14, v2

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v7, v6, Lcom/bloody/badboy/MaterialRipple;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    move-object v6, v0

    iget-object v6, v6, Lcom/bloody/badboy/MaterialRipple;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    move-object v7, v0

    iget v7, v7, Lcom/bloody/badboy/MaterialRipple;->zoomDuration:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    move-object v6, v0

    iget-object v6, v6, Lcom/bloody/badboy/MaterialRipple;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    move-object v6, v0

    iget-object v6, v6, Lcom/bloody/badboy/MaterialRipple;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/bloody/badboy/MaterialRipple;->gestureDetector:Landroid/view/GestureDetector;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/bloody/badboy/MaterialRipple;->animateRipple(Landroid/view/MotionEvent;)V

    move-object v3, v0

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Boolean;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-direct {v3, v4}, Lcom/bloody/badboy/MaterialRipple;->sendClickEvent(Ljava/lang/Boolean;)V

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public setCentered(Ljava/lang/Boolean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bloody/badboy/MaterialRipple;->isCentered:Ljava/lang/Boolean;

    return-void
.end method

.method public setColorResId(Ljava/lang/String;)I
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/bloody/badboy/MaterialRipple;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v1

    const-string v5, "color"

    move-object v6, v0

    invoke-virtual {v6}, Lcom/bloody/badboy/MaterialRipple;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public setFrameRate(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->frameRate:I

    return-void
.end method

.method public setOnRippleCompleteListener(Lcom/bloody/badboy/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bloody/badboy/c;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bloody/badboy/MaterialRipple;->onCompletionListener:Lcom/bloody/badboy/c;

    return-void
.end method

.method public setRippleAlpha(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->rippleAlpha:I

    return-void
.end method

.method public setRippleColor(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/bloody/badboy/MaterialRipple;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->rippleColor:I

    return-void
.end method

.method public setRippleDuration(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->rippleDuration:I

    return-void
.end method

.method public setRipplePadding(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->ripplePadding:I

    return-void
.end method

.method public setRippleType(Lcom/bloody/badboy/d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bloody/badboy/d;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/bloody/badboy/d;->ordinal()I

    move-result v4

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, v3, Lcom/bloody/badboy/MaterialRipple;->rippleType:Ljava/lang/Integer;

    return-void
.end method

.method public setZoomDuration(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->zoomDuration:I

    return-void
.end method

.method public setZoomScale(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bloody/badboy/MaterialRipple;->zoomScale:F

    return-void
.end method

.method public setZooming(Ljava/lang/Boolean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bloody/badboy/MaterialRipple;->hasToZoom:Ljava/lang/Boolean;

    return-void
.end method
