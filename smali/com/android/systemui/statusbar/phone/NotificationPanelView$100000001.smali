.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000001;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/serajr/utils/BlurUtils$BlurTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000001;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000001;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000001;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public blurTaskDone(Landroid/graphics/Bitmap;)V
    .locals 9
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
    .line 512
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-eqz v5, :cond_2

    .line 519
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000001;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 521
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000001;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 522
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 527
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$BlurTask;->getRealScreenDimensions()[I

    move-result-object v5

    move-object v2, v5

    .line 528
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000001;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 529
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$L1000011()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v6, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 530
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$L1000011()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v6, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 531
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$L1000011()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 534
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v5

    .line 535
    move-object v5, v3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$L1000009()Landroid/graphics/ColorFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 538
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$L1000011()Landroid/widget/FrameLayout;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 541
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    const-string v6, "blur_applied"

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 553
    :goto_0
    return-void

    .line 550
    :cond_2
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    sget v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurLightColorFilter:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 553
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurredView:Landroid/widget/FrameLayout;

    const-string v6, "error"

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dominantColor(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 562
    move-object v0, p0

    move v1, p1

    move v5, v1

    invoke-static {v5}, Lcom/serajr/utils/DisplayUtils;->getColorLightness(I)D

    move-result-wide v5

    move-wide v2, v5

    .line 564
    move-wide v5, v2

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_3

    move v5, v1

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_3

    .line 570
    move-wide v5, v2

    const-wide v7, 0x3fd51eb851eb851fL    # 0.33

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_1

    .line 573
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    sget v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurLightColorFilter:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$S1000009(Landroid/graphics/ColorFilter;)V

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    move-wide v5, v2

    const-wide v7, 0x3fd5c28f5c28f5c3L    # 0.34

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_2

    move-wide v5, v2

    const-wide v7, 0x3fe51eb851eb851fL    # 0.66

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_2

    .line 578
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    sget v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurMixedColorFilter:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$S1000009(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 580
    :cond_2
    move-wide v5, v2

    const-wide v7, 0x3fe570a3d70a3d71L    # 0.67

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_0

    move-wide v5, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_0

    .line 583
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    sget v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurDarkColorFilter:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$S1000009(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 594
    :cond_3
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    sget v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlurMixedColorFilter:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$S1000009(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
