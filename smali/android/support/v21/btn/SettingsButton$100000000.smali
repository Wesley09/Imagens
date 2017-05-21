.class Landroid/support/v21/btn/SettingsButton$100000000;
.super Ljava/lang/Object;
.source "SettingsButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/btn/SettingsButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/btn/SettingsButton;


# direct methods
.method constructor <init>(Landroid/support/v21/btn/SettingsButton;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/btn/SettingsButton$100000000;->this$0:Landroid/support/v21/btn/SettingsButton;

    return-void
.end method

.method static access$0(Landroid/support/v21/btn/SettingsButton$100000000;)Landroid/support/v21/btn/SettingsButton;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/SettingsButton$100000000;->this$0:Landroid/support/v21/btn/SettingsButton;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/btn/SettingsButton$100000000;->this$0:Landroid/support/v21/btn/SettingsButton;

    invoke-virtual {v9}, Landroid/support/v21/btn/SettingsButton;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 23
    new-instance v9, Landroid/content/Intent;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "android.settings.SETTINGS"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v9

    .line 24
    move-object v9, v3

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v9

    .line 25
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/btn/SettingsButton$100000000;->this$0:Landroid/support/v21/btn/SettingsButton;

    invoke-static {v9}, Landroid/support/v21/btn/SettingsButton;->access$L1000000(Landroid/support/v21/btn/SettingsButton;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.android.systemui"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 27
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Landroid/support/v21/btn/SettingsButton$100000000;->this$0:Landroid/support/v21/btn/SettingsButton;

    invoke-static {v9}, Landroid/support/v21/btn/SettingsButton;->access$L1000000(Landroid/support/v21/btn/SettingsButton;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "statusbar"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/StatusBarManager;

    invoke-virtual {v9}, Landroid/app/StatusBarManager;->collapsePanels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/btn/SettingsButton$100000000;->this$0:Landroid/support/v21/btn/SettingsButton;

    invoke-static {v9}, Landroid/support/v21/btn/SettingsButton;->access$L1000000(Landroid/support/v21/btn/SettingsButton;)Landroid/content/Context;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    :goto_1
    return-void

    .line 27
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 31
    :try_start_1
    const-string v9, "android.app.StatusBarManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    move-object v5, v9

    .line 32
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/btn/SettingsButton$100000000;->this$0:Landroid/support/v21/btn/SettingsButton;

    invoke-static {v9}, Landroid/support/v21/btn/SettingsButton;->access$L1000000(Landroid/support/v21/btn/SettingsButton;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "statusbar"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .line 33
    move-object v9, v5

    const-string v10, "collapse"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v7, v9

    .line 34
    move-object v9, v7

    move-object v10, v6

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    :goto_2
    goto :goto_0

    :catch_1
    move-exception v9

    move-object v5, v9

    goto :goto_2

    .line 43
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/btn/SettingsButton$100000000;->this$0:Landroid/support/v21/btn/SettingsButton;

    invoke-static {v9}, Landroid/support/v21/btn/SettingsButton;->access$L1000000(Landroid/support/v21/btn/SettingsButton;)Landroid/content/Context;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
