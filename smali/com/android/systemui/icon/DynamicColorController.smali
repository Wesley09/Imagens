.class public Lcom/android/systemui/icon/DynamicColorController;
.super Landroid/widget/FrameLayout;
.source "DynamicColorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/icon/DynamicColorController$100000000;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field mR:Ljava/lang/Runnable;

.field updater:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v5, v4, Lcom/android/systemui/icon/DynamicColorController;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    new-instance v5, Lcom/android/systemui/icon/DynamicColorController$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/android/systemui/icon/DynamicColorController$100000000;-><init>(Lcom/android/systemui/icon/DynamicColorController;)V

    iput-object v5, v4, Lcom/android/systemui/icon/DynamicColorController;->mR:Ljava/lang/Runnable;

    .line 49
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/icon/DynamicColorController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "dsb_update_interval"

    const-string v8, "integer"

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/icon/DynamicColorController;->resId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v4, Lcom/android/systemui/icon/DynamicColorController;->updater:I

    .line 50
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/icon/DynamicColorController;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/icon/DynamicColorController;->mR:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/icon/DynamicColorController;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/icon/DynamicColorController;->mR:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    return-void
.end method

.method static synthetic access$1000001(Lcom/android/systemui/icon/DynamicColorController;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/android/systemui/icon/DynamicColorController;->getBackgroundColorChild()V

    return-void
.end method

.method private getBackgroundColorChild()V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/icon/DynamicColorController;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v2, v8

    .line 27
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 29
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v3, v8

    .line 30
    :try_start_0
    const-string v8, "android.graphics.drawable.ColorDrawable"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 32
    move-object v8, v3

    check-cast v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v8

    move v5, v8

    .line 33
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/4 v9, 0x0

    if-ne v8, v9, :cond_1

    move-object v8, v0

    move v9, v5

    invoke-direct {v8, v9}, Lcom/android/systemui/icon/DynamicColorController;->getColoringIcon(I)I

    move-result v8

    :goto_0
    move v6, v8

    .line 34
    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/systemui/icon/DynamicColorController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wow_icon"

    move v10, v6

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v8

    :cond_0
    return-void

    .line 30
    :catch_0
    move-exception v8

    move-object v4, v8

    new-instance v8, Ljava/lang/NoClassDefFoundError;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 33
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private getColoringIcon(I)I
    .locals 8

    .prologue
    .line 41
    move-object v0, p0

    move v1, p1

    move v5, v1

    const/4 v6, 0x0

    if-ne v5, v6, :cond_0

    const/4 v5, -0x1

    move v0, v5

    .line 43
    :goto_0
    return v0

    .line 42
    :cond_0
    const/16 v5, 0x12b

    move v6, v1

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    mul-int/2addr v5, v6

    const/16 v6, 0x24b

    move v7, v1

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    const/16 v6, 0x72

    move v7, v1

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    const/16 v6, 0x3e8

    div-int/lit16 v5, v5, 0x3e8

    int-to-float v5, v5

    move v3, v5

    .line 43
    move v5, v3

    const/16 v6, 0x8a

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    const/high16 v5, -0x1000000

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private resId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/systemui/icon/DynamicColorController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/systemui/icon/DynamicColorController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method
