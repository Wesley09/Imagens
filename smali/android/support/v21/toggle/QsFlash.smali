.class public Landroid/support/v21/toggle/QsFlash;
.super Landroid/support/v21/toggle/QuickSettingsView;
.source "QsFlash.java"


# instance fields
.field mCam:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v21/toggle/QuickSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v21/toggle/QsFlash;->updateState()V

    return-void
.end method

.method private updateState()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsFlash;->isFlashSupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    move-object v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsFlash;->setVisibility(I)V

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsFlash;->getActiveStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 69
    :goto_1
    move-object v2, v0

    const-string v3, "Flash Light"

    move-object v4, v0

    const-string v5, "qs_color"

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsFlash;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v21/toggle/QsFlash;->updateQsTitle(Ljava/lang/String;I)V

    goto :goto_0

    .line 63
    :pswitch_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsFlash;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    const-string v5, "qs_flash_on"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsFlash;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsFlash;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 64
    goto :goto_1

    .line 66
    :pswitch_1
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsFlash;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    const-string v5, "qs_flash_off"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsFlash;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsFlash;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 67
    goto :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected handleLongClick()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method isFlashSupport()Z
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v3, Landroid/content/pm/PackageManager;->FEATURE_CAMERA_FLASH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/support/v21/toggle/QuickSettingsView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/support/v21/toggle/QuickSettingsView;->onDetachedFromWindow()V

    return-void
.end method

.method protected toggleState()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsFlash;->isFlashSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsFlash;->getActiveStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 50
    :goto_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v21/toggle/QsFlash;->updateState()V

    :goto_1
    return-void

    .line 30
    :pswitch_0
    move-object v4, v0

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v21/toggle/QsFlash;->mCam:Landroid/hardware/Camera;

    .line 31
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsFlash;->mCam:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    move-object v2, v4

    .line 32
    move-object v4, v2

    const-string v5, "torch"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 33
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsFlash;->mCam:Landroid/hardware/Camera;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 34
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsFlash;->mCam:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 35
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsFlash;->setActive(I)V

    .line 36
    goto :goto_0

    .line 38
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsFlash;->mCam:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    .line 39
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsFlash;->mCam:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 40
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsFlash;->setActive(I)V

    .line 41
    goto :goto_0

    .line 46
    :cond_0
    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsFlash;->setVisibility(I)V

    .line 47
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QsFlash;->mCam:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 48
    goto :goto_1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
