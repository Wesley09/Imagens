.class public Landroid/support/v21/toggle/Brightness;
.super Landroid/widget/SeekBar;
.source "Brightness.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/toggle/Brightness$BrightnessObserve;
    }
.end annotation


# instance fields
.field cc:Landroid/content/Context;

.field private val:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const v5, 0x3dcccccd    # 0.1f

    iput v5, v4, Landroid/support/v21/toggle/Brightness;->val:F

    .line 38
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/toggle/Brightness;->cc:Landroid/content/Context;

    .line 39
    move-object v4, v0

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/Brightness;->setMax(I)V

    .line 40
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/Brightness;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 41
    new-instance v4, Landroid/support/v21/toggle/Brightness$BrightnessObserve;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v21/toggle/Brightness$BrightnessObserve;-><init>(Landroid/support/v21/toggle/Brightness;)V

    invoke-virtual {v4}, Landroid/support/v21/toggle/Brightness$BrightnessObserve;->observe()V

    .line 42
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/toggle/Brightness;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "qs_thumb"

    const-string v8, "drawable"

    invoke-direct {v6, v7, v8}, Landroid/support/v21/toggle/Brightness;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/Brightness;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 43
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/Brightness;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/toggle/Brightness;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "qs_brightness"

    const-string v8, "color"

    invoke-direct {v6, v7, v8}, Landroid/support/v21/toggle/Brightness;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 44
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/Brightness;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/Brightness;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v21/toggle/Brightness;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            "IZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move v6, v2

    int-to-float v6, v6

    iput v6, v5, Landroid/support/v21/toggle/Brightness;->val:F

    .line 63
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/toggle/Brightness;->postInvalidate()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/Brightness;->cc:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    move-object v5, v0

    iget v5, v5, Landroid/support/v21/toggle/Brightness;->val:F

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    .line 76
    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method

.method updateBrightness()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/Brightness;->cc:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    .line 56
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/Brightness;->setProgress(I)V

    return-void
.end method
