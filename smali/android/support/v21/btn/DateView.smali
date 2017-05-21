.class public Landroid/support/v21/btn/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/btn/DateView$100000000;
    }
.end annotation


# instance fields
.field private br:Landroid/content/BroadcastReceiver;

.field mFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const-string v5, "EEEE, dd MMMM YYYY"

    iput-object v5, v4, Landroid/support/v21/btn/DateView;->mFormat:Ljava/lang/String;

    .line 16
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "format"

    invoke-interface {v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v21/btn/DateView;->mFormat:Ljava/lang/String;

    .line 17
    move-object v4, v0

    new-instance v5, Ljava/text/SimpleDateFormat;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/DateView;->mFormat:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v21/btn/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    move-object v4, v0

    new-instance v5, Landroid/support/v21/btn/DateView$100000000;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v21/btn/DateView$100000000;-><init>(Landroid/support/v21/btn/DateView;)V

    iput-object v5, v4, Landroid/support/v21/btn/DateView;->br:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 36
    new-instance v4, Landroid/content/IntentFilter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.intent.action.DATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 37
    move-object v4, v2

    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    move-object v4, v2

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    move-object v4, v2

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    move-object v4, v2

    const-string v5, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/btn/DateView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/DateView;->br:Landroid/content/BroadcastReceiver;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 49
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/btn/DateView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/DateView;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
