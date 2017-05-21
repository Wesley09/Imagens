.class public Lcom/fmd/statusbarcolor/color;
.super Landroid/widget/RelativeLayout;
.source "color.java"


# instance fields
.field private Divider:I

.field private Height:I

.field private OffsetY:I

.field private UPDATE:Ljava/lang/Runnable;

.field private Updater:Landroid/os/Handler;

.field private UpdaterTime:I

.field private Width:I

.field private isFilterEnabled:I

.field private isFilterNeed:I

.field private isGradientEnabled:I

.field private isKeyguardLocked:I

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->Updater:Landroid/os/Handler;

    .line 19
    const/16 v0, 0xc8

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->UpdaterTime:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->Divider:I

    .line 69
    new-instance v0, Lcom/fmd/statusbarcolor/color$1;

    invoke-direct {v0, p0}, Lcom/fmd/statusbarcolor/color$1;-><init>(Lcom/fmd/statusbarcolor/color;)V

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->UPDATE:Ljava/lang/Runnable;

    .line 23
    iput-object p1, p0, Lcom/fmd/statusbarcolor/color;->mContext:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->Updater:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->UPDATE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->Updater:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->UPDATE:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    return-void
.end method

.method private SetColor()V
    .locals 9

    .prologue
    const v0, 0x0

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isFilterNeed:I

    iget-object v3, p0, Lcom/fmd/statusbarcolor/color;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dynamic_status_bar_gradient_state"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isGradientEnabled:I

    if-gtz v0, :cond_0

    const v0, 0x7f09016d

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v7, "dynamic_status_bar_filter_state"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isFilterEnabled:I

    if-gtz v0, :cond_1

    const v0, 0x7f09016c

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const-string v7, "dynamic_status_bar_state"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    const v0, 0x7f09016b

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f09016b

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v0, "launcher"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-gtz v0, :cond_3

    const-string v0, "home"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual {p0}, Lcom/fmd/statusbarcolor/color;->takeScreenshot()V

    invoke-virtual {p0}, Lcom/fmd/statusbarcolor/color;->getTargetColor()I

    move-result v3

    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_3
    const v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/fmd/statusbarcolor/color;->setBackgroundColor(I)V

    iget v6, p0, Lcom/fmd/statusbarcolor/color;->isGradientEnabled:I

    if-gtz v6, :cond_5

    iget v6, p0, Lcom/fmd/statusbarcolor/color;->isFilterEnabled:I

    if-gtz v6, :cond_4

    iget v1, p0, Lcom/fmd/statusbarcolor/color;->isFilterNeed:I

    if-eqz v1, :cond_6

    :cond_4
    const v0, 0x7f09016c

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const v0, 0x7f09016d

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic access$0(Lcom/fmd/statusbarcolor/color;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/fmd/statusbarcolor/color;->SetColor()V

    return-void
.end method

.method static synthetic access$1(Lcom/fmd/statusbarcolor/color;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->Updater:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fmd/statusbarcolor/color;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->UPDATE:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fmd/statusbarcolor/color;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/fmd/statusbarcolor/color;->UpdaterTime:I

    return v0
.end method

.method private static getAverageColor([II)I
    .locals 8
    .param p0, "colorsArray"    # [I
    .param p1, "SimilarColors"    # I

    .prologue
    const v2, 0x4

    const v3, 0x0

    move v4, p1

    const v5, 0x0

    const v6, 0x0

    const v7, 0x0

    :cond_0
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_1

    aget v0, p0, v2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    add-int v5, v5, v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    add-int v6, v6, v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    add-int v7, v7, v1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    const v1, 0x1

    sub-int v2, v2, v1

    shr-int/lit8 v4, v4, 0x1

    if-gez v2, :cond_0

    div-int v5, v5, v3

    div-int v6, v6, v3

    div-int v7, v7, v3

    const v3, 0xff

    const v4, 0x0

    if-lez v5, :cond_2

    if-ge v5, v3, :cond_3

    :goto_0
    if-lez v6, :cond_4

    if-ge v6, v3, :cond_5

    :goto_1
    if-lez v7, :cond_6

    if-ge v7, v3, :cond_7

    :goto_2
    const v0, 0xff

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3

    :cond_2
    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_0

    :cond_4
    move v6, v4

    goto :goto_1

    :cond_5
    move v6, v3

    goto :goto_1

    :cond_6
    move v7, v4

    goto :goto_2

    :cond_7
    move v7, v3

    goto :goto_2
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    .line 416
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 410
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 412
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 414
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isColorsSimilar(II)I
    .locals 7
    .param p0, "color1"    # I
    .param p1, "color2"    # I

    .prologue
    const/16 v3, 0x14

    const/4 v6, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [F

    new-array v5, v0, [F

    invoke-static {p0, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const v0, 0x0

    aget v1, v4, v0

    invoke-static {p1, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, v5, v0

    sub-float v0, v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-gt v0, v3, :cond_0

    const/16 v3, 0x14

    invoke-static {p0, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const v0, 0x1

    aget v1, v4, v0

    invoke-static {p1, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, v5, v0

    sub-float v0, v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-gt v0, v3, :cond_0

    const/16 v3, 0x14

    invoke-static {p0, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const v0, 0x2

    aget v1, v4, v0

    invoke-static {p1, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, v5, v0

    sub-float v0, v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-gt v0, v3, :cond_0

    const/4 v6, 0x1

    :cond_0
    return v6
.end method


# virtual methods
.method public getTargetColor()I
    .locals 9

    .prologue
    iget v6, p0, Lcom/fmd/statusbarcolor/color;->Width:I

    const v0, 0x5

    new-array v4, v0, [I

    const v1, 0x0

    const v0, 0x0

    aput v0, v4, v1

    const v1, 0x1

    div-int/lit8 v2, v6, 0x4

    aput v2, v4, v1

    const v1, 0x2

    div-int/lit8 v0, v6, 0x2

    aput v0, v4, v1

    const v1, 0x3

    mul-int/lit8 v0, v2, 0x3

    aput v0, v4, v1

    const v1, 0x4

    const v0, 0x1

    sub-int v3, v6, v0

    aput v3, v4, v1

    const v7, 0x5

    new-array v6, v7, [I

    const/4 v0, 0x0

    :cond_0
    aget v1, v4, v0

    iget v2, p0, Lcom/fmd/statusbarcolor/color;->OffsetY:I

    iget-object v3, p0, Lcom/fmd/statusbarcolor/color;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    aput v3, v6, v0

    const/4 v1, 0x1

    add-int v0, v0, v1

    if-lt v0, v7, :cond_0

    const v4, 0x5

    new-array v7, v4, [I

    const v0, 0x0

    const v1, 0x0

    :cond_1
    aput v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_1

    const v0, 0x0

    :cond_2
    aget v2, v6, v0

    const v1, 0x0

    const v5, 0x0

    :cond_3
    shl-int/lit8 v5, v5, 0x1

    aget v3, v6, v1

    if-ne v2, v3, :cond_4

    or-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_3

    aput v5, v7, v0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v4, :cond_2

    const v0, 0x0

    aget v1, v7, v0

    const v0, 0x1d

    if-ge v1, v0, :cond_d

    const v0, 0x17

    if-eq v1, v0, :cond_d

    const v0, 0x1b

    if-eq v1, v0, :cond_d

    const v0, 0x1

    aget v1, v7, v0

    const v0, 0xf

    if-eq v1, v0, :cond_e

    const v0, 0x0

    aget v1, v7, v0

    const v0, 0x11

    if-ne v1, v0, :cond_5

    const v0, 0x1

    aget v1, v7, v0

    const v0, 0xe

    if-eq v1, v0, :cond_e

    :cond_5
    const v4, 0x5

    const v0, 0x0

    const v1, 0x0

    :cond_6
    aput v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_6

    const v0, 0x0

    :cond_7
    aget v2, v6, v0

    const v1, 0x0

    const v5, 0x0

    :cond_8
    shl-int/lit8 v5, v5, 0x1

    aget v3, v6, v1

    invoke-static {v2, v3}, Lcom/fmd/statusbarcolor/color;->isColorsSimilar(II)I

    move-result v8

    if-eqz v8, :cond_9

    or-int/lit8 v5, v5, 0x1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_8

    aput v5, v7, v0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v4, :cond_7

    const v0, 0x0

    aget v1, v7, v0

    const v0, 0x1d

    if-ge v1, v0, :cond_b

    const v0, 0x17

    if-eq v1, v0, :cond_b

    const v0, 0x1b

    if-eq v1, v0, :cond_b

    const v0, 0x1

    aget v1, v7, v0

    const v0, 0xf

    if-eq v1, v0, :cond_c

    const v0, 0x0

    aget v1, v7, v0

    const v0, 0x11

    if-ne v1, v0, :cond_a

    const v0, 0x1

    aget v1, v7, v0

    const v0, 0xe

    if-eq v1, v0, :cond_c

    :cond_a
    const v7, 0x0

    goto :goto_1

    :cond_b
    const v0, 0x0

    aget v1, v7, v0

    invoke-static {v6, v1}, Lcom/fmd/statusbarcolor/color;->getAverageColor([II)I

    move-result v7

    goto :goto_0

    :cond_c
    const v0, 0x1

    aget v1, v7, v0

    invoke-static {v6, v1}, Lcom/fmd/statusbarcolor/color;->getAverageColor([II)I

    move-result v7

    goto :goto_0

    :cond_d
    const v0, 0x0

    aget v7, v6, v0

    goto :goto_0

    :cond_e
    const v0, 0x1

    aget v7, v6, v0

    :goto_0
    iget v0, p0, Lcom/fmd/statusbarcolor/color;->isFilterEnabled:I

    iget v1, p0, Lcom/fmd/statusbarcolor/color;->isGradientEnabled:I

    or-int v0, v0, v1

    if-nez v0, :cond_f

    const/4 v1, 0x3

    new-array v3, v1, [F

    invoke-static {v7, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const v1, 0x2

    aget v2, v3, v1

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v2, v0

    if-lez v1, :cond_f

    sub-float/2addr v2, v0

    const v1, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v1

    const v1, 0x1

    aget v1, v3, v1

    cmpl-float v1, v1, v2

    if-gez v1, :cond_f

    const v2, 0x2

    aput v0, v3, v2

    const v0, 0xff

    invoke-static {v0, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    :cond_f
    :goto_1
    return v7
.end method

.method public takeScreenshot()V
    .locals 10

    .prologue
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->mDisplayMatrix:Landroid/graphics/Matrix;

    const-string v0, "window"

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->mDisplay:Landroid/view/Display;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, p0, Lcom/fmd/statusbarcolor/color;->Divider:I

    iget-object v3, p0, Lcom/fmd/statusbarcolor/color;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    div-int/2addr v4, v0

    iput v4, p0, Lcom/fmd/statusbarcolor/color;->OffsetY:I

    const/4 v1, 0x2

    new-array v9, v1, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fmd/statusbarcolor/color;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, v0

    iput v2, p0, Lcom/fmd/statusbarcolor/color;->Width:I

    int-to-float v2, v2

    aput v2, v9, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/fmd/statusbarcolor/color;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v2, v0

    iput v2, p0, Lcom/fmd/statusbarcolor/color;->Height:I

    int-to-float v2, v2

    aput v2, v9, v1

    .local v9, "dims":[F
    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fmd/statusbarcolor/color;->getDegreesForRotation(I)F

    move-result v8

    .local v8, "degrees":F
    const/4 v1, 0x0

    cmpl-float v1, v8, v1

    if-lez v1, :cond_2

    const/4 v4, 0x1

    .local v4, "requiresRotation":Z
    :goto_0
    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v2, v8

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v9, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v9, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v2, v9, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v9, v1

    :cond_0
    const/4 v1, 0x0

    aget v1, v9, v1

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/fmd/statusbarcolor/color;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->mScreenBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p0, Lcom/fmd/statusbarcolor/color;->Divider:I

    div-int/2addr v1, v0

    iget-object v2, p0, Lcom/fmd/statusbarcolor/color;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, "ss":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v7, "c":Landroid/graphics/Canvas;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v1, 0x0

    aget v1, v9, v1

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x1

    aget v2, v9, v2

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/fmd/statusbarcolor/color;->mScreenBitmap:Landroid/graphics/Bitmap;

    .end local v7    # "c":Landroid/graphics/Canvas;
    .end local v6    # "ss":Landroid/graphics/Bitmap;
    goto :goto_1
.end method
