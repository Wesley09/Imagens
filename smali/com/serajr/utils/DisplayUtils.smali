.class public Lcom/serajr/utils/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 291
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceHasNavigationBar()Z
    .locals 4

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lcom/serajr/utils/Utils;->getAndroidAPILevel()I

    move-result v2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 39
    move-object v2, v0

    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v2

    move v0, v2

    .line 47
    :goto_1
    return v0

    .line 33
    :cond_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 43
    move-object v2, v0

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 47
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public static getColorLightness(I)D
    .locals 11

    .prologue
    .line 125
    move v0, p0

    const/4 v3, 0x1

    int-to-double v3, v3

    const-wide v5, 0x3fd322d0e5604189L    # 0.299

    move v7, v0

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    const-wide v7, 0x3fe2c8b439581062L    # 0.587

    move v9, v0

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    const-wide v7, 0x3fbd2f1a9fbe76c9L    # 0.114

    move v9, v0

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    const/16 v7, 0xff

    int-to-double v7, v7

    div-double/2addr v5, v7

    sub-double/2addr v3, v5

    move-wide v0, v3

    return-wide v0
.end method

.method private static getDegreesForRotation(I)F
    .locals 4

    .prologue
    .line 276
    move v0, p0

    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 289
    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    .line 279
    :pswitch_0
    const/high16 v3, 0x42b40000    # 90.0f

    move v0, v3

    goto :goto_0

    .line 282
    :pswitch_1
    const/high16 v3, 0x43340000    # 180.0f

    move v0, v3

    goto :goto_0

    .line 285
    :pswitch_2
    const/high16 v3, 0x43870000    # 270.0f

    move v0, v3

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDimensionForDensity(Landroid/content/res/Resources;I)I
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    move v1, p1

    move v4, v1

    int-to-float v4, v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    move v0, v4

    return v0
.end method

.method public static getDominantColorByPixelsSampling(Landroid/graphics/Bitmap;II)I
    .locals 29

    .prologue
    .line 74
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v5, v20

    .line 75
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v6, v20

    .line 76
    move/from16 v20, v5

    move/from16 v21, v4

    div-int v20, v20, v21

    move/from16 v7, v20

    .line 77
    move/from16 v20, v6

    move/from16 v21, v3

    div-int v20, v20, v21

    move/from16 v8, v20

    .line 78
    const/16 v20, -0x1

    move/from16 v9, v20

    .line 79
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v10, v20

    .line 80
    const/16 v20, 0x24

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v11, v20

    .line 81
    const/16 v20, 0x24

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v12, v20

    .line 82
    const/16 v20, 0x24

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v13, v20

    .line 83
    const/16 v20, 0x24

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v14, v20

    .line 85
    const/16 v20, 0x0

    move/from16 v15, v20

    :goto_0
    move/from16 v20, v15

    move/from16 v21, v3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 112
    move/from16 v20, v9

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 113
    const/16 v20, 0xff

    const/16 v21, 0xff

    const/16 v22, 0xff

    const/16 v23, 0xff

    invoke-static/range {v20 .. v23}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    move/from16 v2, v20

    .line 119
    :goto_1
    return v2

    .line 87
    :cond_0
    const/16 v20, 0x0

    move/from16 v16, v20

    :goto_2
    move/from16 v20, v16

    move/from16 v21, v4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 85
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 92
    :cond_1
    move-object/from16 v20, v2

    move/from16 v21, v16

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    move/from16 v21, v7

    move/from16 v22, v16

    mul-int v21, v21, v22

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    :goto_3
    move/from16 v22, v15

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    move/from16 v22, v8

    move/from16 v23, v15

    mul-int v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    :goto_4
    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v20

    move/from16 v17, v20

    .line 96
    move/from16 v20, v17

    move-object/from16 v21, v10

    invoke-static/range {v20 .. v21}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 98
    move-object/from16 v20, v10

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x41200000    # 10.0f

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v18, v20

    .line 100
    move-object/from16 v20, v12

    move/from16 v21, v18

    move-object/from16 v22, v12

    move/from16 v23, v18

    aget v22, v22, v23

    move-object/from16 v23, v10

    const/16 v24, 0x0

    aget v23, v23, v24

    add-float v22, v22, v23

    aput v22, v20, v21

    .line 101
    move-object/from16 v20, v13

    move/from16 v21, v18

    move-object/from16 v22, v13

    move/from16 v23, v18

    aget v22, v22, v23

    move-object/from16 v23, v10

    const/16 v24, 0x1

    aget v23, v23, v24

    add-float v22, v22, v23

    aput v22, v20, v21

    .line 102
    move-object/from16 v20, v14

    move/from16 v21, v18

    move-object/from16 v22, v14

    move/from16 v23, v18

    aget v22, v22, v23

    move-object/from16 v23, v10

    const/16 v24, 0x2

    aget v23, v23, v24

    add-float v22, v22, v23

    aput v22, v20, v21

    .line 104
    move-object/from16 v20, v11

    move/from16 v21, v18

    move-object/from16 v27, v20

    move/from16 v28, v21

    move-object/from16 v20, v27

    move/from16 v21, v28

    move-object/from16 v22, v27

    move/from16 v23, v28

    aget v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aput v22, v20, v21

    .line 106
    move/from16 v20, v9

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    move-object/from16 v20, v11

    move/from16 v21, v18

    aget v20, v20, v21

    move-object/from16 v21, v11

    move/from16 v22, v9

    aget v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 107
    :cond_2
    move/from16 v20, v18

    move/from16 v9, v20

    .line 87
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 92
    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_3

    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 115
    :cond_6
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v12

    move/from16 v23, v9

    aget v22, v22, v23

    move-object/from16 v23, v11

    move/from16 v24, v9

    aget v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    aput v22, v20, v21

    .line 116
    move-object/from16 v20, v10

    const/16 v21, 0x1

    move-object/from16 v22, v13

    move/from16 v23, v9

    aget v22, v22, v23

    move-object/from16 v23, v11

    move/from16 v24, v9

    aget v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    aput v22, v20, v21

    .line 117
    move-object/from16 v20, v10

    const/16 v21, 0x2

    move-object/from16 v22, v14

    move/from16 v23, v9

    aget v22, v22, v23

    move-object/from16 v23, v11

    move/from16 v24, v9

    aget v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    aput v22, v20, v21

    .line 119
    move-object/from16 v20, v10

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v20

    move/from16 v2, v20

    goto/16 :goto_1
.end method

.method public static getRealScreenDimensions(Landroid/content/Context;)[I
    .locals 10

    .prologue
    .line 131
    move-object v0, p0

    move-object v5, v0

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    move-object v1, v5

    .line 132
    move-object v5, v1

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object v2, v5

    .line 133
    new-instance v5, Landroid/util/DisplayMetrics;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v3, v5

    .line 134
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 136
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v3

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v8, v6, v7

    move-object v0, v5

    return-object v0
.end method

.method public static takeSurfaceScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 19

    .prologue
    .line 142
    move-object/from16 v0, p0

    move-object v12, v0

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    move-object v1, v12

    .line 143
    move-object v12, v1

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    move-object v2, v12

    .line 144
    new-instance v12, Landroid/util/DisplayMetrics;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v3, v12

    .line 145
    new-instance v12, Landroid/graphics/Matrix;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    move-object v4, v12

    .line 147
    const/4 v12, 0x0

    check-cast v12, Landroid/graphics/Bitmap;

    move-object v5, v12

    .line 149
    move-object v12, v2

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 150
    const/4 v12, 0x2

    new-array v12, v12, [F

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    move-object v15, v3

    iget v15, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v15, v15

    aput v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x1

    move-object v15, v3

    iget v15, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v15, v15

    aput v15, v13, v14

    move-object v6, v12

    .line 151
    move-object v12, v2

    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v12

    invoke-static {v12}, Lcom/serajr/utils/DisplayUtils;->getDegreesForRotation(I)F

    move-result v12

    move v7, v12

    .line 152
    move v12, v7

    const/4 v13, 0x0

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_1

    const/4 v12, 0x0

    :goto_0
    move v8, v12

    .line 154
    move v12, v8

    if-eqz v12, :cond_0

    .line 157
    move-object v12, v4

    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 158
    move-object v12, v4

    move v13, v7

    neg-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->preRotate(F)Z

    move-result v12

    .line 159
    move-object v12, v4

    move-object v13, v6

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 160
    move-object v12, v6

    const/4 v13, 0x0

    move-object v14, v6

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    aput v14, v12, v13

    .line 161
    move-object v12, v6

    const/4 v13, 0x1

    move-object v14, v6

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    aput v14, v12, v13

    .line 166
    :cond_0
    move-object v12, v6

    const/4 v13, 0x0

    aget v12, v12, v13

    float-to-int v12, v12

    move-object v13, v6

    const/4 v14, 0x1

    aget v13, v13, v14

    float-to-int v13, v13

    invoke-static {v12, v13}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v5, v12

    .line 171
    move-object v12, v5

    if-nez v12, :cond_2

    .line 174
    const-string v12, "serajr_blurred_system_ui"

    const-string v13, "Cannot take surface screenshot! Skipping blur feature!!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 175
    const/4 v12, 0x0

    check-cast v12, Landroid/graphics/Bitmap;

    move-object v0, v12

    .line 201
    :goto_1
    return-object v0

    .line 152
    :cond_1
    const/4 v12, 0x1

    goto :goto_0

    .line 179
    :cond_2
    move v12, v8

    if-eqz v12, :cond_3

    .line 182
    move-object v12, v3

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v13, v3

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v9, v12

    .line 183
    new-instance v12, Landroid/graphics/Canvas;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v9

    invoke-direct {v13, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v10, v12

    .line 184
    move-object v12, v10

    move-object v13, v9

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object v14, v9

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    move-object v12, v10

    const/high16 v13, 0x43b40000    # 360.0f

    move v14, v7

    sub-float/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->rotate(F)V

    .line 186
    move-object v12, v10

    move-object v13, v6

    const/4 v14, 0x0

    aget v13, v13, v14

    neg-float v13, v13

    const/4 v14, 0x2

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object v14, v6

    const/4 v15, 0x1

    aget v14, v14, v15

    neg-float v14, v14

    const/4 v15, 0x2

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    move-object v12, v10

    move-object v13, v5

    const/4 v14, 0x0

    int-to-float v14, v14

    const/4 v15, 0x0

    int-to-float v15, v15

    const/16 v16, 0x0

    check-cast v16, Landroid/graphics/Paint;

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 188
    move-object v12, v10

    const/4 v13, 0x0

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    move-object v12, v9

    move-object v5, v12

    .line 194
    :cond_3
    move-object v12, v5

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v9, v12

    .line 197
    move-object v12, v9

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 198
    move-object v12, v9

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 201
    move-object v12, v9

    move-object v0, v12

    goto :goto_1
.end method

.method public static takeSurfaceScreenshot(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 24

    .prologue
    .line 207
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v14, v1

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    move-object v3, v14

    .line 208
    move-object v14, v3

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    move-object v4, v14

    .line 209
    new-instance v14, Landroid/util/DisplayMetrics;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v5, v14

    .line 210
    new-instance v14, Landroid/graphics/Matrix;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    move-object v6, v14

    .line 212
    const/4 v14, 0x0

    check-cast v14, Landroid/graphics/Bitmap;

    move-object v7, v14

    .line 214
    move-object v14, v4

    move-object v15, v5

    invoke-virtual {v14, v15}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 215
    const-string v14, "anjay"

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "width:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "height:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "downscale:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move/from16 v16, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 217
    const/4 v14, 0x2

    new-array v14, v14, [F

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v18, v2

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x1

    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v18, v2

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    move-object v8, v14

    .line 218
    move-object v14, v4

    invoke-virtual {v14}, Landroid/view/Display;->getRotation()I

    move-result v14

    invoke-static {v14}, Lcom/serajr/utils/DisplayUtils;->getDegreesForRotation(I)F

    move-result v14

    move v9, v14

    .line 219
    move v14, v9

    const/4 v15, 0x0

    int-to-float v15, v15

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_1

    const/4 v14, 0x0

    :goto_0
    move v10, v14

    .line 221
    move v14, v10

    if-eqz v14, :cond_0

    .line 224
    move-object v14, v6

    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    .line 225
    move-object v14, v6

    move v15, v9

    neg-float v15, v15

    invoke-virtual {v14, v15}, Landroid/graphics/Matrix;->preRotate(F)Z

    move-result v14

    .line 226
    move-object v14, v6

    move-object v15, v8

    invoke-virtual {v14, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 227
    move-object v14, v8

    const/4 v15, 0x0

    move-object/from16 v16, v8

    const/16 v17, 0x0

    aget v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    aput v16, v14, v15

    .line 228
    move-object v14, v8

    const/4 v15, 0x1

    move-object/from16 v16, v8

    const/16 v17, 0x1

    aget v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    aput v16, v14, v15

    .line 234
    :cond_0
    move-object v14, v8

    const/4 v15, 0x0

    aget v14, v14, v15

    float-to-int v14, v14

    move-object v15, v8

    const/16 v16, 0x1

    aget v15, v15, v16

    float-to-int v15, v15

    invoke-static {v14, v15}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object v7, v14

    .line 240
    move-object v14, v7

    if-nez v14, :cond_2

    .line 243
    const-string v14, "serajr_blurred_system_ui"

    const-string v15, "Cannot take surface screenshot! Skipping blur feature!!"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 244
    const/4 v14, 0x0

    check-cast v14, Landroid/graphics/Bitmap;

    move-object v1, v14

    .line 270
    :goto_1
    return-object v1

    .line 219
    :cond_1
    const/4 v14, 0x1

    goto :goto_0

    .line 248
    :cond_2
    move v14, v10

    if-eqz v14, :cond_3

    .line 251
    move-object v14, v5

    iget v14, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move v15, v2

    div-int/2addr v14, v15

    move-object v15, v5

    iget v15, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v2

    div-int v15, v15, v16

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object v11, v14

    .line 252
    new-instance v14, Landroid/graphics/Canvas;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    move-object/from16 v16, v11

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v12, v14

    .line 253
    move-object v14, v12

    move-object v15, v11

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    move-object v14, v12

    const/high16 v15, 0x43b40000    # 360.0f

    move/from16 v16, v9

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/graphics/Canvas;->rotate(F)V

    .line 255
    move-object v14, v12

    move-object v15, v8

    const/16 v16, 0x0

    aget v15, v15, v16

    neg-float v15, v15

    const/16 v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v16, v8

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    move-object v14, v12

    move-object v15, v7

    const/16 v16, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    check-cast v18, Landroid/graphics/Paint;

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 257
    move-object v14, v12

    const/4 v15, 0x0

    check-cast v15, Landroid/graphics/Bitmap;

    invoke-virtual {v14, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    move-object v14, v11

    move-object v7, v14

    .line 263
    :cond_3
    move-object v14, v7

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object v11, v14

    .line 266
    move-object v14, v11

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 267
    move-object v14, v11

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 270
    move-object v14, v11

    move-object v1, v14

    goto/16 :goto_1
.end method
