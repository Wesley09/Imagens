.class Landroid/support/v21/btn/AlarmBtn$100000000;
.super Landroid/content/BroadcastReceiver;
.source "AlarmBtn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/btn/AlarmBtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/btn/AlarmBtn;


# direct methods
.method constructor <init>(Landroid/support/v21/btn/AlarmBtn;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/btn/AlarmBtn$100000000;->this$0:Landroid/support/v21/btn/AlarmBtn;

    return-void
.end method

.method static access$0(Landroid/support/v21/btn/AlarmBtn$100000000;)Landroid/support/v21/btn/AlarmBtn;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/AlarmBtn$100000000;->this$0:Landroid/support/v21/btn/AlarmBtn;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 27
    move-object v6, v2

    const-string v7, "alarmSet"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    :goto_0
    move v4, v6

    .line 28
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/AlarmBtn$100000000;->this$0:Landroid/support/v21/btn/AlarmBtn;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v21/btn/AlarmBtn;->setVisibility(I)V

    .line 29
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/AlarmBtn$100000000;->this$0:Landroid/support/v21/btn/AlarmBtn;

    invoke-virtual {v6}, Landroid/support/v21/btn/AlarmBtn;->invalidate()V

    .line 30
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/AlarmBtn$100000000;->this$0:Landroid/support/v21/btn/AlarmBtn;

    invoke-static {v6}, Landroid/support/v21/btn/AlarmBtn;->access$L1000000(Landroid/support/v21/btn/AlarmBtn;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "jj_alarm"

    move v8, v4

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v6

    :cond_0
    return-void

    .line 27
    :cond_1
    const/16 v6, 0x8

    goto :goto_0
.end method
