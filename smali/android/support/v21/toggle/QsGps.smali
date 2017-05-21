.class public Landroid/support/v21/toggle/QsGps;
.super Landroid/support/v21/toggle/QuickSettingsView;
.source "QsGps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/toggle/QsGps$Observe;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v21/toggle/QuickSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v4, Landroid/support/v21/toggle/QsGps$Observe;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v21/toggle/QsGps$Observe;-><init>(Landroid/support/v21/toggle/QsGps;)V

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsGps$Observe;->o()V

    .line 63
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsGps;->updateState()V

    return-void
.end method


# virtual methods
.method getGpsState()Z
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsGps;->cr()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

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

    const-string v6, "android.settings.LOCATION_SOURCE_SETTINGS"

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

.method protected toggleState()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsGps;->cr()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsGps;->getGpsState()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public updateState()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsGps;->getGpsState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsGps;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    const-string v5, "qs_gps_on"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsGps;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsGps;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 32
    :goto_0
    move-object v2, v0

    const-string v3, "Gps"

    move-object v4, v0

    const-string v5, "qs_color"

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsGps;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v21/toggle/QsGps;->updateQsTitle(Ljava/lang/String;I)V

    return-void

    .line 29
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsGps;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    const-string v5, "qs_gps_off"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsGps;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsGps;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
