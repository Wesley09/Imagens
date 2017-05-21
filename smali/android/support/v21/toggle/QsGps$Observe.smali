.class Landroid/support/v21/toggle/QsGps$Observe;
.super Landroid/database/ContentObserver;
.source "QsGps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/toggle/QsGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "Observe"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/toggle/QsGps;


# direct methods
.method constructor <init>(Landroid/support/v21/toggle/QsGps;)V
    .locals 7

    .prologue
    .line 36
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

    iput-object v4, v3, Landroid/support/v21/toggle/QsGps$Observe;->this$0:Landroid/support/v21/toggle/QsGps;

    return-void
.end method

.method static access$0(Landroid/support/v21/toggle/QsGps$Observe;)Landroid/support/v21/toggle/QsGps;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsGps$Observe;->this$0:Landroid/support/v21/toggle/QsGps;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method o()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsGps$Observe;->this$0:Landroid/support/v21/toggle/QsGps;

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsGps;->cr()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

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
    .line 43
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 44
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsGps$Observe;->this$0:Landroid/support/v21/toggle/QsGps;

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsGps;->updateState()V

    return-void
.end method
