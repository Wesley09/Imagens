.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3323
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3326
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowWorldClock:Z

    if-eqz v3, :cond_1

    .line 3327
    const-string v3, "PhoneStatusBar"

    const-string v4, "onClick() : mClock clicked"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3330
    .local v1, "deviceType":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "tablet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3331
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SHOW_DATE_TIME_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3332
    .local v2, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3345
    .end local v1    # "deviceType":Ljava/lang/String;
    .end local v2    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3334
    .restart local v1    # "deviceType":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SHOW_WORLDCLOCK_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3335
    .restart local v2    # "i":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.clockpackage"

    const-string v4, "com.sec.android.app.clockpackage.worldclock.ToWorldClockReceiver"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3337
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3338
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 3342
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "deviceType":Ljava/lang/String;
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.QUICK_CLOCK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto :goto_0
.end method
