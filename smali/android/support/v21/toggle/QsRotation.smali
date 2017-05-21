.class public Landroid/support/v21/toggle/QsRotation;
.super Landroid/support/v21/toggle/QuickSettingsView;
.source "QsRotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/toggle/QsRotation$Observe;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v21/toggle/QuickSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const-string v5, "accelerometer_rotation"

    iput-object v5, v4, Landroid/support/v21/toggle/QsRotation;->a:Ljava/lang/String;

    .line 87
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsRotation;->update()V

    .line 88
    new-instance v4, Landroid/support/v21/toggle/QsRotation$Observe;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v21/toggle/QsRotation$Observe;-><init>(Landroid/support/v21/toggle/QsRotation;)V

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsRotation$Observe;->o()V

    return-void
.end method

.method private updateIconAndText()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    const/4 v4, 0x0

    move v2, v4

    .line 52
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsRotation;->getActiveStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 59
    :goto_0
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/toggle/QsRotation;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsRotation;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 60
    move-object v4, v0

    const-string v5, "Rotation"

    move-object v6, v0

    const-string v7, "qs_color"

    invoke-virtual {v6, v7}, Landroid/support/v21/toggle/QsRotation;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsRotation;->updateQsTitle(Ljava/lang/String;I)V

    return-void

    .line 54
    :pswitch_0
    move-object v4, v0

    const-string v5, "qs_rotate_on"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsRotation;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 55
    goto :goto_0

    .line 57
    :pswitch_1
    move-object v4, v0

    const-string v5, "qs_rotate_off"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsRotation;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected handleLongClick()Z
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 16
    move-object v4, v2

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 17
    move-object v4, v2

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 18
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 19
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method setRotate(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsRotation;->cr()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    move v5, v1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    return-void
.end method

.method protected toggleState()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsRotation;->getActiveStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 33
    :goto_0
    return-void

    .line 28
    :pswitch_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsRotation;->setRotate(I)V

    .line 29
    goto :goto_0

    .line 32
    :pswitch_1
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsRotation;->setRotate(I)V

    .line 33
    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsRotation;->cr()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    .line 41
    move v4, v2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 42
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsRotation;->setActive(I)V

    .line 46
    :goto_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v21/toggle/QsRotation;->updateIconAndText()V

    return-void

    .line 44
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsRotation;->setActive(I)V

    goto :goto_0
.end method
