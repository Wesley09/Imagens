.class Landroid/support/v21/btn/AlarmBtn$AlarmObserve;
.super Landroid/database/ContentObserver;
.source "AlarmBtn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/btn/AlarmBtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "AlarmObserve"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/btn/AlarmBtn;


# direct methods
.method public constructor <init>(Landroid/support/v21/btn/AlarmBtn;Landroid/os/Handler;)V
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/btn/AlarmBtn$AlarmObserve;->this$0:Landroid/support/v21/btn/AlarmBtn;

    return-void
.end method

.method static access$0(Landroid/support/v21/btn/AlarmBtn$AlarmObserve;)Landroid/support/v21/btn/AlarmBtn;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/AlarmBtn$AlarmObserve;->this$0:Landroid/support/v21/btn/AlarmBtn;

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
    .line 72
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/btn/AlarmBtn$AlarmObserve;->this$0:Landroid/support/v21/btn/AlarmBtn;

    invoke-virtual {v2}, Landroid/support/v21/btn/AlarmBtn;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "jj_alarm"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 67
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/AlarmBtn$AlarmObserve;->this$0:Landroid/support/v21/btn/AlarmBtn;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/btn/AlarmBtn$AlarmObserve;->this$0:Landroid/support/v21/btn/AlarmBtn;

    invoke-virtual {v4}, Landroid/support/v21/btn/AlarmBtn;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "jj_alarm"

    const/16 v6, 0x8

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v21/btn/AlarmBtn;->setVisibility(I)V

    .line 68
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/AlarmBtn$AlarmObserve;->this$0:Landroid/support/v21/btn/AlarmBtn;

    invoke-virtual {v3}, Landroid/support/v21/btn/AlarmBtn;->invalidate()V

    return-void
.end method
