.class Landroid/support/v21/toggle/QsRotation$Observe;
.super Landroid/database/ContentObserver;
.source "QsRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/toggle/QsRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "Observe"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/toggle/QsRotation;


# direct methods
.method constructor <init>(Landroid/support/v21/toggle/QsRotation;)V
    .locals 7

    .prologue
    .line 65
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

    iput-object v4, v3, Landroid/support/v21/toggle/QsRotation$Observe;->this$0:Landroid/support/v21/toggle/QsRotation;

    return-void
.end method

.method static access$0(Landroid/support/v21/toggle/QsRotation$Observe;)Landroid/support/v21/toggle/QsRotation;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsRotation$Observe;->this$0:Landroid/support/v21/toggle/QsRotation;

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
    .line 77
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsRotation$Observe;->this$0:Landroid/support/v21/toggle/QsRotation;

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsRotation;->cr()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

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
    .line 72
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 73
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsRotation$Observe;->this$0:Landroid/support/v21/toggle/QsRotation;

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsRotation;->update()V

    return-void
.end method
