.class public Landroid/support/v21/toggle/QsData;
.super Landroid/support/v21/toggle/QuickSettingsView;
.source "QsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/toggle/QsData$100000000;
    }
.end annotation


# instance fields
.field private h:Landroid/os/Handler;

.field mConect:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v21/toggle/QuickSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    move-object v6, v0

    move-object v7, v1

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, v6, Landroid/support/v21/toggle/QsData;->mConect:Landroid/net/ConnectivityManager;

    .line 57
    move-object v6, v0

    new-instance v7, Landroid/os/Handler;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v7, v6, Landroid/support/v21/toggle/QsData;->h:Landroid/os/Handler;

    .line 58
    new-instance v6, Landroid/support/v21/toggle/QsData$100000000;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v21/toggle/QsData$100000000;-><init>(Landroid/support/v21/toggle/QsData;)V

    move-object v4, v6

    .line 68
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/toggle/QsData;->h:Landroid/os/Handler;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/toggle/QsData;->h:Landroid/os/Handler;

    move-object v7, v4

    const/16 v8, 0x1388

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    .line 70
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v21/toggle/QsData;->getConect()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v6, v7}, Landroid/support/v21/toggle/QsData;->setActive(I)V

    .line 71
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/toggle/QsData;->updateState()V

    return-void

    .line 70
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method static synthetic access$L1000000(Landroid/support/v21/toggle/QsData;)Landroid/os/Handler;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsData;->h:Landroid/os/Handler;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Landroid/support/v21/toggle/QsData;Landroid/os/Handler;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/toggle/QsData;->h:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method getConect()Z
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsData;->mConect:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

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

    const-string v6, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 16
    move-object v4, v2

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 17
    move-object v4, v2

    const/high16 v5, 0x2000000

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsData;->getConect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsData;->mConect:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 46
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsData;->setActive(I)V

    .line 51
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsData;->updateState()V

    return-void

    .line 48
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsData;->mConect:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 49
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsData;->setActive(I)V

    goto :goto_0
.end method

.method public updateState()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsData;->getActiveStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 36
    :goto_0
    move-object v2, v0

    const-string v3, "Data"

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsData;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v0

    const-string v6, "qs_color"

    const-string v7, "color"

    invoke-virtual {v5, v6, v7}, Landroid/support/v21/toggle/QsData;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v21/toggle/QsData;->updateQsTitle(Ljava/lang/String;I)V

    return-void

    .line 30
    :pswitch_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsData;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    const-string v5, "qs_data_on"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsData;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsData;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 31
    goto :goto_0

    .line 33
    :pswitch_1
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsData;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    const-string v5, "qs_data_off"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QsData;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsData;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 34
    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
