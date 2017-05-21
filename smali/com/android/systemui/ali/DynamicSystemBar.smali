.class public Lcom/android/systemui/ali/DynamicSystemBar;
.super Landroid/widget/FrameLayout;
.source "DynamicSystemBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ali/DynamicSystemBar$100000000;
    }
.end annotation


# instance fields
.field Height:I

.field Width:I

.field private cc:Landroid/content/Context;

.field h:Landroid/os/Handler;

.field mDarkEna:I

.field mDisablePackage:[Ljava/lang/String;

.field private mDisplay:Landroid/view/Display;

.field mDsbFilter:Landroid/view/View;

.field private mDsbFlags:I

.field mDynamicEna:I

.field mGradientEna:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mNavBarsH:I

.field mPending:I

.field mUpdater:I

.field run:Ljava/lang/Runnable;

.field ss:Landroid/graphics/Bitmap;

.field yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const/16 v5, 0x64

    iput v5, v4, Lcom/android/systemui/ali/DynamicSystemBar;->mUpdater:I

    move-object v4, v0

    const/16 v5, 0x2710

    iput v5, v4, Lcom/android/systemui/ali/DynamicSystemBar;->mPending:I

    move-object v4, v0

    new-instance v5, Lcom/android/systemui/ali/DynamicSystemBar$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/android/systemui/ali/DynamicSystemBar$100000000;-><init>(Lcom/android/systemui/ali/DynamicSystemBar;)V

    iput-object v5, v4, Lcom/android/systemui/ali/DynamicSystemBar;->run:Ljava/lang/Runnable;

    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v5, v4, Lcom/android/systemui/ali/DynamicSystemBar;->h:Landroid/os/Handler;

    .line 47
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    .line 48
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/ali/DynamicSystemBar;->h:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/ali/DynamicSystemBar;->run:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/ali/DynamicSystemBar;->h:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/ali/DynamicSystemBar;->run:Ljava/lang/Runnable;

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/ali/DynamicSystemBar;->mPending:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 50
    move-object v4, v0

    new-instance v5, Landroid/view/View;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/systemui/ali/DynamicSystemBar;->mDsbFilter:Landroid/view/View;

    .line 51
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/ali/DynamicSystemBar;->mDsbFilter:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/ali/DynamicSystemBar;->mDsbFilter:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/ali/DynamicSystemBar;->addView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1000008(Lcom/android/systemui/ali/DynamicSystemBar;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/android/systemui/ali/DynamicSystemBar;->setColor()V

    return-void
.end method

.method private calculateColor()I
    .locals 18

    .prologue
    .line 323
    move-object/from16 v0, p0

    move-object v13, v0

    iget v13, v13, Lcom/android/systemui/ali/DynamicSystemBar;->yOffset:I

    move v3, v13

    move-object v13, v0

    iget v13, v13, Lcom/android/systemui/ali/DynamicSystemBar;->Width:I

    move v4, v13

    const/4 v13, 0x5

    new-array v13, v13, [I

    move-object v5, v13

    move v13, v4

    const/4 v14, 0x4

    div-int/lit8 v13, v13, 0x4

    move v6, v13

    .line 328
    move-object v13, v5

    const/4 v14, 0x1

    move v15, v6

    aput v15, v13, v14

    .line 329
    move-object v13, v5

    const/4 v14, 0x2

    move v15, v4

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    aput v15, v13, v14

    .line 330
    move-object v13, v5

    const/4 v14, 0x3

    move v15, v6

    const/16 v16, 0x3

    mul-int/lit8 v15, v15, 0x3

    aput v15, v13, v14

    .line 331
    move-object v13, v5

    const/4 v14, 0x4

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aput v15, v13, v14

    .line 332
    const/4 v13, 0x5

    new-array v13, v13, [I

    move-object v7, v13

    const/4 v13, 0x0

    move v8, v13

    .line 334
    :cond_0
    move-object v13, v7

    move v14, v8

    move-object v15, v0

    iget-object v15, v15, Lcom/android/systemui/ali/DynamicSystemBar;->ss:Landroid/graphics/Bitmap;

    move-object/from16 v16, v5

    move/from16 v17, v8

    aget v16, v16, v17

    move/from16 v17, v3

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    aput v15, v13, v14

    .line 335
    add-int/lit8 v8, v8, 0x1

    .line 333
    move v13, v8

    const/4 v14, 0x5

    if-lt v13, v14, :cond_0

    .line 337
    const/4 v13, 0x5

    new-array v13, v13, [I

    move-object v9, v13

    const/4 v13, 0x0

    move v10, v13

    .line 339
    :cond_1
    move-object v13, v9

    move v14, v10

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 340
    add-int/lit8 v10, v10, 0x1

    .line 338
    move v13, v10

    const/4 v14, 0x5

    if-lt v13, v14, :cond_1

    .line 342
    const/4 v13, 0x0

    move v8, v13

    .line 343
    :cond_2
    move-object v13, v7

    move v14, v8

    aget v13, v13, v14

    move v6, v13

    .line 346
    const/4 v13, 0x0

    move v10, v13

    .line 347
    const/4 v13, 0x0

    move v11, v13

    .line 349
    :cond_3
    move v13, v11

    const/4 v14, 0x1

    shl-int/lit8 v13, v13, 0x1

    move v11, v13

    .line 350
    move v13, v6

    move-object v14, v7

    move v15, v10

    aget v14, v14, v15

    if-ne v13, v14, :cond_4

    .line 352
    move v13, v11

    const/4 v14, 0x1

    or-int/lit8 v13, v13, 0x1

    move v11, v13

    .line 354
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 348
    move v13, v10

    const/4 v14, 0x5

    if-lt v13, v14, :cond_3

    .line 356
    move-object v13, v9

    move v14, v8

    move v15, v11

    aput v15, v13, v14

    .line 357
    add-int/lit8 v8, v8, 0x1

    .line 344
    move v13, v8

    const/4 v14, 0x5

    if-lt v13, v14, :cond_2

    .line 359
    move-object v13, v9

    const/4 v14, 0x0

    aget v13, v13, v14

    move v10, v13

    .line 360
    move v13, v10

    const/16 v14, 0x1d

    if-ge v13, v14, :cond_5

    move v13, v10

    const/16 v14, 0x17

    if-eq v13, v14, :cond_5

    move v13, v10

    const/16 v14, 0x1b

    if-ne v13, v14, :cond_6

    .line 362
    :cond_5
    move-object v13, v7

    const/4 v14, 0x0

    aget v13, v13, v14

    move v2, v13

    .line 401
    :goto_0
    move v13, v2

    move v0, v13

    return v0

    .line 364
    :cond_6
    move-object v13, v9

    const/4 v14, 0x1

    aget v13, v13, v14

    const/16 v14, 0xf

    if-eq v13, v14, :cond_7

    move-object v13, v9

    const/4 v14, 0x0

    aget v13, v13, v14

    const/16 v14, 0x11

    if-ne v13, v14, :cond_8

    move-object v13, v9

    const/4 v14, 0x1

    aget v13, v13, v14

    const/16 v14, 0xe

    if-ne v13, v14, :cond_8

    .line 366
    :cond_7
    move-object v13, v7

    const/4 v14, 0x1

    aget v13, v13, v14

    move v2, v13

    goto :goto_0

    .line 370
    :cond_8
    const/4 v13, 0x0

    move v10, v13

    .line 372
    :cond_9
    move-object v13, v9

    move v14, v10

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 373
    add-int/lit8 v10, v10, 0x1

    .line 371
    move v13, v10

    const/4 v14, 0x5

    if-lt v13, v14, :cond_9

    .line 375
    const/4 v13, 0x0

    move v8, v13

    .line 377
    :cond_a
    move-object v13, v7

    move v14, v8

    aget v13, v13, v14

    move v6, v13

    .line 378
    const/4 v13, 0x0

    move v10, v13

    .line 379
    const/4 v13, 0x0

    move v11, v13

    .line 381
    :cond_b
    move v13, v11

    const/4 v14, 0x1

    shl-int/lit8 v13, v13, 0x1

    move v11, v13

    .line 382
    move-object v13, v0

    move v14, v6

    move-object v15, v7

    move/from16 v16, v10

    aget v15, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->isColorSimilar(II)I

    move-result v13

    const/4 v14, 0x0

    if-eq v13, v14, :cond_c

    .line 384
    move v13, v11

    const/4 v14, 0x1

    or-int/lit8 v13, v13, 0x1

    move v11, v13

    .line 386
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 380
    move v13, v10

    const/4 v14, 0x5

    if-lt v13, v14, :cond_b

    .line 388
    move-object v13, v9

    move v14, v8

    move v15, v11

    aput v15, v13, v14

    .line 389
    add-int/lit8 v8, v8, 0x1

    .line 376
    move v13, v8

    const/4 v14, 0x5

    if-lt v13, v14, :cond_a

    .line 391
    move-object v13, v9

    const/4 v14, 0x0

    aget v13, v13, v14

    move v10, v13

    .line 392
    move v13, v10

    const/16 v14, 0x1d

    if-ge v13, v14, :cond_d

    move v13, v10

    const/16 v14, 0x17

    if-eq v13, v14, :cond_d

    move v13, v10

    const/16 v14, 0x1b

    if-ne v13, v14, :cond_e

    .line 394
    :cond_d
    move-object v13, v0

    move-object v14, v7

    move-object v15, v9

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->getAverageColor([II)I

    move-result v13

    move v2, v13

    goto/16 :goto_0

    .line 398
    :cond_e
    move-object v13, v0

    move-object v14, v7

    move-object v15, v9

    const/16 v16, 0x1

    aget v15, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->getAverageColor([II)I

    move-result v13

    move v2, v13

    goto/16 :goto_0
.end method

.method private calculateNavBarColor()I
    .locals 18

    .prologue
    .line 205
    move-object/from16 v0, p0

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lcom/android/systemui/ali/DynamicSystemBar;->isRotation(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object v13, v0

    iget v13, v13, Lcom/android/systemui/ali/DynamicSystemBar;->Width:I

    move-object v14, v0

    iget v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->mNavBarsH:I

    sub-int/2addr v13, v14

    :goto_0
    move v3, v13

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lcom/android/systemui/ali/DynamicSystemBar;->isRotation(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object v13, v0

    iget v13, v13, Lcom/android/systemui/ali/DynamicSystemBar;->Height:I

    :goto_1
    move v4, v13

    const/4 v13, 0x5

    new-array v13, v13, [I

    move-object v5, v13

    move v13, v4

    const/4 v14, 0x4

    div-int/lit8 v13, v13, 0x4

    move v6, v13

    .line 210
    move-object v13, v5

    const/4 v14, 0x1

    move v15, v6

    aput v15, v13, v14

    .line 211
    move-object v13, v5

    const/4 v14, 0x2

    move v15, v4

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    aput v15, v13, v14

    .line 212
    move-object v13, v5

    const/4 v14, 0x3

    move v15, v6

    const/16 v16, 0x3

    mul-int/lit8 v15, v15, 0x3

    aput v15, v13, v14

    .line 213
    move-object v13, v5

    const/4 v14, 0x4

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aput v15, v13, v14

    .line 214
    const/4 v13, 0x5

    new-array v13, v13, [I

    move-object v7, v13

    const/4 v13, 0x0

    move v8, v13

    .line 216
    :cond_0
    move-object v13, v5

    move v14, v8

    aget v13, v13, v14

    move-object v14, v0

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->ss:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-le v13, v14, :cond_b

    .line 218
    move-object v13, v7

    move v14, v8

    move-object v15, v0

    iget-object v15, v15, Lcom/android/systemui/ali/DynamicSystemBar;->ss:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    const/16 v16, 0xa

    add-int/lit8 v15, v15, -0xa

    aput v15, v13, v14

    .line 224
    :cond_1
    :goto_2
    move v13, v3

    move-object v14, v0

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->ss:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-le v13, v14, :cond_c

    .line 226
    move-object v13, v0

    iget-object v13, v13, Lcom/android/systemui/ali/DynamicSystemBar;->ss:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/16 v14, 0xa

    add-int/lit8 v13, v13, -0xa

    move v3, v13

    .line 232
    :cond_2
    :goto_3
    move-object v13, v7

    move v14, v8

    move-object v15, v0

    iget-object v15, v15, Lcom/android/systemui/ali/DynamicSystemBar;->ss:Landroid/graphics/Bitmap;

    move-object/from16 v16, v5

    move/from16 v17, v8

    aget v16, v16, v17

    move/from16 v17, v3

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    aput v15, v13, v14

    .line 233
    add-int/lit8 v8, v8, 0x1

    .line 215
    move v13, v8

    const/4 v14, 0x5

    if-lt v13, v14, :cond_0

    .line 235
    const/4 v13, 0x5

    new-array v13, v13, [I

    move-object v9, v13

    const/4 v13, 0x0

    move v10, v13

    .line 237
    :cond_3
    move-object v13, v9

    move v14, v10

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 238
    add-int/lit8 v10, v10, 0x1

    .line 236
    move v13, v10

    const/4 v14, 0x5

    if-ge v13, v14, :cond_4

    move v13, v10

    move-object v14, v0

    iget v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->Width:I

    if-lt v13, v14, :cond_3

    .line 240
    :cond_4
    const/4 v13, 0x0

    move v8, v13

    .line 241
    :cond_5
    move-object v13, v7

    move v14, v8

    aget v13, v13, v14

    move v6, v13

    .line 244
    const/4 v13, 0x0

    move v10, v13

    .line 245
    const/4 v13, 0x0

    move v11, v13

    .line 247
    :cond_6
    move v13, v11

    const/4 v14, 0x1

    shl-int/lit8 v13, v13, 0x1

    move v11, v13

    .line 248
    move v13, v6

    move-object v14, v7

    move v15, v10

    aget v14, v14, v15

    if-ne v13, v14, :cond_7

    .line 250
    move v13, v11

    const/4 v14, 0x1

    or-int/lit8 v13, v13, 0x1

    move v11, v13

    .line 252
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 246
    move v13, v10

    const/4 v14, 0x5

    if-lt v13, v14, :cond_6

    .line 254
    move-object v13, v9

    move v14, v8

    move v15, v11

    aput v15, v13, v14

    .line 255
    add-int/lit8 v8, v8, 0x1

    .line 242
    move v13, v8

    const/4 v14, 0x5

    if-lt v13, v14, :cond_5

    .line 257
    move-object v13, v9

    const/4 v14, 0x0

    aget v13, v13, v14

    move v10, v13

    .line 258
    move v13, v10

    const/16 v14, 0x1d

    if-ge v13, v14, :cond_8

    move v13, v10

    const/16 v14, 0x17

    if-eq v13, v14, :cond_8

    move v13, v10

    const/16 v14, 0x1b

    if-ne v13, v14, :cond_d

    .line 260
    :cond_8
    move-object v13, v7

    const/4 v14, 0x0

    aget v13, v13, v14

    move v2, v13

    .line 299
    :goto_4
    move v13, v2

    move v0, v13

    return v0

    .line 205
    :cond_9
    move-object v13, v0

    iget v13, v13, Lcom/android/systemui/ali/DynamicSystemBar;->Height:I

    move-object v14, v0

    iget v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->mNavBarsH:I

    sub-int/2addr v13, v14

    goto/16 :goto_0

    :cond_a
    move-object v13, v0

    iget v13, v13, Lcom/android/systemui/ali/DynamicSystemBar;->Width:I

    goto/16 :goto_1

    .line 220
    :cond_b
    move-object v13, v5

    move v14, v8

    aget v13, v13, v14

    const/4 v14, 0x0

    if-ge v13, v14, :cond_1

    .line 222
    move-object v13, v5

    move v14, v8

    const/4 v15, 0x1

    aput v15, v13, v14

    goto/16 :goto_2

    .line 228
    :cond_c
    move v13, v3

    const/4 v14, 0x0

    if-ge v13, v14, :cond_2

    .line 230
    const/4 v13, 0x1

    move v3, v13

    goto/16 :goto_3

    .line 262
    :cond_d
    move-object v13, v9

    const/4 v14, 0x1

    aget v13, v13, v14

    const/16 v14, 0xf

    if-eq v13, v14, :cond_e

    move-object v13, v9

    const/4 v14, 0x0

    aget v13, v13, v14

    const/16 v14, 0x11

    if-ne v13, v14, :cond_f

    move-object v13, v9

    const/4 v14, 0x1

    aget v13, v13, v14

    const/16 v14, 0xe

    if-ne v13, v14, :cond_f

    .line 264
    :cond_e
    move-object v13, v7

    const/4 v14, 0x1

    aget v13, v13, v14

    move v2, v13

    goto :goto_4

    .line 268
    :cond_f
    const/4 v13, 0x0

    move v10, v13

    .line 270
    :cond_10
    move-object v13, v9

    move v14, v10

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 271
    add-int/lit8 v10, v10, 0x1

    .line 269
    move v13, v10

    const/4 v14, 0x5

    if-lt v13, v14, :cond_10

    .line 273
    const/4 v13, 0x0

    move v8, v13

    .line 275
    :cond_11
    move-object v13, v7

    move v14, v8

    aget v13, v13, v14

    move v6, v13

    .line 276
    const/4 v13, 0x0

    move v10, v13

    .line 277
    const/4 v13, 0x0

    move v11, v13

    .line 279
    :cond_12
    move v13, v11

    const/4 v14, 0x1

    shl-int/lit8 v13, v13, 0x1

    move v11, v13

    .line 280
    move-object v13, v0

    move v14, v6

    move-object v15, v7

    move/from16 v16, v10

    aget v15, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->isColorSimilar(II)I

    move-result v13

    const/4 v14, 0x0

    if-eq v13, v14, :cond_13

    .line 282
    move v13, v11

    const/4 v14, 0x1

    or-int/lit8 v13, v13, 0x1

    move v11, v13

    .line 284
    :cond_13
    add-int/lit8 v10, v10, 0x1

    .line 278
    move v13, v10

    const/4 v14, 0x5

    if-lt v13, v14, :cond_12

    .line 286
    move-object v13, v9

    move v14, v8

    move v15, v11

    aput v15, v13, v14

    .line 287
    add-int/lit8 v8, v8, 0x1

    .line 274
    move v13, v8

    const/4 v14, 0x5

    if-lt v13, v14, :cond_11

    .line 289
    move-object v13, v9

    const/4 v14, 0x0

    aget v13, v13, v14

    move v10, v13

    .line 290
    move v13, v10

    const/16 v14, 0x1d

    if-ge v13, v14, :cond_14

    move v13, v10

    const/16 v14, 0x17

    if-eq v13, v14, :cond_14

    move v13, v10

    const/16 v14, 0x1b

    if-ne v13, v14, :cond_15

    .line 292
    :cond_14
    move-object v13, v0

    move-object v14, v7

    move-object v15, v9

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->getAverageColor([II)I

    move-result v13

    move v2, v13

    goto/16 :goto_4

    .line 296
    :cond_15
    move-object v13, v0

    move-object v14, v7

    move-object v15, v9

    const/16 v16, 0x1

    aget v15, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->getAverageColor([II)I

    move-result v13

    move v2, v13

    goto/16 :goto_4
.end method

.method private getAverageColor([II)I
    .locals 16

    .prologue
    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v12, 0x4

    move v4, v12

    const/4 v12, 0x0

    move v5, v12

    move v12, v2

    move v6, v12

    const/4 v12, 0x0

    move v7, v12

    const/4 v12, 0x0

    move v8, v12

    const/4 v12, 0x0

    move v9, v12

    .line 413
    :cond_0
    move v12, v6

    const/4 v13, 0x0

    if-eq v12, v13, :cond_1

    .line 415
    move-object v12, v1

    move v13, v4

    aget v12, v12, v13

    move v10, v12

    .line 416
    move v12, v7

    move v13, v10

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v13

    add-int/2addr v12, v13

    move v7, v12

    .line 417
    move v12, v8

    move v13, v10

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v13

    add-int/2addr v12, v13

    move v8, v12

    .line 418
    move v12, v9

    move v13, v10

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    add-int/2addr v12, v13

    move v9, v12

    .line 419
    add-int/lit8 v5, v5, 0x1

    .line 421
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 422
    move v12, v6

    const/4 v13, 0x1

    shr-int/lit8 v12, v12, 0x1

    move v6, v12

    .line 412
    move v12, v4

    const/4 v13, 0x0

    if-ge v12, v13, :cond_0

    .line 424
    move v12, v7

    move v13, v5

    div-int/2addr v12, v13

    move v7, v12

    .line 425
    move v12, v8

    move v13, v5

    div-int/2addr v12, v13

    move v8, v12

    .line 426
    move v12, v9

    move v13, v5

    div-int/2addr v12, v13

    move v9, v12

    .line 427
    move v12, v7

    const/4 v13, 0x0

    if-gt v12, v13, :cond_5

    .line 429
    const/4 v12, 0x0

    move v7, v12

    .line 436
    :cond_2
    :goto_0
    move v12, v8

    const/4 v13, 0x0

    if-gt v12, v13, :cond_6

    .line 438
    const/4 v12, 0x0

    move v8, v12

    .line 444
    :cond_3
    :goto_1
    move v12, v9

    const/4 v13, 0x0

    if-gt v12, v13, :cond_7

    .line 446
    const/4 v12, 0x0

    move v9, v12

    .line 452
    :cond_4
    :goto_2
    const/16 v12, 0xff

    move v13, v7

    move v14, v8

    move v15, v9

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    move v0, v12

    return v0

    .line 431
    :cond_5
    move v12, v7

    const/16 v13, 0xff

    if-lt v12, v13, :cond_2

    .line 433
    const/16 v12, 0xff

    move v7, v12

    goto :goto_0

    .line 440
    :cond_6
    move v12, v8

    const/16 v13, 0xff

    if-lt v12, v13, :cond_3

    .line 442
    const/16 v12, 0xff

    move v8, v12

    goto :goto_1

    .line 448
    :cond_7
    move v12, v9

    const/16 v13, 0xff

    if-lt v12, v13, :cond_4

    .line 450
    const/16 v12, 0xff

    move v9, v12

    goto :goto_2
.end method

.method private getColoringIconBar(Landroid/graphics/Bitmap;)I
    .locals 8

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    move v3, v5

    .line 125
    move v5, v3

    move v0, v5

    return v0
.end method

.method private getColoringNavBar(Landroid/graphics/Bitmap;)I
    .locals 9

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    move v3, v5

    .line 58
    move v5, v3

    move v0, v5

    return v0
.end method

.method private getRotationFor(I)F
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    move v1, p1

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 181
    const/4 v3, 0x0

    move v0, v3

    .line 192
    :goto_0
    return v0

    .line 184
    :pswitch_0
    const/high16 v3, 0x43870000    # 270.0f

    move v0, v3

    goto :goto_0

    .line 187
    :pswitch_1
    const/high16 v3, 0x43340000    # 180.0f

    move v0, v3

    goto :goto_0

    .line 192
    :pswitch_2
    const/high16 v3, 0x42b40000    # 90.0f

    move v0, v3

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/ali/DynamicSystemBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v0, v5

    return v0
.end method

.method private setColor()V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    move-object/from16 v1, p0

    move-object v14, v1

    invoke-direct {v14}, Lcom/android/systemui/ali/DynamicSystemBar;->takingSampling()V

    .line 70
    const/4 v14, 0x0

    move v3, v14

    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "dsb_flag"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    move v4, v14

    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "dsb_enable"

    const/16 v16, 0x8

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    move v5, v14

    .line 73
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "dsb_updater"

    const/16 v17, 0xc8

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Lcom/android/systemui/ali/DynamicSystemBar;->mUpdater:I

    .line 74
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "dsb_pending"

    const/16 v17, 0x1388

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Lcom/android/systemui/ali/DynamicSystemBar;->mPending:I

    .line 75
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "gra_enable"

    const/16 v17, 0x8

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Lcom/android/systemui/ali/DynamicSystemBar;->mGradientEna:I

    .line 76
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "dark_enable"

    const/16 v17, 0x8

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Lcom/android/systemui/ali/DynamicSystemBar;->mDarkEna:I

    .line 77
    move-object v14, v1

    move v15, v5

    invoke-virtual {v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->setVisibility(I)V

    .line 78
    move-object v14, v1

    move v15, v4

    invoke-virtual {v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->setDsbFlag(I)V

    .line 79
    move-object v14, v1

    move-object v15, v1

    iget v15, v15, Lcom/android/systemui/ali/DynamicSystemBar;->mGradientEna:I

    invoke-virtual {v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->isEna(I)Z

    move-result v14

    move v6, v14

    move-object v14, v1

    move-object v15, v1

    iget v15, v15, Lcom/android/systemui/ali/DynamicSystemBar;->mDarkEna:I

    invoke-virtual {v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->isEna(I)Z

    move-result v14

    move v7, v14

    .line 81
    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object v8, v14

    .line 82
    move-object v14, v8

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    move-object v14, v8

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 84
    const/4 v14, 0x0

    move v11, v14

    :goto_0
    move v14, v11

    move-object v15, v1

    iget-object v15, v15, Lcom/android/systemui/ali/DynamicSystemBar;->mDisablePackage:[Ljava/lang/String;

    array-length v15, v15

    if-lt v14, v15, :cond_0

    return-void

    .line 85
    :cond_0
    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->mDisablePackage:[Ljava/lang/String;

    move v15, v11

    aget-object v14, v14, v15

    move-object v12, v14

    .line 86
    move-object v14, v12

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object v14, v9

    const-string v15, "launcher"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object v14, v10

    const-string v15, "home"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object v14, v12

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 87
    :cond_1
    move-object v14, v1

    invoke-virtual {v14}, Lcom/android/systemui/ali/DynamicSystemBar;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_3

    .line 88
    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "dynamic_icon"

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/ali/DynamicSystemBar;->ss:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/android/systemui/ali/DynamicSystemBar;->getColoringIconBar(Landroid/graphics/Bitmap;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v14

    .line 92
    :goto_1
    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "dynamic_nav"

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/ali/DynamicSystemBar;->ss:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/android/systemui/ali/DynamicSystemBar;->getColoringNavBar(Landroid/graphics/Bitmap;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v14

    .line 93
    const/4 v14, 0x0

    move v3, v14

    .line 94
    move-object v14, v1

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->setBackgroundColor(I)V

    .line 95
    move-object v14, v1

    invoke-virtual {v14}, Lcom/android/systemui/ali/DynamicSystemBar;->invalidate()V

    .line 107
    :goto_2
    move v14, v6

    if-eqz v14, :cond_7

    .line 108
    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->mDsbFilter:Landroid/view/View;

    move-object v15, v1

    const-string v16, "dsb_gradient"

    const-string v17, "drawable"

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/android/systemui/ali/DynamicSystemBar;->resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 84
    :cond_2
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 90
    :cond_3
    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "dynamic_icon"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v14

    goto :goto_1

    .line 97
    :cond_4
    move-object v14, v1

    invoke-direct {v14}, Lcom/android/systemui/ali/DynamicSystemBar;->calculateColor()I

    move-result v14

    move v3, v14

    .line 98
    move-object v14, v1

    move v15, v3

    invoke-virtual {v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->setBackgroundColor(I)V

    .line 99
    move-object v14, v1

    invoke-virtual {v14}, Lcom/android/systemui/ali/DynamicSystemBar;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_5

    .line 100
    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "dynamic_icon"

    move/from16 v16, v3

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v14

    .line 104
    :goto_4
    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "dynamic_nav"

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/ali/DynamicSystemBar;->mDsbFlags:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/ali/DynamicSystemBar;->isFromBottom(I)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v16}, Lcom/android/systemui/ali/DynamicSystemBar;->calculateNavBarColor()I

    move-result v16

    :goto_5
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v14

    .line 105
    move-object v14, v1

    invoke-virtual {v14}, Lcom/android/systemui/ali/DynamicSystemBar;->invalidate()V

    goto :goto_2

    .line 102
    :cond_5
    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "dynamic_icon"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v14

    goto :goto_4

    .line 104
    :cond_6
    move/from16 v16, v3

    goto :goto_5

    .line 109
    :cond_7
    move v14, v7

    if-eqz v14, :cond_9

    move-object v14, v9

    move-object v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object v14, v10

    move-object v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 110
    :cond_8
    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->mDsbFilter:Landroid/view/View;

    move-object v15, v1

    invoke-virtual {v15}, Lcom/android/systemui/ali/DynamicSystemBar;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v16, v1

    const-string v17, "darken_color"

    const-string v18, "color"

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v16 .. v19}, Lcom/android/systemui/ali/DynamicSystemBar;->resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 111
    :cond_9
    move v14, v6

    if-nez v14, :cond_2

    move v14, v7

    if-nez v14, :cond_2

    .line 112
    move-object v14, v1

    iget-object v14, v14, Lcom/android/systemui/ali/DynamicSystemBar;->mDsbFilter:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_3
.end method

.method private takingSampling()V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 136
    move-object/from16 v0, p0

    const/4 v10, 0x5

    move v2, v10

    .line 137
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Lcom/android/systemui/ali/DynamicSystemBar;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/android/systemui/ali/DynamicSystemBar;->isRotation(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object v12, v0

    const-string v13, "navigation_bar_height"

    const-string v14, "dimen"

    const-string v15, "android"

    invoke-direct {v12, v13, v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    :goto_0
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x3

    add-int/lit8 v11, v11, 0x3

    const/4 v12, 0x5

    div-int/lit8 v11, v11, 0x5

    iput v11, v10, Lcom/android/systemui/ali/DynamicSystemBar;->mNavBarsH:I

    .line 138
    move-object v10, v0

    new-instance v11, Landroid/graphics/Matrix;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    iput-object v11, v10, Lcom/android/systemui/ali/DynamicSystemBar;->mMatrix:Landroid/graphics/Matrix;

    .line 139
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    iput-object v11, v10, Lcom/android/systemui/ali/DynamicSystemBar;->mDisplay:Landroid/view/Display;

    .line 140
    move-object v10, v0

    new-instance v11, Landroid/util/DisplayMetrics;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v11, v10, Lcom/android/systemui/ali/DynamicSystemBar;->mMetrics:Landroid/util/DisplayMetrics;

    .line 141
    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/ali/DynamicSystemBar;->mDisplay:Landroid/view/Display;

    move-object v11, v0

    iget-object v11, v11, Lcom/android/systemui/ali/DynamicSystemBar;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v10, v11}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 142
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Lcom/android/systemui/ali/DynamicSystemBar;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object v12, v0

    const-string v13, "status_bar_height"

    const-string v14, "dimen"

    const-string v15, "android"

    invoke-direct {v12, v13, v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    const/4 v12, 0x5

    div-int/lit8 v11, v11, 0x5

    iput v11, v10, Lcom/android/systemui/ali/DynamicSystemBar;->yOffset:I

    .line 143
    const/4 v10, 0x2

    new-array v10, v10, [F

    move-object v3, v10

    .line 144
    move-object v10, v3

    const/4 v11, 0x0

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/android/systemui/ali/DynamicSystemBar;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v14, 0x5

    div-int/lit8 v13, v13, 0x5

    move-object/from16 v17, v12

    move/from16 v18, v13

    move/from16 v12, v18

    move-object/from16 v13, v17

    move/from16 v14, v18

    iput v14, v13, Lcom/android/systemui/ali/DynamicSystemBar;->Width:I

    int-to-float v12, v12

    aput v12, v10, v11

    .line 145
    move-object v10, v3

    const/4 v11, 0x1

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/android/systemui/ali/DynamicSystemBar;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v14, 0x5

    div-int/lit8 v13, v13, 0x5

    move-object/from16 v17, v12

    move/from16 v18, v13

    move/from16 v12, v18

    move-object/from16 v13, v17

    move/from16 v14, v18

    iput v14, v13, Lcom/android/systemui/ali/DynamicSystemBar;->Height:I

    int-to-float v12, v12

    aput v12, v10, v11

    .line 146
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/android/systemui/ali/DynamicSystemBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v11

    invoke-direct {v10, v11}, Lcom/android/systemui/ali/DynamicSystemBar;->getRotationFor(I)F

    move-result v10

    move v4, v10

    .line 147
    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/ali/DynamicSystemBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v10

    const/4 v11, 0x0

    if-gt v10, v11, :cond_4

    const/4 v10, 0x0

    :goto_1
    move v5, v10

    .line 148
    move v10, v5

    if-eqz v10, :cond_0

    .line 150
    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/ali/DynamicSystemBar;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 151
    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/ali/DynamicSystemBar;->mMatrix:Landroid/graphics/Matrix;

    move v11, v4

    neg-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    move-result v10

    .line 152
    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/ali/DynamicSystemBar;->mMatrix:Landroid/graphics/Matrix;

    move-object v11, v3

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 153
    move-object v10, v3

    const/4 v11, 0x0

    move-object v12, v3

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    aput v12, v10, v11

    .line 154
    move-object v10, v3

    const/4 v11, 0x1

    move-object v12, v3

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    aput v12, v10, v11

    .line 156
    :cond_0
    move-object v10, v3

    const/4 v11, 0x0

    aget v10, v10, v11

    float-to-int v10, v10

    move-object v11, v3

    const/4 v12, 0x1

    aget v11, v11, v12

    float-to-int v11, v11

    invoke-static {v10, v11}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v6, v10

    .line 157
    move-object v10, v6

    if-eqz v10, :cond_1

    .line 159
    move-object v10, v0

    move-object v11, v6

    iput-object v11, v10, Lcom/android/systemui/ali/DynamicSystemBar;->ss:Landroid/graphics/Bitmap;

    .line 161
    :cond_1
    move-object v10, v6

    if-eqz v10, :cond_2

    move v10, v5

    if-eqz v10, :cond_2

    .line 163
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/android/systemui/ali/DynamicSystemBar;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v12, 0x5

    div-int/lit8 v11, v11, 0x5

    iput v11, v10, Lcom/android/systemui/ali/DynamicSystemBar;->Width:I

    .line 164
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/android/systemui/ali/DynamicSystemBar;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v12, 0x5

    div-int/lit8 v11, v11, 0x5

    iput v11, v10, Lcom/android/systemui/ali/DynamicSystemBar;->Height:I

    .line 165
    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/ali/DynamicSystemBar;->mMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v11, 0x5

    div-int/lit8 v10, v10, 0x5

    move-object v11, v0

    iget-object v11, v11, Lcom/android/systemui/ali/DynamicSystemBar;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v12, 0x5

    div-int/lit8 v11, v11, 0x5

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v7, v10

    .line 166
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v7

    invoke-direct {v11, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v8, v10

    .line 167
    move-object v10, v8

    move-object v11, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x2

    int-to-float v12, v12

    div-float/2addr v11, v12

    move-object v12, v7

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x2

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    move-object v10, v8

    move v11, v4

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 169
    move-object v10, v8

    move-object v11, v3

    const/4 v12, 0x0

    aget v11, v11, v12

    neg-float v11, v11

    const/4 v12, 0x2

    int-to-float v12, v12

    div-float/2addr v11, v12

    move-object v12, v3

    const/4 v13, 0x1

    aget v12, v12, v13

    neg-float v12, v12

    const/4 v13, 0x2

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    move-object v10, v8

    move-object v11, v6

    const/4 v12, 0x0

    int-to-float v12, v12

    const/4 v13, 0x0

    int-to-float v13, v13

    const/4 v14, 0x0

    check-cast v14, Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 171
    move-object v10, v8

    const/4 v11, 0x0

    check-cast v11, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Lcom/android/systemui/ali/DynamicSystemBar;->ss:Landroid/graphics/Bitmap;

    :cond_2
    return-void

    .line 137
    :cond_3
    move-object v12, v0

    const-string v13, "navigation_bar_height_landscape"

    const-string v14, "dimen"

    const-string v15, "android"

    invoke-direct {v12, v13, v14, v15}, Lcom/android/systemui/ali/DynamicSystemBar;->resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_0

    .line 147
    :cond_4
    const/4 v10, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public isColorSimilar(II)I
    .locals 11

    .prologue
    .line 457
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v8, 0x3

    new-array v8, v8, [F

    move-object v4, v8

    const/4 v8, 0x3

    new-array v8, v8, [F

    move-object v5, v8

    .line 459
    move v8, v1

    move-object v9, v4

    invoke-static {v8, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 460
    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    move v6, v8

    .line 461
    move v8, v2

    move-object v9, v5

    invoke-static {v8, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 462
    move v8, v6

    move-object v9, v5

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/16 v9, 0x14

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 464
    const/4 v8, 0x0

    move v0, v8

    .line 476
    :goto_0
    return v0

    .line 466
    :cond_0
    move v8, v1

    move-object v9, v4

    invoke-static {v8, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 467
    move-object v8, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    move v6, v8

    .line 468
    move v8, v2

    move-object v9, v5

    invoke-static {v8, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 469
    move v8, v6

    move-object v9, v5

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/16 v9, 0x14

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 471
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 473
    :cond_1
    move v8, v1

    move-object v9, v4

    invoke-static {v8, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 474
    move-object v8, v4

    const/4 v9, 0x2

    aget v8, v8, v9

    move v6, v8

    .line 475
    move v8, v2

    move-object v9, v5

    invoke-static {v8, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 476
    move v8, v6

    move-object v9, v5

    const/4 v10, 0x2

    aget v9, v9, v10

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/16 v9, 0x14

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method isEna(I)Z
    .locals 5

    .prologue
    .line 318
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method isFromBottom(I)Z
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method isRotation(Landroid/content/Context;)Z
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x0

    if-gt v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 200
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/systemui/ali/DynamicSystemBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    const-string v5, "dsb_disable_package"

    const-string v6, "array"

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/ali/DynamicSystemBar;->cc:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/systemui/ali/DynamicSystemBar;->resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/ali/DynamicSystemBar;->mDisablePackage:[Ljava/lang/String;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method setDsbFlag(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/android/systemui/ali/DynamicSystemBar;->mDsbFlags:I

    return-void
.end method
