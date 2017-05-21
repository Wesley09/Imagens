.class public Landroid/support/v21/AlLay;
.super Landroid/widget/ViewFlipper;
.source "AlLay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/AlLay$100000000;
    }
.end annotation


# instance fields
.field br:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    new-instance v5, Landroid/support/v21/AlLay$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v21/AlLay$100000000;-><init>(Landroid/support/v21/AlLay;)V

    iput-object v5, v4, Landroid/support/v21/AlLay;->br:Landroid/content/BroadcastReceiver;

    .line 20
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/AlLay;->br:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "com.ali.material"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    return-void
.end method


# virtual methods
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
    .line 27
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V

    .line 28
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/AlLay;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/AlLay;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateContent(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v21/AlLay;->setDisplayedChild(I)V

    .line 34
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/AlLay;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/AlLay;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "in_anim"

    const-string v7, "anim"

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v21/AlLay;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Landroid/support/v21/ScrollUtils;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v21/AlLay;->setInAnimation(Landroid/content/Context;I)V

    .line 35
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/AlLay;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/AlLay;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "out_anim"

    const-string v7, "anim"

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v21/AlLay;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Landroid/support/v21/ScrollUtils;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v21/AlLay;->setOutAnimation(Landroid/content/Context;I)V

    return-void
.end method
