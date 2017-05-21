.class public Landroid/support/v21/btn/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final DEFAULT_FILL_COLOR:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mFillColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v2, Landroid/support/v21/btn/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v2, Landroid/support/v21/btn/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Landroid/support/v21/btn/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    move-object v3, v0

    new-instance v4, Landroid/graphics/Matrix;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v3, Landroid/support/v21/btn/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Landroid/support/v21/btn/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Landroid/support/v21/btn/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Landroid/support/v21/btn/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const/high16 v4, -0x1000000

    iput v4, v3, Landroid/support/v21/btn/CircleImageView;->mBorderColor:I

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v21/btn/CircleImageView;->mBorderWidth:I

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v21/btn/CircleImageView;->mFillColor:I

    .line 78
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/btn/CircleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v21/btn/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Landroid/support/v21/btn/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Matrix;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v5, Landroid/support/v21/btn/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Paint;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v5, Landroid/support/v21/btn/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Paint;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v5, Landroid/support/v21/btn/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Paint;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v5, Landroid/support/v21/btn/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, -0x1000000

    iput v6, v5, Landroid/support/v21/btn/CircleImageView;->mBorderColor:I

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v21/btn/CircleImageView;->mBorderWidth:I

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v21/btn/CircleImageView;->mFillColor:I

    .line 87
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v21/btn/CircleImageView;->init()V

    return-void
.end method

.method private applyColorFilter()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 305
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 16

    .prologue
    .line 393
    move-object/from16 v0, p0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v21/btn/CircleImageView;->getWidth()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v21/btn/CircleImageView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v21/btn/CircleImageView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    move v2, v8

    .line 394
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v21/btn/CircleImageView;->getHeight()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v21/btn/CircleImageView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v21/btn/CircleImageView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    move v3, v8

    .line 396
    move v8, v2

    move v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v4, v8

    .line 398
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v21/btn/CircleImageView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    move v9, v2

    move v10, v4

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    move v5, v8

    .line 399
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v21/btn/CircleImageView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    move v10, v4

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    move v6, v8

    .line 401
    new-instance v8, Landroid/graphics/RectF;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v5

    move v11, v6

    move v12, v5

    move v13, v4

    int-to-float v13, v13

    add-float/2addr v12, v13

    move v13, v6

    move v14, v4

    int-to-float v14, v14

    add-float/2addr v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v8

    return-object v0
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-nez v6, :cond_0

    .line 311
    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v0, v6

    .line 333
    :goto_0
    return-object v0

    .line 314
    :cond_0
    move-object v6, v1

    instance-of v6, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    .line 315
    move-object v6, v1

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 319
    :cond_1
    move-object v6, v1

    :try_start_0
    instance-of v6, v6, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_2

    .line 322
    const/4 v6, 0x2

    const/4 v7, 0x2

    sget-object v8, Landroid/support/v21/btn/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v3, v6

    .line 327
    :goto_1
    new-instance v6, Landroid/graphics/Canvas;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v6

    .line 328
    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    move-object v10, v4

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 329
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 324
    :cond_2
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sget-object v8, Landroid/support/v21/btn/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v3, v6

    goto :goto_1

    .line 330
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 332
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v0, v6

    goto :goto_0
.end method

.method private init()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    move-object v2, v0

    sget-object v3, Landroid/support/v21/btn/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v21/btn/CircleImageView;->mReady:Z

    .line 94
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v21/btn/CircleImageView;->mSetupPending:Z

    if-eqz v2, :cond_0

    .line 95
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v21/btn/CircleImageView;->setup()V

    .line 96
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v21/btn/CircleImageView;->mSetupPending:Z

    :cond_0
    return-void
.end method

.method private initializeBitmap()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v21/btn/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v2, :cond_0

    .line 339
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, v2, Landroid/support/v21/btn/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 343
    :goto_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v21/btn/CircleImageView;->setup()V

    return-void

    .line 341
    :cond_0
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/btn/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v21/btn/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v21/btn/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private setup()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v21/btn/CircleImageView;->mReady:Z

    if-nez v2, :cond_0

    .line 348
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v21/btn/CircleImageView;->mSetupPending:Z

    .line 389
    :goto_0
    return-void

    .line 352
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/btn/CircleImageView;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v3, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/btn/CircleImageView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v3, :cond_1

    .line 353
    goto :goto_0

    .line 356
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 357
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/btn/CircleImageView;->invalidate()V

    .line 358
    goto :goto_0

    .line 361
    :cond_2
    move-object v2, v0

    new-instance v3, Landroid/graphics/BitmapShader;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, v2, Landroid/support/v21/btn/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 363
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 364
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v2

    .line 366
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 367
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 368
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Landroid/support/v21/btn/CircleImageView;->mBorderColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Landroid/support/v21/btn/CircleImageView;->mBorderWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 371
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 372
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 373
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Landroid/support/v21/btn/CircleImageView;->mFillColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/support/v21/btn/CircleImageView;->mBitmapHeight:I

    .line 376
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/support/v21/btn/CircleImageView;->mBitmapWidth:I

    .line 378
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/btn/CircleImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 379
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v21/btn/CircleImageView;->mBorderWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/btn/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v21/btn/CircleImageView;->mBorderWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/support/v21/btn/CircleImageView;->mBorderRadius:F

    .line 381
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 382
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v21/btn/CircleImageView;->mBorderOverlay:Z

    if-nez v2, :cond_3

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/btn/CircleImageView;->mBorderWidth:I

    const/4 v3, 0x0

    if-le v2, v3, :cond_3

    .line 383
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    move-object v3, v0

    iget v3, v3, Landroid/support/v21/btn/CircleImageView;->mBorderWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroid/support/v21/btn/CircleImageView;->mBorderWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 385
    :cond_3
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/support/v21/btn/CircleImageView;->mDrawableRadius:F

    .line 387
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v21/btn/CircleImageView;->applyColorFilter()V

    .line 388
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v21/btn/CircleImageView;->updateShaderMatrix()V

    .line 389
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/btn/CircleImageView;->invalidate()V

    goto/16 :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 405
    move-object v0, p0

    const/4 v6, 0x0

    int-to-float v6, v6

    move v3, v6

    .line 407
    const/4 v6, 0x0

    int-to-float v6, v6

    move v4, v6

    .line 409
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x0

    check-cast v7, Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 411
    move-object v6, v0

    iget v6, v6, Landroid/support/v21/btn/CircleImageView;->mBitmapWidth:I

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v21/btn/CircleImageView;->mBitmapHeight:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 412
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/btn/CircleImageView;->mBitmapHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v2, v6

    .line 413
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/btn/CircleImageView;->mBitmapWidth:I

    int-to-float v7, v7

    move v8, v2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v3, v6

    .line 419
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    move v7, v2

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 420
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    move v7, v3

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v8

    move v8, v4

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v6

    .line 422
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void

    .line 415
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/btn/CircleImageView;->mBitmapWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v2, v6

    .line 416
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/btn/CircleImageView;->mBitmapHeight:I

    int-to-float v7, v7

    move v8, v2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v4, v6

    goto :goto_0
.end method


# virtual methods
.method public getBorderColor()I
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/btn/CircleImageView;->mBorderColor:I

    move v0, v2

    return v0
.end method

.method public getBorderWidth()I
    .locals 3

    .prologue
    .line 225
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/btn/CircleImageView;->mBorderWidth:I

    move v0, v2

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v0, v2

    return-object v0
.end method

.method public getFillColor()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/btn/CircleImageView;->mFillColor:I

    move v0, v2

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    sget-object v2, Landroid/support/v21/btn/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    move-object v0, v2

    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 3

    .prologue
    .line 238
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v21/btn/CircleImageView;->mBorderOverlay:Z

    move v0, v2

    return v0
.end method

.method public isDisableCircularTransformation()Z
    .locals 3

    .prologue
    .line 251
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v21/btn/CircleImageView;->mDisableCircularTransformation:Z

    move v0, v2

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v21/btn/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v3, :cond_0

    .line 122
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 135
    :goto_0
    return-void

    .line 126
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 127
    goto :goto_0

    .line 130
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroid/support/v21/btn/CircleImageView;->mFillColor:I

    const/4 v4, 0x0

    if-eq v3, v4, :cond_2

    .line 131
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v21/btn/CircleImageView;->mDrawableRadius:F

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 133
    :cond_2
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v21/btn/CircleImageView;->mDrawableRadius:F

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    move-object v3, v0

    iget v3, v3, Landroid/support/v21/btn/CircleImageView;->mBorderWidth:I

    const/4 v4, 0x0

    if-le v3, v4, :cond_3

    .line 135
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/btn/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v21/btn/CircleImageView;->mBorderRadius:F

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 141
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

    invoke-super {v6, v7, v8, v9, v10}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 142
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v21/btn/CircleImageView;->setup()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    .line 115
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "adjustViewBounds not supported."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v21/btn/CircleImageView;->mBorderColor:I

    if-ne v3, v4, :cond_0

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v21/btn/CircleImageView;->mBorderColor:I

    .line 167
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget v4, v4, Landroid/support/v21/btn/CircleImageView;->mBorderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/btn/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderColorResource(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/btn/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v21/btn/CircleImageView;->setBorderColor(I)V

    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-nez v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v21/btn/CircleImageView;->mBorderOverlay:Z

    if-nez v3, :cond_2

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v21/btn/CircleImageView;->mBorderOverlay:Z

    if-nez v3, :cond_0

    .line 246
    :cond_2
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/v21/btn/CircleImageView;->mBorderOverlay:Z

    .line 247
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/btn/CircleImageView;->setup()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v21/btn/CircleImageView;->mBorderWidth:I

    if-ne v3, v4, :cond_0

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v21/btn/CircleImageView;->mBorderWidth:I

    .line 234
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/btn/CircleImageView;->setup()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/btn/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne v3, v4, :cond_0

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/btn/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 294
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/btn/CircleImageView;->applyColorFilter()V

    .line 295
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/btn/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v21/btn/CircleImageView;->mDisableCircularTransformation:Z

    if-nez v3, :cond_1

    move v3, v1

    if-nez v3, :cond_2

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    move v3, v1

    if-nez v3, :cond_0

    .line 259
    :cond_2
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/v21/btn/CircleImageView;->mDisableCircularTransformation:Z

    .line 260
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/btn/CircleImageView;->initializeBitmap()V

    goto :goto_0
.end method

.method public setFillColor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v21/btn/CircleImageView;->mFillColor:I

    if-ne v3, v4, :cond_0

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v21/btn/CircleImageView;->mFillColor:I

    .line 206
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/btn/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setFillColorResource(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/btn/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v21/btn/CircleImageView;->setFillColor(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/btn/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/btn/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/btn/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 284
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/btn/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 147
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

    invoke-super {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 148
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v21/btn/CircleImageView;->setup()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 153
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

    invoke-super {v6, v7, v8, v9, v10}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 154
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v21/btn/CircleImageView;->setup()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView$ScaleType;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    sget-object v4, Landroid/support/v21/btn/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-eq v3, v4, :cond_0

    .line 108
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string v5, "ScaleType %s not supported."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    return-void
.end method
