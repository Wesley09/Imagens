.class public Lcom/android/systemui/ali/DynamicTickerText;
.super Landroid/widget/TextView;
.source "DynamicTickerText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ali/DynamicTickerText$100000000;
    }
.end annotation


# instance fields
.field private cc:Landroid/content/Context;

.field h:Landroid/os/Handler;

.field private mPending:I

.field mRun:Ljava/lang/Runnable;

.field mUpdater:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, Landroid/util/AttributeSet;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/android/systemui/ali/DynamicTickerText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/android/systemui/ali/DynamicTickerText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v6, v5, Lcom/android/systemui/ali/DynamicTickerText;->h:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x64

    iput v6, v5, Lcom/android/systemui/ali/DynamicTickerText;->mUpdater:I

    move-object v5, v0

    new-instance v6, Lcom/android/systemui/ali/DynamicTickerText$100000000;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/android/systemui/ali/DynamicTickerText$100000000;-><init>(Lcom/android/systemui/ali/DynamicTickerText;)V

    iput-object v6, v5, Lcom/android/systemui/ali/DynamicTickerText;->mRun:Ljava/lang/Runnable;

    move-object v5, v0

    const/16 v6, 0x2710

    iput v6, v5, Lcom/android/systemui/ali/DynamicTickerText;->mPending:I

    .line 36
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/android/systemui/ali/DynamicTickerText;->cc:Landroid/content/Context;

    .line 37
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/ali/DynamicTickerText;->h:Landroid/os/Handler;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/ali/DynamicTickerText;->mRun:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/ali/DynamicTickerText;->h:Landroid/os/Handler;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/ali/DynamicTickerText;->mRun:Ljava/lang/Runnable;

    move-object v7, v0

    iget v7, v7, Lcom/android/systemui/ali/DynamicTickerText;->mPending:I

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v5

    return-void
.end method

.method private getCalculationIcon(I)I
    .locals 13

    .prologue
    .line 42
    move-object v0, p0

    move v1, p1

    const/16 v8, 0x12b

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    mul-int/2addr v8, v9

    const/16 v9, 0x24b

    move v10, v1

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    const/16 v9, 0x90

    move v10, v1

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    const/16 v9, 0x3e8

    div-int/lit16 v8, v8, 0x3e8

    int-to-double v8, v8

    move-wide v3, v8

    .line 43
    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/systemui/ali/DynamicTickerText;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v0

    const-string v10, "dark_text_color"

    const-string v11, "color"

    move-object v12, v0

    iget-object v12, v12, Lcom/android/systemui/ali/DynamicTickerText;->cc:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/android/systemui/ali/DynamicTickerText;->resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move v5, v8

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/systemui/ali/DynamicTickerText;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v0

    const-string v10, "white_text_color"

    const-string v11, "color"

    move-object v12, v0

    iget-object v12, v12, Lcom/android/systemui/ali/DynamicTickerText;->cc:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/android/systemui/ali/DynamicTickerText;->resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move v6, v8

    .line 45
    move-wide v8, v3

    const/16 v10, 0x80

    int-to-double v10, v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    move v8, v5

    :goto_0
    move v0, v8

    return v0

    :cond_0
    move v8, v6

    goto :goto_0
.end method

.method private resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/ali/DynamicTickerText;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v0, v5

    return v0
.end method


# virtual methods
.method public updateTickerColor()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/ali/DynamicTickerText;->cc:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dsb_pending"

    const/16 v8, 0x2710

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/ali/DynamicTickerText;->mPending:I

    .line 57
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/ali/DynamicTickerText;->cc:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dynamic_icon"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move v2, v5

    move-object v5, v0

    move v6, v2

    invoke-direct {v5, v6}, Lcom/android/systemui/ali/DynamicTickerText;->getCalculationIcon(I)I

    move-result v5

    move v3, v5

    .line 59
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/ali/DynamicTickerText;->cc:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dsb_updater"

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/ali/DynamicTickerText;->mUpdater:I

    .line 60
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/android/systemui/ali/DynamicTickerText;->setTextColor(I)V

    .line 61
    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/ali/DynamicTickerText;->invalidate()V

    return-void
.end method
