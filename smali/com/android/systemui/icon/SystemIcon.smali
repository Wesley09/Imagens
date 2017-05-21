.class public Lcom/android/systemui/icon/SystemIcon;
.super Landroid/widget/FrameLayout;
.source "SystemIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/icon/SystemIcon$100000000;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field mRun:Ljava/lang/Runnable;

.field private updater:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 67
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

    iput-object v5, v4, Lcom/android/systemui/icon/SystemIcon;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    new-instance v5, Lcom/android/systemui/icon/SystemIcon$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/android/systemui/icon/SystemIcon$100000000;-><init>(Lcom/android/systemui/icon/SystemIcon;)V

    iput-object v5, v4, Lcom/android/systemui/icon/SystemIcon;->mRun:Ljava/lang/Runnable;

    .line 68
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/icon/SystemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "dsb_update_interval"

    const-string v8, "integer"

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/icon/SystemIcon;->resId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v4, Lcom/android/systemui/icon/SystemIcon;->updater:I

    .line 69
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/icon/SystemIcon;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/icon/SystemIcon;->mRun:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/icon/SystemIcon;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/icon/SystemIcon;->mRun:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    return-void
.end method

.method static synthetic access$1000002(Lcom/android/systemui/icon/SystemIcon;I)I
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/android/systemui/icon/SystemIcon;->getColoringIconText(I)I

    move-result v4

    move v0, v4

    return v0
.end method

.method static synthetic access$1000003(Lcom/android/systemui/icon/SystemIcon;I)I
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/android/systemui/icon/SystemIcon;->getColoringIconImage(I)I

    move-result v4

    move v0, v4

    return v0
.end method

.method static synthetic access$L1000001(Lcom/android/systemui/icon/SystemIcon;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/android/systemui/icon/SystemIcon;->updater:I

    move v0, v3

    return v0
.end method

.method static synthetic access$S1000001(Lcom/android/systemui/icon/SystemIcon;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/android/systemui/icon/SystemIcon;->updater:I

    return-void
.end method

.method private getColoringIconImage(I)I
    .locals 10

    .prologue
    .line 55
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/systemui/icon/SystemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v7, v0

    const-string v8, "dark_icon"

    const-string v9, "color"

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/icon/SystemIcon;->resId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move v3, v6

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/systemui/icon/SystemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v7, v0

    const-string v8, "light_icon"

    const-string v9, "color"

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/icon/SystemIcon;->resId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move v4, v6

    .line 57
    move v6, v1

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    move v6, v3

    :goto_0
    move v0, v6

    return v0

    :cond_0
    move v6, v4

    goto :goto_0
.end method

.method private getColoringIconText(I)I
    .locals 10

    .prologue
    .line 48
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/systemui/icon/SystemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v7, v0

    const-string v8, "dark_text"

    const-string v9, "color"

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/icon/SystemIcon;->resId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move v3, v6

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/systemui/icon/SystemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v7, v0

    const-string v8, "light_text"

    const-string v9, "color"

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/icon/SystemIcon;->resId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move v4, v6

    .line 50
    move v6, v1

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    move v6, v3

    :goto_0
    move v0, v6

    return v0

    :cond_0
    move v6, v4

    goto :goto_0
.end method

.method private resId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/systemui/icon/SystemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/systemui/icon/SystemIcon;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method
