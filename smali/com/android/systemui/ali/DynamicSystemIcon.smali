.class public Lcom/android/systemui/ali/DynamicSystemIcon;
.super Landroid/widget/FrameLayout;
.source "DynamicSystemIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ali/DynamicSystemIcon$100000000;
    }
.end annotation


# instance fields
.field private cc:Landroid/content/Context;

.field private h:Landroid/os/Handler;

.field private mColor:I

.field mIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mPending:I

.field mRun:Ljava/lang/Runnable;

.field private mUpdater:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const/16 v5, 0x64

    iput v5, v4, Lcom/android/systemui/ali/DynamicSystemIcon;->mUpdater:I

    move-object v4, v0

    const/16 v5, 0x2710

    iput v5, v4, Lcom/android/systemui/ali/DynamicSystemIcon;->mPending:I

    move-object v4, v0

    new-instance v5, Lcom/android/systemui/ali/DynamicSystemIcon$100000000;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/android/systemui/ali/DynamicSystemIcon$100000000;-><init>(Lcom/android/systemui/ali/DynamicSystemIcon;)V

    iput-object v5, v4, Lcom/android/systemui/ali/DynamicSystemIcon;->mRun:Ljava/lang/Runnable;

    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v5, v4, Lcom/android/systemui/ali/DynamicSystemIcon;->h:Landroid/os/Handler;

    .line 34
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/systemui/ali/DynamicSystemIcon;->cc:Landroid/content/Context;

    .line 35
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/ali/DynamicSystemIcon;->h:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/ali/DynamicSystemIcon;->mRun:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/ali/DynamicSystemIcon;->h:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/ali/DynamicSystemIcon;->mRun:Ljava/lang/Runnable;

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/ali/DynamicSystemIcon;->mPending:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    return-void
.end method

.method static synthetic access$1000006(Lcom/android/systemui/ali/DynamicSystemIcon;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/android/systemui/ali/DynamicSystemIcon;->updateIcon()V

    return-void
.end method

.method static synthetic access$L1000001(Lcom/android/systemui/ali/DynamicSystemIcon;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/android/systemui/ali/DynamicSystemIcon;->mUpdater:I

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000004(Lcom/android/systemui/ali/DynamicSystemIcon;)Landroid/os/Handler;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/ali/DynamicSystemIcon;->h:Landroid/os/Handler;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000001(Lcom/android/systemui/ali/DynamicSystemIcon;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/android/systemui/ali/DynamicSystemIcon;->mUpdater:I

    return-void
.end method

.method static synthetic access$S1000004(Lcom/android/systemui/ali/DynamicSystemIcon;Landroid/os/Handler;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/systemui/ali/DynamicSystemIcon;->h:Landroid/os/Handler;

    return-void
.end method

.method private resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/ali/DynamicSystemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v0, v5

    return v0
.end method

.method private setColorIcon(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 88
    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/ali/DynamicSystemIcon;->mColor:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/ali/DynamicSystemIcon;->getCalculationIcon(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 89
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateIcon()V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/systemui/ali/DynamicSystemIcon;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dynamic_icon"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/ali/DynamicSystemIcon;->mColor:I

    .line 42
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/ali/DynamicSystemIcon;->cc:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dsb_updater"

    const/16 v12, 0x64

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/ali/DynamicSystemIcon;->mUpdater:I

    .line 43
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/ali/DynamicSystemIcon;->cc:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dsb_pending"

    const/16 v12, 0x2710

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/ali/DynamicSystemIcon;->mPending:I

    .line 44
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/systemui/ali/DynamicSystemIcon;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v2, v9

    .line 45
    move-object v9, v2

    if-nez v9, :cond_0

    .line 56
    :goto_0
    return-void

    .line 46
    :cond_0
    :try_start_0
    const-string v9, "android.widget.ImageView"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 47
    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/android/systemui/ali/DynamicSystemIcon;->mColor:I

    invoke-virtual {v10, v11}, Lcom/android/systemui/ali/DynamicSystemIcon;->getCalculationIcon(I)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10, v11}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 48
    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 50
    :cond_1
    :try_start_1
    const-string v9, "android.view.ViewGroup"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 51
    move-object v9, v0

    new-instance v10, Ljava/lang/ref/WeakReference;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v2

    check-cast v12, Landroid/view/ViewGroup;

    invoke-direct {v11, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v9, Lcom/android/systemui/ali/DynamicSystemIcon;->mParent:Ljava/lang/ref/WeakReference;

    .line 52
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/ali/DynamicSystemIcon;->mParent:Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_3

    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/ali/DynamicSystemIcon;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_3

    .line 53
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/ali/DynamicSystemIcon;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    move-object v5, v9

    .line 54
    move-object v9, v0

    new-instance v10, Ljava/util/ArrayList;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lcom/android/systemui/ali/DynamicSystemIcon;->mIcon:Ljava/util/ArrayList;

    .line 55
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    if-ne v9, v10, :cond_2

    goto :goto_0

    .line 46
    :catch_0
    move-exception v9

    move-object v3, v9

    new-instance v9, Ljava/lang/NoClassDefFoundError;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 50
    :catch_1
    move-exception v9

    move-object v4, v9

    new-instance v9, Ljava/lang/NoClassDefFoundError;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 56
    :cond_2
    const/4 v9, 0x0

    move v6, v9

    :goto_1
    move v9, v6

    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    goto/16 :goto_0

    .line 57
    :cond_4
    move-object v9, v5

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 58
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Lcom/android/systemui/ali/DynamicSystemIcon;->setColorIcon(Landroid/view/View;)V

    .line 56
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCalculationIcon(I)I
    .locals 13

    .prologue
    .line 79
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

    .line 80
    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/systemui/ali/DynamicSystemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v0

    const-string v10, "dark_color_filter"

    const-string v11, "color"

    move-object v12, v0

    iget-object v12, v12, Lcom/android/systemui/ali/DynamicSystemIcon;->cc:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/android/systemui/ali/DynamicSystemIcon;->resId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    .line 82
    move v8, v1

    const/4 v9, 0x0

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    move v0, v8

    .line 83
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

.method protected onFinishInflate()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/View;->onFinishInflate()V

    .line 75
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/ali/DynamicSystemIcon;->h:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/ali/DynamicSystemIcon;->mRun:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    return-void
.end method
