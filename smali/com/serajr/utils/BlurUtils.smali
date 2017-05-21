.class public Lcom/serajr/utils/BlurUtils;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serajr/utils/BlurUtils$BlurEngine;,
        Lcom/serajr/utils/BlurUtils$BlurTaskCallback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/serajr/utils/BlurUtils;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/serajr/utils/Utils;->getAndroidAPILevel()I

    move-result v3

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 44
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/serajr/utils/BlurUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    iput-object v4, v3, Lcom/serajr/utils/BlurUtils;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 45
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/serajr/utils/BlurUtils;->mRenderScript:Landroid/renderscript/RenderScript;

    move-object v5, v0

    iget-object v5, v5, Lcom/serajr/utils/BlurUtils;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    iput-object v4, v3, Lcom/serajr/utils/BlurUtils;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    :cond_0
    return-void
.end method


# virtual methods
.method public fastBlur(Landroid/graphics/Bitmap;I)V
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 309
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v31, v4

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 312
    :cond_0
    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    move/from16 v5, v31

    .line 313
    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    move/from16 v6, v31

    .line 314
    move/from16 v31, v5

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    move/from16 v7, v31

    .line 315
    move/from16 v31, v6

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    move/from16 v8, v31

    .line 316
    move/from16 v31, v5

    move/from16 v32, v6

    mul-int v31, v31, v32

    move/from16 v9, v31

    .line 317
    move/from16 v31, v4

    move/from16 v32, v4

    add-int v31, v31, v32

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    move/from16 v10, v31

    .line 318
    move/from16 v31, v9

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v11, v31

    .line 319
    move/from16 v31, v9

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v12, v31

    .line 320
    move/from16 v31, v9

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v13, v31

    .line 321
    move/from16 v31, v5

    move/from16 v32, v6

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v26, v31

    .line 323
    move/from16 v31, v5

    move/from16 v32, v6

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v27, v31

    .line 324
    move/from16 v31, v5

    move/from16 v32, v6

    mul-int v31, v31, v32

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v28, v31

    .line 326
    move-object/from16 v31, v3

    move-object/from16 v32, v28

    const/16 v33, 0x0

    move/from16 v34, v5

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v37, v5

    move/from16 v38, v6

    invoke-virtual/range {v31 .. v38}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 328
    const/16 v31, 0x100

    move/from16 v32, v10

    mul-int v31, v31, v32

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v29, v31

    .line 330
    const/16 v31, 0x0

    move/from16 v19, v31

    :goto_1
    move/from16 v31, v19

    const/16 v32, 0x100

    move/from16 v33, v10

    mul-int v32, v32, v33

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_1

    .line 336
    const/16 v31, 0x0

    move/from16 v39, v31

    move/from16 v31, v39

    move/from16 v32, v39

    move/from16 v24, v32

    move/from16 v25, v31

    .line 338
    const/16 v31, 0x0

    move/from16 v18, v31

    :goto_2
    move/from16 v31, v18

    move/from16 v32, v6

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_2

    .line 377
    const/16 v31, 0x0

    move/from16 v17, v31

    :goto_3
    move/from16 v31, v17

    move/from16 v32, v5

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_6

    .line 414
    move-object/from16 v31, v3

    move-object/from16 v32, v28

    const/16 v33, 0x0

    move/from16 v34, v5

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v37, v5

    move/from16 v38, v6

    invoke-virtual/range {v31 .. v38}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0

    .line 332
    :cond_1
    move-object/from16 v31, v29

    move/from16 v32, v19

    move/from16 v33, v19

    move/from16 v34, v10

    div-int v33, v33, v34

    aput v33, v31, v32

    .line 330
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 340
    :cond_2
    const/16 v31, 0x0

    move/from16 v39, v31

    move/from16 v31, v39

    move/from16 v32, v39

    move/from16 v16, v32

    move/from16 v39, v31

    move/from16 v31, v39

    move/from16 v32, v39

    move/from16 v15, v32

    move/from16 v14, v31

    .line 341
    move/from16 v31, v4

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v19, v31

    :goto_4
    move/from16 v31, v19

    move/from16 v32, v4

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_3

    .line 350
    const/16 v31, 0x0

    move/from16 v17, v31

    :goto_5
    move/from16 v31, v17

    move/from16 v32, v5

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_4

    .line 373
    move/from16 v31, v25

    move/from16 v32, v5

    add-int v31, v31, v32

    move/from16 v25, v31

    .line 338
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 343
    :cond_3
    move-object/from16 v31, v28

    move/from16 v32, v24

    move/from16 v33, v7

    move/from16 v34, v19

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v34

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v33

    add-int v32, v32, v33

    aget v31, v31, v32

    move/from16 v20, v31

    .line 344
    move/from16 v31, v14

    move/from16 v32, v20

    const/high16 v33, 0xff0000

    and-int v32, v32, v33

    const/16 v33, 0x10

    shr-int/lit8 v32, v32, 0x10

    add-int v31, v31, v32

    move/from16 v14, v31

    .line 345
    move/from16 v31, v15

    move/from16 v32, v20

    const v33, 0xff00

    and-int v32, v32, v33

    const/16 v33, 0x8

    shr-int/lit8 v32, v32, 0x8

    add-int v31, v31, v32

    move/from16 v15, v31

    .line 346
    move/from16 v31, v16

    move/from16 v32, v20

    const/16 v33, 0xff

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v16, v31

    .line 341
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 352
    :cond_4
    move-object/from16 v31, v11

    move/from16 v32, v24

    move-object/from16 v33, v29

    move/from16 v34, v14

    aget v33, v33, v34

    aput v33, v31, v32

    .line 353
    move-object/from16 v31, v12

    move/from16 v32, v24

    move-object/from16 v33, v29

    move/from16 v34, v15

    aget v33, v33, v34

    aput v33, v31, v32

    .line 354
    move-object/from16 v31, v13

    move/from16 v32, v24

    move-object/from16 v33, v29

    move/from16 v34, v16

    aget v33, v33, v34

    aput v33, v31, v32

    .line 356
    move/from16 v31, v18

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 358
    move-object/from16 v31, v26

    move/from16 v32, v17

    move/from16 v33, v17

    move/from16 v34, v4

    add-int v33, v33, v34

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v34, v7

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v33

    aput v33, v31, v32

    .line 359
    move-object/from16 v31, v27

    move/from16 v32, v17

    move/from16 v33, v17

    move/from16 v34, v4

    sub-int v33, v33, v34

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v33

    aput v33, v31, v32

    .line 363
    :cond_5
    move-object/from16 v31, v28

    move/from16 v32, v25

    move-object/from16 v33, v26

    move/from16 v34, v17

    aget v33, v33, v34

    add-int v32, v32, v33

    aget v31, v31, v32

    move/from16 v21, v31

    .line 364
    move-object/from16 v31, v28

    move/from16 v32, v25

    move-object/from16 v33, v27

    move/from16 v34, v17

    aget v33, v33, v34

    add-int v32, v32, v33

    aget v31, v31, v32

    move/from16 v22, v31

    .line 366
    move/from16 v31, v14

    move/from16 v32, v21

    const/high16 v33, 0xff0000

    and-int v32, v32, v33

    move/from16 v33, v22

    const/high16 v34, 0xff0000

    and-int v33, v33, v34

    sub-int v32, v32, v33

    const/16 v33, 0x10

    shr-int/lit8 v32, v32, 0x10

    add-int v31, v31, v32

    move/from16 v14, v31

    .line 367
    move/from16 v31, v15

    move/from16 v32, v21

    const v33, 0xff00

    and-int v32, v32, v33

    move/from16 v33, v22

    const v34, 0xff00

    and-int v33, v33, v34

    sub-int v32, v32, v33

    const/16 v33, 0x8

    shr-int/lit8 v32, v32, 0x8

    add-int v31, v31, v32

    move/from16 v15, v31

    .line 368
    move/from16 v31, v16

    move/from16 v32, v21

    const/16 v33, 0xff

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    move/from16 v33, v22

    const/16 v34, 0xff

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    sub-int v32, v32, v33

    add-int v31, v31, v32

    move/from16 v16, v31

    .line 369
    add-int/lit8 v24, v24, 0x1

    .line 350
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 379
    :cond_6
    const/16 v31, 0x0

    move/from16 v39, v31

    move/from16 v31, v39

    move/from16 v32, v39

    move/from16 v16, v32

    move/from16 v39, v31

    move/from16 v31, v39

    move/from16 v32, v39

    move/from16 v15, v32

    move/from16 v14, v31

    .line 380
    move/from16 v31, v4

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v32, v5

    mul-int v31, v31, v32

    move/from16 v23, v31

    .line 381
    move/from16 v31, v4

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v19, v31

    :goto_6
    move/from16 v31, v19

    move/from16 v32, v4

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_7

    .line 391
    move/from16 v31, v17

    move/from16 v24, v31

    .line 392
    const/16 v31, 0x0

    move/from16 v18, v31

    :goto_7
    move/from16 v31, v18

    move/from16 v32, v6

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_8

    .line 377
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 383
    :cond_7
    const/16 v31, 0x0

    move/from16 v32, v23

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v32, v17

    add-int v31, v31, v32

    move/from16 v24, v31

    .line 384
    move/from16 v31, v14

    move-object/from16 v32, v11

    move/from16 v33, v24

    aget v32, v32, v33

    add-int v31, v31, v32

    move/from16 v14, v31

    .line 385
    move/from16 v31, v15

    move-object/from16 v32, v12

    move/from16 v33, v24

    aget v32, v32, v33

    add-int v31, v31, v32

    move/from16 v15, v31

    .line 386
    move/from16 v31, v16

    move-object/from16 v32, v13

    move/from16 v33, v24

    aget v32, v32, v33

    add-int v31, v31, v32

    move/from16 v16, v31

    .line 387
    move/from16 v31, v23

    move/from16 v32, v5

    add-int v31, v31, v32

    move/from16 v23, v31

    .line 381
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 394
    :cond_8
    move-object/from16 v31, v28

    move/from16 v32, v24

    const/high16 v33, -0x1000000

    move-object/from16 v34, v29

    move/from16 v35, v14

    aget v34, v34, v35

    const/16 v35, 0x10

    shl-int/lit8 v34, v34, 0x10

    or-int v33, v33, v34

    move-object/from16 v34, v29

    move/from16 v35, v15

    aget v34, v34, v35

    const/16 v35, 0x8

    shl-int/lit8 v34, v34, 0x8

    or-int v33, v33, v34

    move-object/from16 v34, v29

    move/from16 v35, v16

    aget v34, v34, v35

    or-int v33, v33, v34

    aput v33, v31, v32

    .line 395
    move/from16 v31, v17

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 397
    move-object/from16 v31, v26

    move/from16 v32, v18

    move/from16 v33, v18

    move/from16 v34, v4

    add-int v33, v33, v34

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v34, v8

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v33

    move/from16 v34, v5

    mul-int v33, v33, v34

    aput v33, v31, v32

    .line 398
    move-object/from16 v31, v27

    move/from16 v32, v18

    move/from16 v33, v18

    move/from16 v34, v4

    sub-int v33, v33, v34

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v33

    move/from16 v34, v5

    mul-int v33, v33, v34

    aput v33, v31, v32

    .line 402
    :cond_9
    move/from16 v31, v17

    move-object/from16 v32, v26

    move/from16 v33, v18

    aget v32, v32, v33

    add-int v31, v31, v32

    move/from16 v21, v31

    .line 403
    move/from16 v31, v17

    move-object/from16 v32, v27

    move/from16 v33, v18

    aget v32, v32, v33

    add-int v31, v31, v32

    move/from16 v22, v31

    .line 405
    move/from16 v31, v14

    move-object/from16 v32, v11

    move/from16 v33, v21

    aget v32, v32, v33

    move-object/from16 v33, v11

    move/from16 v34, v22

    aget v33, v33, v34

    sub-int v32, v32, v33

    add-int v31, v31, v32

    move/from16 v14, v31

    .line 406
    move/from16 v31, v15

    move-object/from16 v32, v12

    move/from16 v33, v21

    aget v32, v32, v33

    move-object/from16 v33, v12

    move/from16 v34, v22

    aget v33, v33, v34

    sub-int v32, v32, v33

    add-int v31, v31, v32

    move/from16 v15, v31

    .line 407
    move/from16 v31, v16

    move-object/from16 v32, v13

    move/from16 v33, v21

    aget v32, v32, v33

    move-object/from16 v33, v13

    move/from16 v34, v22

    aget v33, v33, v34

    sub-int v32, v32, v33

    add-int v31, v31, v32

    move/from16 v16, v31

    .line 409
    move/from16 v31, v24

    move/from16 v32, v5

    add-int v31, v31, v32

    move/from16 v24, v31

    .line 392
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7
.end method

.method public getContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/serajr/utils/BlurUtils;->mContext:Landroid/content/Context;

    move-object v0, v2

    return-object v0
.end method

.method public renderScriptBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Lcom/serajr/utils/BlurUtils;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez v6, :cond_0

    .line 60
    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v0, v6

    .line 69
    :goto_0
    return-object v0

    .line 62
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/serajr/utils/BlurUtils;->mRenderScript:Landroid/renderscript/RenderScript;

    move-object v7, v1

    invoke-static {v6, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v6

    move-object v3, v6

    .line 63
    move-object v6, v0

    iget-object v6, v6, Lcom/serajr/utils/BlurUtils;->mRenderScript:Landroid/renderscript/RenderScript;

    move-object v7, v3

    invoke-virtual {v7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v6

    move-object v4, v6

    .line 64
    move-object v6, v0

    iget-object v6, v6, Lcom/serajr/utils/BlurUtils;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    move v7, v2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 65
    move-object v6, v0

    iget-object v6, v6, Lcom/serajr/utils/BlurUtils;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 66
    move-object v6, v0

    iget-object v6, v6, Lcom/serajr/utils/BlurUtils;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 67
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 69
    move-object v6, v1

    move-object v0, v6

    goto :goto_0
.end method

.method public stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 50

    .prologue
    .line 76
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v41, v4

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_0

    .line 77
    const/16 v41, 0x0

    check-cast v41, Landroid/graphics/Bitmap;

    move-object/from16 v2, v41

    .line 303
    :goto_0
    return-object v2

    .line 79
    :cond_0
    move-object/from16 v41, v3

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v41

    move/from16 v5, v41

    .line 80
    move-object/from16 v41, v3

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v41

    move/from16 v6, v41

    .line 82
    move/from16 v41, v5

    move/from16 v42, v6

    mul-int v41, v41, v42

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v41, v0

    move-object/from16 v7, v41

    .line 83
    move-object/from16 v41, v3

    move-object/from16 v42, v7

    const/16 v43, 0x0

    move/from16 v44, v5

    const/16 v45, 0x0

    const/16 v46, 0x0

    move/from16 v47, v5

    move/from16 v48, v6

    invoke-virtual/range {v41 .. v48}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 85
    move/from16 v41, v5

    const/16 v42, 0x1

    add-int/lit8 v41, v41, -0x1

    move/from16 v8, v41

    .line 86
    move/from16 v41, v6

    const/16 v42, 0x1

    add-int/lit8 v41, v41, -0x1

    move/from16 v9, v41

    .line 87
    move/from16 v41, v5

    move/from16 v42, v6

    mul-int v41, v41, v42

    move/from16 v10, v41

    .line 88
    move/from16 v41, v4

    move/from16 v42, v4

    add-int v41, v41, v42

    const/16 v42, 0x1

    add-int/lit8 v41, v41, 0x1

    move/from16 v11, v41

    .line 90
    move/from16 v41, v10

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v41, v0

    move-object/from16 v12, v41

    .line 91
    move/from16 v41, v10

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v41, v0

    move-object/from16 v13, v41

    .line 92
    move/from16 v41, v10

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v41, v0

    move-object/from16 v14, v41

    .line 93
    move/from16 v41, v5

    move/from16 v42, v6

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v41

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v41, v0

    move-object/from16 v25, v41

    .line 96
    move/from16 v41, v11

    const/16 v42, 0x1

    add-int/lit8 v41, v41, 0x1

    const/16 v42, 0x1

    shr-int/lit8 v41, v41, 0x1

    move/from16 v26, v41

    .line 97
    move/from16 v41, v26

    move/from16 v42, v26

    mul-int v41, v41, v42

    move/from16 v26, v41

    .line 98
    const/16 v41, 0x100

    move/from16 v42, v26

    mul-int v41, v41, v42

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v41, v0

    move-object/from16 v27, v41

    .line 100
    const/16 v41, 0x0

    move/from16 v20, v41

    :goto_1
    move/from16 v41, v20

    const/16 v42, 0x100

    move/from16 v43, v26

    mul-int v42, v42, v43

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_1

    .line 106
    const/16 v41, 0x0

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v23, v42

    move/from16 v24, v41

    .line 108
    move/from16 v41, v11

    const/16 v42, 0x3

    filled-new-array/range {v41 .. v42}, [I

    move-result-object v42

    sget-object v41, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static/range {v41 .. v42}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [[I

    move-object/from16 v28, v41

    .line 109
    move/from16 v41, v4

    const/16 v42, 0x1

    add-int/lit8 v41, v41, 0x1

    move/from16 v33, v41

    .line 114
    const/16 v41, 0x0

    move/from16 v19, v41

    .line 117
    :goto_2
    move/from16 v41, v19

    move/from16 v42, v6

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_2

    .line 205
    const/16 v41, 0x0

    move/from16 v18, v41

    :goto_3
    move/from16 v41, v18

    move/from16 v42, v5

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_7

    .line 301
    move-object/from16 v41, v3

    move-object/from16 v42, v7

    const/16 v43, 0x0

    move/from16 v44, v5

    const/16 v45, 0x0

    const/16 v46, 0x0

    move/from16 v47, v5

    move/from16 v48, v6

    invoke-virtual/range {v41 .. v48}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 303
    move-object/from16 v41, v3

    move-object/from16 v2, v41

    goto/16 :goto_0

    .line 102
    :cond_1
    move-object/from16 v41, v27

    move/from16 v42, v20

    move/from16 v43, v20

    move/from16 v44, v26

    div-int v43, v43, v44

    aput v43, v41, v42

    .line 100
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 119
    :cond_2
    const/16 v41, 0x0

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v17, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v16, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v15, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v36, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v35, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v34, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v39, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v38, v42

    move/from16 v37, v41

    .line 120
    move/from16 v41, v4

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v41, v0

    move/from16 v20, v41

    :goto_4
    move/from16 v41, v20

    move/from16 v42, v4

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_3

    .line 147
    move/from16 v41, v4

    move/from16 v29, v41

    .line 149
    const/16 v41, 0x0

    move/from16 v18, v41

    :goto_5
    move/from16 v41, v18

    move/from16 v42, v5

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_5

    .line 201
    move/from16 v41, v24

    move/from16 v42, v5

    add-int v41, v41, v42

    move/from16 v24, v41

    .line 117
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 122
    :cond_3
    move-object/from16 v41, v7

    move/from16 v42, v23

    move/from16 v43, v8

    move/from16 v44, v20

    const/16 v45, 0x0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v44

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->min(II)I

    move-result v43

    add-int v42, v42, v43

    aget v41, v41, v42

    move/from16 v21, v41

    .line 123
    move-object/from16 v41, v28

    move/from16 v42, v20

    move/from16 v43, v4

    add-int v42, v42, v43

    aget-object v41, v41, v42

    move-object/from16 v31, v41

    .line 124
    move-object/from16 v41, v31

    const/16 v42, 0x0

    move/from16 v43, v21

    const/high16 v44, 0xff0000

    and-int v43, v43, v44

    const/16 v44, 0x10

    shr-int/lit8 v43, v43, 0x10

    aput v43, v41, v42

    .line 125
    move-object/from16 v41, v31

    const/16 v42, 0x1

    move/from16 v43, v21

    const v44, 0xff00

    and-int v43, v43, v44

    const/16 v44, 0x8

    shr-int/lit8 v43, v43, 0x8

    aput v43, v41, v42

    .line 126
    move-object/from16 v41, v31

    const/16 v42, 0x2

    move/from16 v43, v21

    const/16 v44, 0xff

    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    aput v43, v41, v42

    .line 127
    move/from16 v41, v33

    move/from16 v42, v20

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v42

    sub-int v41, v41, v42

    move/from16 v32, v41

    .line 128
    move/from16 v41, v15

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    move/from16 v43, v32

    mul-int v42, v42, v43

    add-int v41, v41, v42

    move/from16 v15, v41

    .line 129
    move/from16 v41, v16

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    move/from16 v43, v32

    mul-int v42, v42, v43

    add-int v41, v41, v42

    move/from16 v16, v41

    .line 130
    move/from16 v41, v17

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    move/from16 v43, v32

    mul-int v42, v42, v43

    add-int v41, v41, v42

    move/from16 v17, v41

    .line 132
    move/from16 v41, v20

    const/16 v42, 0x0

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_4

    .line 134
    move/from16 v41, v37

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v37, v41

    .line 135
    move/from16 v41, v38

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v38, v41

    .line 136
    move/from16 v41, v39

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v39, v41

    .line 120
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 140
    :cond_4
    move/from16 v41, v34

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v34, v41

    .line 141
    move/from16 v41, v35

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v35, v41

    .line 142
    move/from16 v41, v36

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v36, v41

    goto :goto_6

    .line 151
    :cond_5
    move-object/from16 v41, v12

    move/from16 v42, v23

    move-object/from16 v43, v27

    move/from16 v44, v15

    aget v43, v43, v44

    aput v43, v41, v42

    .line 152
    move-object/from16 v41, v13

    move/from16 v42, v23

    move-object/from16 v43, v27

    move/from16 v44, v16

    aget v43, v43, v44

    aput v43, v41, v42

    .line 153
    move-object/from16 v41, v14

    move/from16 v42, v23

    move-object/from16 v43, v27

    move/from16 v44, v17

    aget v43, v43, v44

    aput v43, v41, v42

    .line 155
    move/from16 v41, v15

    move/from16 v42, v34

    sub-int v41, v41, v42

    move/from16 v15, v41

    .line 156
    move/from16 v41, v16

    move/from16 v42, v35

    sub-int v41, v41, v42

    move/from16 v16, v41

    .line 157
    move/from16 v41, v17

    move/from16 v42, v36

    sub-int v41, v41, v42

    move/from16 v17, v41

    .line 159
    move/from16 v41, v29

    move/from16 v42, v4

    sub-int v41, v41, v42

    move/from16 v42, v11

    add-int v41, v41, v42

    move/from16 v30, v41

    .line 160
    move-object/from16 v41, v28

    move/from16 v42, v30

    move/from16 v43, v11

    rem-int v42, v42, v43

    aget-object v41, v41, v42

    move-object/from16 v31, v41

    .line 162
    move/from16 v41, v34

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    sub-int v41, v41, v42

    move/from16 v34, v41

    .line 163
    move/from16 v41, v35

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    sub-int v41, v41, v42

    move/from16 v35, v41

    .line 164
    move/from16 v41, v36

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    sub-int v41, v41, v42

    move/from16 v36, v41

    .line 166
    move/from16 v41, v19

    const/16 v42, 0x0

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_6

    .line 168
    move-object/from16 v41, v25

    move/from16 v42, v18

    move/from16 v43, v18

    move/from16 v44, v4

    add-int v43, v43, v44

    const/16 v44, 0x1

    add-int/lit8 v43, v43, 0x1

    move/from16 v44, v8

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->min(II)I

    move-result v43

    aput v43, v41, v42

    .line 172
    :cond_6
    move-object/from16 v41, v7

    move/from16 v42, v24

    move-object/from16 v43, v25

    move/from16 v44, v18

    aget v43, v43, v44

    add-int v42, v42, v43

    aget v41, v41, v42

    move/from16 v21, v41

    .line 174
    move-object/from16 v41, v31

    const/16 v42, 0x0

    move/from16 v43, v21

    const/high16 v44, 0xff0000

    and-int v43, v43, v44

    const/16 v44, 0x10

    shr-int/lit8 v43, v43, 0x10

    aput v43, v41, v42

    .line 175
    move-object/from16 v41, v31

    const/16 v42, 0x1

    move/from16 v43, v21

    const v44, 0xff00

    and-int v43, v43, v44

    const/16 v44, 0x8

    shr-int/lit8 v43, v43, 0x8

    aput v43, v41, v42

    .line 176
    move-object/from16 v41, v31

    const/16 v42, 0x2

    move/from16 v43, v21

    const/16 v44, 0xff

    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    aput v43, v41, v42

    .line 178
    move/from16 v41, v37

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v37, v41

    .line 179
    move/from16 v41, v38

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v38, v41

    .line 180
    move/from16 v41, v39

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v39, v41

    .line 182
    move/from16 v41, v15

    move/from16 v42, v37

    add-int v41, v41, v42

    move/from16 v15, v41

    .line 183
    move/from16 v41, v16

    move/from16 v42, v38

    add-int v41, v41, v42

    move/from16 v16, v41

    .line 184
    move/from16 v41, v17

    move/from16 v42, v39

    add-int v41, v41, v42

    move/from16 v17, v41

    .line 186
    move/from16 v41, v29

    const/16 v42, 0x1

    add-int/lit8 v41, v41, 0x1

    move/from16 v42, v11

    rem-int v41, v41, v42

    move/from16 v29, v41

    .line 187
    move-object/from16 v41, v28

    move/from16 v42, v29

    move/from16 v43, v11

    rem-int v42, v42, v43

    aget-object v41, v41, v42

    move-object/from16 v31, v41

    .line 189
    move/from16 v41, v34

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v34, v41

    .line 190
    move/from16 v41, v35

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v35, v41

    .line 191
    move/from16 v41, v36

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v36, v41

    .line 193
    move/from16 v41, v37

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    sub-int v41, v41, v42

    move/from16 v37, v41

    .line 194
    move/from16 v41, v38

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    sub-int v41, v41, v42

    move/from16 v38, v41

    .line 195
    move/from16 v41, v39

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    sub-int v41, v41, v42

    move/from16 v39, v41

    .line 197
    add-int/lit8 v23, v23, 0x1

    .line 149
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 207
    :cond_7
    const/16 v41, 0x0

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v17, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v16, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v15, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v36, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v35, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v34, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v39, v42

    move/from16 v49, v41

    move/from16 v41, v49

    move/from16 v42, v49

    move/from16 v38, v42

    move/from16 v37, v41

    .line 208
    move/from16 v41, v4

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v41, v0

    move/from16 v42, v5

    mul-int v41, v41, v42

    move/from16 v22, v41

    .line 210
    move/from16 v41, v4

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v41, v0

    move/from16 v20, v41

    :goto_7
    move/from16 v41, v20

    move/from16 v42, v4

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_8

    .line 247
    move/from16 v41, v18

    move/from16 v23, v41

    .line 248
    move/from16 v41, v4

    move/from16 v29, v41

    .line 250
    const/16 v41, 0x0

    move/from16 v19, v41

    :goto_8
    move/from16 v41, v19

    move/from16 v42, v6

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_b

    .line 205
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 212
    :cond_8
    const/16 v41, 0x0

    move/from16 v42, v22

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v41

    move/from16 v42, v18

    add-int v41, v41, v42

    move/from16 v23, v41

    .line 214
    move-object/from16 v41, v28

    move/from16 v42, v20

    move/from16 v43, v4

    add-int v42, v42, v43

    aget-object v41, v41, v42

    move-object/from16 v31, v41

    .line 216
    move-object/from16 v41, v31

    const/16 v42, 0x0

    move-object/from16 v43, v12

    move/from16 v44, v23

    aget v43, v43, v44

    aput v43, v41, v42

    .line 217
    move-object/from16 v41, v31

    const/16 v42, 0x1

    move-object/from16 v43, v13

    move/from16 v44, v23

    aget v43, v43, v44

    aput v43, v41, v42

    .line 218
    move-object/from16 v41, v31

    const/16 v42, 0x2

    move-object/from16 v43, v14

    move/from16 v44, v23

    aget v43, v43, v44

    aput v43, v41, v42

    .line 220
    move/from16 v41, v33

    move/from16 v42, v20

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v42

    sub-int v41, v41, v42

    move/from16 v32, v41

    .line 222
    move/from16 v41, v15

    move-object/from16 v42, v12

    move/from16 v43, v23

    aget v42, v42, v43

    move/from16 v43, v32

    mul-int v42, v42, v43

    add-int v41, v41, v42

    move/from16 v15, v41

    .line 223
    move/from16 v41, v16

    move-object/from16 v42, v13

    move/from16 v43, v23

    aget v42, v42, v43

    move/from16 v43, v32

    mul-int v42, v42, v43

    add-int v41, v41, v42

    move/from16 v16, v41

    .line 224
    move/from16 v41, v17

    move-object/from16 v42, v14

    move/from16 v43, v23

    aget v42, v42, v43

    move/from16 v43, v32

    mul-int v42, v42, v43

    add-int v41, v41, v42

    move/from16 v17, v41

    .line 226
    move/from16 v41, v20

    const/16 v42, 0x0

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_a

    .line 228
    move/from16 v41, v37

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v37, v41

    .line 229
    move/from16 v41, v38

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v38, v41

    .line 230
    move/from16 v41, v39

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v39, v41

    .line 240
    :goto_9
    move/from16 v41, v20

    move/from16 v42, v9

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_9

    .line 242
    move/from16 v41, v22

    move/from16 v42, v5

    add-int v41, v41, v42

    move/from16 v22, v41

    .line 210
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    .line 234
    :cond_a
    move/from16 v41, v34

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v34, v41

    .line 235
    move/from16 v41, v35

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v35, v41

    .line 236
    move/from16 v41, v36

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v36, v41

    goto :goto_9

    .line 252
    :cond_b
    move-object/from16 v41, v7

    move/from16 v42, v23

    const/high16 v43, -0x1000000

    move-object/from16 v44, v7

    move/from16 v45, v23

    aget v44, v44, v45

    and-int v43, v43, v44

    move-object/from16 v44, v27

    move/from16 v45, v15

    aget v44, v44, v45

    const/16 v45, 0x10

    shl-int/lit8 v44, v44, 0x10

    or-int v43, v43, v44

    move-object/from16 v44, v27

    move/from16 v45, v16

    aget v44, v44, v45

    const/16 v45, 0x8

    shl-int/lit8 v44, v44, 0x8

    or-int v43, v43, v44

    move-object/from16 v44, v27

    move/from16 v45, v17

    aget v44, v44, v45

    or-int v43, v43, v44

    aput v43, v41, v42

    .line 254
    move/from16 v41, v15

    move/from16 v42, v34

    sub-int v41, v41, v42

    move/from16 v15, v41

    .line 255
    move/from16 v41, v16

    move/from16 v42, v35

    sub-int v41, v41, v42

    move/from16 v16, v41

    .line 256
    move/from16 v41, v17

    move/from16 v42, v36

    sub-int v41, v41, v42

    move/from16 v17, v41

    .line 258
    move/from16 v41, v29

    move/from16 v42, v4

    sub-int v41, v41, v42

    move/from16 v42, v11

    add-int v41, v41, v42

    move/from16 v30, v41

    .line 259
    move-object/from16 v41, v28

    move/from16 v42, v30

    move/from16 v43, v11

    rem-int v42, v42, v43

    aget-object v41, v41, v42

    move-object/from16 v31, v41

    .line 261
    move/from16 v41, v34

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    sub-int v41, v41, v42

    move/from16 v34, v41

    .line 262
    move/from16 v41, v35

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    sub-int v41, v41, v42

    move/from16 v35, v41

    .line 263
    move/from16 v41, v36

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    sub-int v41, v41, v42

    move/from16 v36, v41

    .line 265
    move/from16 v41, v18

    const/16 v42, 0x0

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_c

    .line 267
    move-object/from16 v41, v25

    move/from16 v42, v19

    move/from16 v43, v19

    move/from16 v44, v33

    add-int v43, v43, v44

    move/from16 v44, v9

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->min(II)I

    move-result v43

    move/from16 v44, v5

    mul-int v43, v43, v44

    aput v43, v41, v42

    .line 271
    :cond_c
    move/from16 v41, v18

    move-object/from16 v42, v25

    move/from16 v43, v19

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v21, v41

    .line 273
    move-object/from16 v41, v31

    const/16 v42, 0x0

    move-object/from16 v43, v12

    move/from16 v44, v21

    aget v43, v43, v44

    aput v43, v41, v42

    .line 274
    move-object/from16 v41, v31

    const/16 v42, 0x1

    move-object/from16 v43, v13

    move/from16 v44, v21

    aget v43, v43, v44

    aput v43, v41, v42

    .line 275
    move-object/from16 v41, v31

    const/16 v42, 0x2

    move-object/from16 v43, v14

    move/from16 v44, v21

    aget v43, v43, v44

    aput v43, v41, v42

    .line 277
    move/from16 v41, v37

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v37, v41

    .line 278
    move/from16 v41, v38

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v38, v41

    .line 279
    move/from16 v41, v39

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v39, v41

    .line 281
    move/from16 v41, v15

    move/from16 v42, v37

    add-int v41, v41, v42

    move/from16 v15, v41

    .line 282
    move/from16 v41, v16

    move/from16 v42, v38

    add-int v41, v41, v42

    move/from16 v16, v41

    .line 283
    move/from16 v41, v17

    move/from16 v42, v39

    add-int v41, v41, v42

    move/from16 v17, v41

    .line 285
    move/from16 v41, v29

    const/16 v42, 0x1

    add-int/lit8 v41, v41, 0x1

    move/from16 v42, v11

    rem-int v41, v41, v42

    move/from16 v29, v41

    .line 286
    move-object/from16 v41, v28

    move/from16 v42, v29

    aget-object v41, v41, v42

    move-object/from16 v31, v41

    .line 288
    move/from16 v41, v34

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v34, v41

    .line 289
    move/from16 v41, v35

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v35, v41

    .line 290
    move/from16 v41, v36

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    add-int v41, v41, v42

    move/from16 v36, v41

    .line 292
    move/from16 v41, v37

    move-object/from16 v42, v31

    const/16 v43, 0x0

    aget v42, v42, v43

    sub-int v41, v41, v42

    move/from16 v37, v41

    .line 293
    move/from16 v41, v38

    move-object/from16 v42, v31

    const/16 v43, 0x1

    aget v42, v42, v43

    sub-int v41, v41, v42

    move/from16 v38, v41

    .line 294
    move/from16 v41, v39

    move-object/from16 v42, v31

    const/16 v43, 0x2

    aget v42, v42, v43

    sub-int v41, v41, v42

    move/from16 v39, v41

    .line 296
    move/from16 v41, v23

    move/from16 v42, v5

    add-int v41, v41, v42

    move/from16 v23, v41

    .line 250
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8
.end method
