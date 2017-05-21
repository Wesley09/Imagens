.class public Lcom/android/systemui/ali/DynamicSystemText;
.super Landroid/widget/FrameLayout;
.source "DynamicSystemText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ali/DynamicSystemText$100000000;
    }
.end annotation


# instance fields
.field private cc:Landroid/content/Context;

.field h:Landroid/os/Handler;

.field mPending:I

.field mRun:Ljava/lang/Runnable;

.field mUpdater:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v5, v4, Lcom/android/systemui/ali/DynamicSystemText;->h:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x64

    iput v5, v4, Lcom/android/systemui/ali/DynamicSystemText;->mUpdater:I

    move-object v4, v0

    const/16 v5, 0x2710

    iput v5, v4, Lcom/android/systemui/ali/DynamicSystemText;->mPending:I

    move-object v4, v0

    new-instance v5, Lcom/android/systemui/ali/DynamicSystemText$100000000;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/android/systemui/ali/DynamicSystemText$100000000;-><init>(Lcom/android/systemui/ali/DynamicSystemText;)V

    iput-object v5, v4, Lcom/android/systemui/ali/DynamicSystemText;->mRun:Ljava/lang/Runnable;

    .line 27
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/systemui/ali/DynamicSystemText;->cc:Landroid/content/Context;

    .line 28
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/ali/DynamicSystemText;->h:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/ali/DynamicSystemText;->mRun:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/ali/DynamicSystemText;->h:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/ali/DynamicSystemText;->mRun:Ljava/lang/Runnable;

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/ali/DynamicSystemText;->mPending:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    return-void
.end method

.method private getCalculationIcon(I)I
    .locals 13

    .prologue
    .line 66
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

    .line 67
    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/systemui/ali/DynamicSystemText;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v0

    const-string v10, "dark_text_color"

    const-string v11, "color"

    move-object v12, v0

    iget-object v12, v12, Lcom/android/systemui/ali/DynamicSystemText;->cc:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/android/systemui/ali/DynamicSystemText;->resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move v5, v8

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/systemui/ali/DynamicSystemText;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v0

    const-string v10, "white_text_color"

    const-string v11, "color"

    move-object v12, v0

    iget-object v12, v12, Lcom/android/systemui/ali/DynamicSystemText;->cc:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/android/systemui/ali/DynamicSystemText;->resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move v6, v8

    .line 69
    move v8, v1

    const/4 v9, 0x0

    if-ne v8, v9, :cond_0

    move v8, v6

    move v0, v8

    .line 70
    :goto_0
    return v0

    :cond_0
    move-wide v8, v3

    const/16 v10, 0x80

    int-to-double v10, v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    move v8, v5

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_1
    move v8, v6

    goto :goto_1
.end method

.method private resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/ali/DynamicSystemText;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v0, v5

    return v0
.end method

.method private setTextColor(Landroid/view/View;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    move v7, v2

    invoke-direct {v6, v7}, Lcom/android/systemui/ali/DynamicSystemText;->getCalculationIcon(I)I

    move-result v6

    move v4, v6

    .line 59
    move-object v6, v1

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 60
    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public updateText()V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    move-object/from16 v0, p0

    move-object v12, v0

    iget-object v12, v12, Lcom/android/systemui/ali/DynamicSystemText;->cc:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dynamic_icon"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    move v2, v12

    .line 35
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/android/systemui/ali/DynamicSystemText;->cc:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "dsb_updater"

    const/16 v15, 0x64

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    iput v13, v12, Lcom/android/systemui/ali/DynamicSystemText;->mUpdater:I

    .line 36
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/android/systemui/ali/DynamicSystemText;->cc:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "dsb_pending"

    const/16 v15, 0x2710

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    iput v13, v12, Lcom/android/systemui/ali/DynamicSystemText;->mPending:I

    .line 37
    move-object v12, v0

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/systemui/ali/DynamicSystemText;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v3, v12

    .line 38
    move-object v12, v3

    if-nez v12, :cond_0

    .line 47
    :goto_0
    return-void

    .line 39
    :cond_0
    :try_start_0
    const-string v12, "android.widget.TextView"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 40
    move-object v12, v0

    move-object v13, v3

    move v14, v2

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/ali/DynamicSystemText;->setTextColor(Landroid/view/View;I)V

    .line 41
    move-object v12, v3

    invoke-virtual {v12}, Landroid/view/View;->invalidate()V

    .line 43
    :cond_1
    :try_start_1
    const-string v12, "android.view.ViewGroup"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 44
    move-object v12, v3

    check-cast v12, Landroid/view/ViewGroup;

    move-object v6, v12

    .line 45
    move-object v12, v6

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move v7, v12

    .line 46
    move v12, v7

    const/4 v13, 0x0

    if-ne v12, v13, :cond_2

    goto :goto_0

    .line 39
    :catch_0
    move-exception v12

    move-object v4, v12

    new-instance v12, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v4

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v12

    .line 43
    :catch_1
    move-exception v12

    move-object v5, v12

    new-instance v12, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v5

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v12

    .line 47
    :cond_2
    const/4 v12, 0x0

    move v8, v12

    :goto_1
    move v12, v8

    move v13, v7

    if-lt v12, v13, :cond_4

    :cond_3
    goto :goto_0

    .line 48
    :cond_4
    move-object v12, v6

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    .line 49
    :try_start_2
    const-string v12, "android.widget.TextView"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v12

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 50
    move-object v12, v0

    move-object v13, v9

    move v14, v2

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/ali/DynamicSystemText;->setTextColor(Landroid/view/View;I)V

    .line 47
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 49
    :catch_2
    move-exception v12

    move-object v10, v12

    new-instance v12, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v10

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v12
.end method
