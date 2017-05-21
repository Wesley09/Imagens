.class public Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "MemoryQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-MemoryQuickSettingButton"


# instance fields
.field private NumberOfApplications:I

.field private h:Landroid/app/ActivityManager;

.field private i:Landroid/content/pm/PackageManager;

.field private mContext:Landroid/content/Context;

.field private mSafeApplications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const v2, 0x7f0c01e8

    const v1, 0x7f0c01e8

    const/4 v5, 0x0

    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "custom_toggles"

    const v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const v9, 0x1

    if-eq v9, v8, :cond_0

    const v3, 0x7f020338

    const v4, 0x7f020338

    goto :goto_0

    :cond_0
    const v3, 0x302002d

    const v4, 0x302002d

    :goto_0
    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->initLayout(IIIIIII)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mContext:Landroid/content/Context;

    :goto_1
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    return-void

    :cond_1
    const v0, 0x7f020338

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->initLayout(III)V

    goto :goto_1
.end method

.method private mCloseApps()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v2, 0x32

    const v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v8, :cond_0

    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mProtectedApps(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v12, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v13, 0x0

    invoke-direct {p0, v11, v10, v12, v13}, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mRemoveApp(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_0
.end method

.method private mClosePanels()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    return-void
.end method

.method private mCreateMsg(Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private mEraseMemory()Z
    .locals 15

    const-wide/32 v11, 0x100000

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->h:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->i:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->h:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->h:Landroid/app/ActivityManager;

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long v6, v0, v11

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->h:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, v4, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->NumberOfApplications:I

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->h:Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v1, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v1, v11

    sub-long v1, v6, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mToastMessage()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->i:Landroid/content/pm/PackageManager;

    iget v9, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    if-eq v9, v10, :cond_1

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->h:Landroid/app/ActivityManager;

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private mExcludedApps()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    const-string v1, "com.android.providers.applications"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    const-string v1, "com.sec.android.app.clockpackage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    const-string v1, "com.sec.android.widgetapp.alarmclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    const-string v1, "com.sec.phone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    const-string v1, "com.android.phone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    const-string v1, "com.android.defcontainer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    const-string v1, "com.sec.android.app.launcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    const-string v1, "com.sec.android.app.factorymode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    const-string v1, "android.process.acore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private mProtectedApps(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mSafeApplications:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mRemoveApp(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/app/ActivityManager;->removeTask(II)Z

    if-eqz p4, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private mStartVibrate(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-wide/16 v3, 0x1

    if-eqz p1, :cond_0

    const-wide/16 v3, 0xf

    :cond_0
    invoke-virtual {v2, v3, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method private mToastMessage()V
    .locals 6

    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->NumberOfApplications:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "Killed Tasks: "

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mCreateMsg(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mExcludedApps()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->setActivateStatus(I)V

    return-void
.end method

.method public onClick(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mClosePanels()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mEraseMemory()Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MemoryQuickSettingButton;->mStartVibrate(Z)V

    return-void
.end method

.method public onLongClick()V
    .locals 2

    const-string v0, "com.sec.android.app.taskmanager"

    const-string v1, "com.sec.android.app.taskmanager.activity.TaskManagerActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/BatteryQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
