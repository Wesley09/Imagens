.class Landroid/support/v21/toggle/Brightness$BrightnessObserve;
.super Landroid/database/ContentObserver;
.source "Brightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/toggle/Brightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "BrightnessObserve"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/toggle/Brightness;


# direct methods
.method constructor <init>(Landroid/support/v21/toggle/Brightness;)V
    .locals 7

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    new-instance v4, Landroid/os/Handler;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/toggle/Brightness$BrightnessObserve;->this$0:Landroid/support/v21/toggle/Brightness;

    return-void
.end method

.method static access$0(Landroid/support/v21/toggle/Brightness$BrightnessObserve;)Landroid/support/v21/toggle/Brightness;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/Brightness$BrightnessObserve;->this$0:Landroid/support/v21/toggle/Brightness;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method observe()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/Brightness$BrightnessObserve;->this$0:Landroid/support/v21/toggle/Brightness;

    iget-object v2, v2, Landroid/support/v21/toggle/Brightness;->cc:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 25
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/Brightness$BrightnessObserve;->this$0:Landroid/support/v21/toggle/Brightness;

    invoke-virtual {v3}, Landroid/support/v21/toggle/Brightness;->updateBrightness()V

    return-void
.end method
