.class public Landroid/widget/CircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleDrawable.java"


# static fields
.field private static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType:[I = null

.field public static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field public static final TAG:Ljava/lang/String; = "RoundedDrawable"


# instance fields
.field private final mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mBitmapWidth:I

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:F

.field private final mBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mOval:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Landroid/widget/CircleDrawable;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Landroid/widget/CircleDrawable;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/CircleDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 38
    iput v3, p0, Landroid/widget/CircleDrawable;->mCornerRadius:F

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CircleDrawable;->mOval:Z

    .line 40
    iput v3, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    .line 41
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 42
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/widget/CircleDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/CircleDrawable;->mBitmapWidth:I

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/CircleDrawable;->mBitmapHeight:I

    .line 48
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/widget/CircleDrawable;->mBitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/CircleDrawable;->mBitmapHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/widget/CircleDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 51
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CircleDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/CircleDrawable;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x1

    .line 102
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 103
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v3, "height":I
    .local v4, "width":I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 107
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 108
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 110
    .restart local v3    # "height":I
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v0, 0x0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Landroid/widget/CircleDrawable;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    new-instance v0, Landroid/widget/CircleDrawable;

    invoke-direct {v0, p0}, Landroid/widget/CircleDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    .line 75
    instance-of v5, p0, Landroid/widget/CircleDrawable;

    if-eqz v5, :cond_1

    .line 98
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v0, "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 78
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v5, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_3

    move-object v3, p0

    .line 79
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 80
    .local v3, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 83
    .local v4, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v4, :cond_2

    move-object p0, v3

    .line 87
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 85
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-static {v1}, Landroid/widget/CircleDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i":I
    .end local v3    # "ld":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "num":I
    :cond_3
    invoke-static {p0}, Landroid/widget/CircleDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 93
    new-instance p0, Landroid/widget/CircleDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Landroid/widget/CircleDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 95
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v5, "RoundedDrawable"

    const-string v6, "Failed to create bitmap from drawable!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, 0x40000000    # 2.0f

    .line 143
    invoke-static {}, Landroid/widget/CircleDrawable;->$SWITCH_TABLE$android$widget$ImageView$ScaleType()[I

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 199
    :pswitch_0
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 200
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 201
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 202
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 203
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 230
    :goto_0
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 231
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 232
    return-void

    .line 145
    :pswitch_1
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 146
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 148
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 149
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Landroid/widget/CircleDrawable;->mBitmapWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v4, v4

    .line 150
    iget-object v5, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Landroid/widget/CircleDrawable;->mBitmapHeight:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v8

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-float v5, v5

    .line 149
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 155
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 157
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 162
    .local v1, "dy":F
    iget v3, p0, Landroid/widget/CircleDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Landroid/widget/CircleDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 163
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Landroid/widget/CircleDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 164
    .local v2, "scale":F
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Landroid/widget/CircleDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v8

    .line 170
    :goto_1
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 171
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v8

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    add-float/2addr v4, v5

    .line 172
    add-float v5, v1, v8

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    add-float/2addr v5, v6

    .line 171
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 166
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Landroid/widget/CircleDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 167
    .restart local v2    # "scale":F
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Landroid/widget/CircleDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v8

    goto :goto_1

    .line 176
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "scale":F
    :pswitch_3
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 178
    iget v3, p0, Landroid/widget/CircleDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p0, Landroid/widget/CircleDrawable;->mBitmapHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 179
    const/high16 v2, 0x3f800000    # 1.0f

    .line 185
    .restart local v2    # "scale":F
    :goto_2
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Landroid/widget/CircleDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v8

    float-to-int v3, v3

    int-to-float v0, v3

    .line 186
    .restart local v0    # "dx":F
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Landroid/widget/CircleDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v8

    float-to-int v3, v3

    int-to-float v1, v3

    .line 188
    .restart local v1    # "dy":F
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 189
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 191
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 192
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 193
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 194
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 181
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "scale":F
    :cond_1
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Landroid/widget/CircleDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 182
    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Landroid/widget/CircleDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 181
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .restart local v2    # "scale":F
    goto :goto_2

    .line 207
    .end local v2    # "scale":F
    :pswitch_4
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 208
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 209
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 210
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 211
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 215
    :pswitch_5
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 216
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 217
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 218
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 219
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 223
    :pswitch_6
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 224
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 225
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 226
    iget-object v3, p0, Landroid/widget/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-boolean v0, p0, Landroid/widget/CircleDrawable;->mOval:Z

    if-eqz v0, :cond_1

    .line 247
    iget v0, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 249
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 262
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 254
    :cond_1
    iget v0, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 255
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/widget/CircleDrawable;->mCornerRadius:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 256
    iget v2, p0, Landroid/widget/CircleDrawable;->mCornerRadius:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 255
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 257
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/widget/CircleDrawable;->mCornerRadius:F

    iget v2, p0, Landroid/widget/CircleDrawable;->mCornerRadius:F

    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/widget/CircleDrawable;->mCornerRadius:F

    iget v2, p0, Landroid/widget/CircleDrawable;->mCornerRadius:F

    iget-object v3, p0, Landroid/widget/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Landroid/widget/CircleDrawable;->mCornerRadius:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Landroid/widget/CircleDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Landroid/widget/CircleDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, -0x3

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isOval()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Landroid/widget/CircleDrawable;->mOval:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 238
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 240
    invoke-direct {p0}, Landroid/widget/CircleDrawable;->updateShaderMatrix()V

    .line 241
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .prologue
    .line 129
    iget-object v1, p0, Landroid/widget/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 130
    .local v0, "newColor":I
    iget-object v1, p0, Landroid/widget/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 131
    iget-object v1, p0, Landroid/widget/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    const/4 v1, 0x1

    .line 134
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v1

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 271
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    invoke-virtual {p0}, Landroid/widget/CircleDrawable;->invalidateSelf()V

    .line 273
    return-void
.end method

.method public setBorderColor(I)Landroid/widget/CircleDrawable;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 325
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CircleDrawable;->setBorderColors(Landroid/content/res/ColorStateList;)Landroid/widget/CircleDrawable;

    move-result-object v0

    return-object v0
.end method

.method public setBorderColors(Landroid/content/res/ColorStateList;)Landroid/widget/CircleDrawable;
    .locals 4
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :goto_0
    iput-object p1, p0, Landroid/widget/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 334
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/CircleDrawable;->getState()[I

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    return-object p0

    .line 333
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0
.end method

.method public setBorderWidth(I)Landroid/widget/CircleDrawable;
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 315
    int-to-float v0, p1

    iput v0, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    .line 316
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/CircleDrawable;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 317
    return-object p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 277
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 278
    invoke-virtual {p0}, Landroid/widget/CircleDrawable;->invalidateSelf()V

    .line 279
    return-void
.end method

.method public setCornerRadius(F)Landroid/widget/CircleDrawable;
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 306
    iput p1, p0, Landroid/widget/CircleDrawable;->mCornerRadius:F

    .line 307
    return-object p0
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 283
    invoke-virtual {p0}, Landroid/widget/CircleDrawable;->invalidateSelf()V

    .line 284
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 288
    invoke-virtual {p0}, Landroid/widget/CircleDrawable;->invalidateSelf()V

    .line 289
    return-void
.end method

.method public setOval(Z)Landroid/widget/CircleDrawable;
    .locals 0
    .param p1, "oval"    # Z

    .prologue
    .line 343
    iput-boolean p1, p0, Landroid/widget/CircleDrawable;->mOval:Z

    .line 344
    return-object p0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)Landroid/widget/CircleDrawable;
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 355
    :cond_0
    iget-object v0, p0, Landroid/widget/CircleDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 356
    iput-object p1, p0, Landroid/widget/CircleDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 357
    invoke-direct {p0}, Landroid/widget/CircleDrawable;->updateShaderMatrix()V

    .line 359
    :cond_1
    return-object p0
.end method

.method public toBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 363
    invoke-static {p0}, Landroid/widget/CircleDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
