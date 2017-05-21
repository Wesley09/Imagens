.class Lcom/serajr/blurred/ngeblur$100000000;
.super Ljava/lang/Object;
.source "ngeblur.java"

# interfaces
.implements Lcom/serajr/utils/BlurUtils$BlurTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serajr/blurred/ngeblur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blurTaskDone(Landroid/graphics/Bitmap;)V
    .locals 3
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
    .line 174
    if-eqz p1, :cond_2

    .line 181
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object v1, Lcom/serajr/blurred/ngeblur;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 183
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lcom/serajr/blurred/ngeblur;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 189
    :cond_0
    invoke-static {}, Lcom/serajr/blurred/ngeblur$BlurTask;->getRealScreenDimensions()[I

    move-result-object v0

    .line 190
    sget-object v1, Lcom/serajr/blurred/ngeblur;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 191
    # getter for: Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000009()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 192
    :cond_1
    # getter for: Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000009()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    # getter for: Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000009()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 196
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    # getter for: Lcom/serajr/blurred/ngeblur;->mColorFilter:Landroid/graphics/ColorFilter;
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000004()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 200
    # getter for: Lcom/serajr/blurred/ngeblur;->mInnerBlurredView:Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000009()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    const-string v1, "blur_applied"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_2
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurLightColorFilter:I
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000007()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 215
    sget-object v0, Lcom/serajr/blurred/ngeblur;->mBlurredView:Landroid/widget/FrameLayout;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dominantColor(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 224
    invoke-static {p1}, Lcom/serajr/utils/DisplayUtils;->getColorLightness(I)D

    move-result-wide v0

    .line 226
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_3

    int-to-double v2, p1

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_3

    .line 232
    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_1

    .line 235
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurLightColorFilter:I
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000007()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0}, Lcom/serajr/blurred/ngeblur;->access$S1000004(Landroid/graphics/ColorFilter;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const-wide v2, 0x3fd5c28f5c28f5c3L    # 0.34

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    const-wide v2, 0x3fe51eb851eb851fL    # 0.66

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_2

    .line 240
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurMixedColorFilter:I
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000006()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0}, Lcom/serajr/blurred/ngeblur;->access$S1000004(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 242
    :cond_2
    const-wide v2, 0x3fe570a3d70a3d71L    # 0.67

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_0

    .line 245
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurDarkColorFilter:I
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000005()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0}, Lcom/serajr/blurred/ngeblur;->access$S1000004(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 256
    :cond_3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    # getter for: Lcom/serajr/blurred/ngeblur;->mBlurMixedColorFilter:I
    invoke-static {}, Lcom/serajr/blurred/ngeblur;->access$L1000006()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0}, Lcom/serajr/blurred/ngeblur;->access$S1000004(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
