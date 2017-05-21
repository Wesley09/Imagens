.class public final Landroid/support/v21/ScrollUtils;
.super Ljava/lang/Object;
.source "ScrollUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/ScrollUtils$100000000;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 29
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnGlobalLayoutListener(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    move-object v3, v5

    .line 74
    move-object v5, v3

    new-instance v6, Landroid/support/v21/ScrollUtils$100000000;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroid/support/v21/ScrollUtils$100000000;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static cmykFromRgb(I)[F
    .locals 16

    .prologue
    .line 115
    move/from16 v0, p0

    const/high16 v10, 0xff0000

    move v11, v0

    and-int/2addr v10, v11

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    move v2, v10

    .line 116
    const v10, 0xff00

    move v11, v0

    and-int/2addr v10, v11

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    move v3, v10

    .line 117
    const/16 v10, 0xff

    move v11, v0

    and-int/2addr v10, v11

    move v4, v10

    .line 118
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v2

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v3

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    move v13, v4

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move v5, v10

    .line 119
    const/high16 v10, 0x3f800000    # 1.0f

    move v6, v10

    .line 120
    const/high16 v10, 0x3f800000    # 1.0f

    move v7, v10

    .line 121
    const/high16 v10, 0x3f800000    # 1.0f

    move v8, v10

    .line 122
    move v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_0

    .line 124
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v2

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    move v11, v5

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v5

    sub-float/2addr v11, v12

    div-float/2addr v10, v11

    move v6, v10

    .line 125
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v3

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    move v11, v5

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v5

    sub-float/2addr v11, v12

    div-float/2addr v10, v11

    move v7, v10

    .line 126
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v4

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    move v11, v5

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v5

    sub-float/2addr v11, v12

    div-float/2addr v10, v11

    move v8, v10

    .line 128
    :cond_0
    const/4 v10, 0x4

    new-array v10, v10, [F

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move v13, v6

    aput v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move v13, v7

    aput v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x2

    move v13, v8

    aput v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x3

    move v13, v5

    aput v13, v11, v12

    move-object v0, v10

    return-object v0
.end method

.method public static getColorWithAlpha(FI)I
    .locals 10

    .prologue
    .line 59
    move v0, p0

    move v1, p1

    const/16 v6, 0xff

    const/4 v7, 0x0

    move v8, v0

    const/16 v9, 0xff

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/16 v7, 0x18

    shl-int/lit8 v6, v6, 0x18

    move v3, v6

    .line 60
    const v6, 0xffffff

    move v7, v1

    and-int/2addr v6, v7

    move v4, v6

    .line 61
    move v6, v3

    move v7, v4

    add-int/2addr v6, v7

    move v0, v6

    return v0
.end method

.method public static getFloat(FFF)F
    .locals 8

    .prologue
    .line 43
    move v0, p0

    move v1, p1

    move v2, p2

    move v5, v2

    move v6, v1

    move v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move v0, v5

    return v0
.end method

.method public static getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v0, v6

    return v0
.end method

.method public static mixColors(IIF)I
    .locals 15

    .prologue
    .line 99
    move v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v9, v0

    invoke-static {v9}, Landroid/support/v21/ScrollUtils;->cmykFromRgb(I)[F

    move-result-object v9

    move-object v4, v9

    .line 100
    move v9, v1

    invoke-static {v9}, Landroid/support/v21/ScrollUtils;->cmykFromRgb(I)[F

    move-result-object v9

    move-object v5, v9

    .line 101
    const/4 v9, 0x4

    new-array v9, v9, [F

    move-object v6, v9

    .line 102
    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    .line 105
    const/high16 v9, -0x1000000

    const v10, 0xffffff

    move-object v11, v6

    invoke-static {v11}, Landroid/support/v21/ScrollUtils;->rgbFromCmyk([F)I

    move-result v11

    and-int/2addr v10, v11

    add-int/2addr v9, v10

    move v0, v9

    return v0

    .line 103
    :cond_0
    move-object v9, v6

    move v10, v7

    const/4 v11, 0x1

    int-to-float v11, v11

    move-object v12, v4

    move v13, v7

    aget v12, v12, v13

    const/4 v13, 0x1

    int-to-float v13, v13

    move v14, v2

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    move-object v13, v5

    move v14, v7

    aget v13, v13, v14

    move v14, v2

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    aput v11, v9, v10

    .line 102
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public static rgbFromCmyk([F)I
    .locals 15

    .prologue
    .line 140
    move-object v0, p0

    move-object v10, v0

    const/4 v11, 0x0

    aget v10, v10, v11

    move v2, v10

    .line 141
    move-object v10, v0

    const/4 v11, 0x1

    aget v10, v10, v11

    move v3, v10

    .line 142
    move-object v10, v0

    const/4 v11, 0x2

    aget v10, v10, v11

    move v4, v10

    .line 143
    move-object v10, v0

    const/4 v11, 0x3

    aget v10, v10, v11

    move v5, v10

    .line 144
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v2

    const/high16 v13, 0x3f800000    # 1.0f

    move v14, v5

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    move v13, v5

    add-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    sub-float/2addr v10, v11

    const/16 v11, 0xff

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v6, v10

    .line 145
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v3

    const/high16 v13, 0x3f800000    # 1.0f

    move v14, v5

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    move v13, v5

    add-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    sub-float/2addr v10, v11

    const/16 v11, 0xff

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v7, v10

    .line 146
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v4

    const/high16 v13, 0x3f800000    # 1.0f

    move v14, v5

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    move v13, v5

    add-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    sub-float/2addr v10, v11

    const/16 v11, 0xff

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v8, v10

    .line 147
    const/16 v10, 0xff

    move v11, v6

    and-int/2addr v10, v11

    const/16 v11, 0x10

    shl-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    move v12, v7

    and-int/2addr v11, v12

    const/16 v12, 0x8

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v10, v11

    const/16 v11, 0xff

    move v12, v8

    and-int/2addr v11, v12

    add-int/2addr v10, v11

    move v0, v10

    return v0
.end method
