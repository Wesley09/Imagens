.class public Lcom/tenten/LayoutAnimation1;
.super Landroid/widget/LinearLayout;
.source "LayoutAnimation1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenten/LayoutAnimation1$100000000;,
        Lcom/tenten/LayoutAnimation1$100000001;,
        Lcom/tenten/LayoutAnimation1$100000002;,
        Lcom/tenten/LayoutAnimation1$100000003;,
        Lcom/tenten/LayoutAnimation1$100000004;
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field enter:Landroid/view/animation/Animation;

.field exit:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tenten/LayoutAnimation1;->c:Landroid/content/Context;

    .line 46
    move-object v4, v0

    invoke-virtual {v4}, Lcom/tenten/LayoutAnimation1;->setAnimations()V

    .line 47
    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation1;->c:Landroid/content/Context;

    new-instance v5, Lcom/tenten/LayoutAnimation1$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/tenten/LayoutAnimation1$100000000;-><init>(Lcom/tenten/LayoutAnimation1;)V

    check-cast v5, Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "boompaw"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 53
    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation1;->c:Landroid/content/Context;

    new-instance v5, Lcom/tenten/LayoutAnimation1$100000001;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/tenten/LayoutAnimation1$100000001;-><init>(Lcom/tenten/LayoutAnimation1;)V

    check-cast v5, Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "boompawpaw"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 59
    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation1;->c:Landroid/content/Context;

    new-instance v5, Lcom/tenten/LayoutAnimation1$100000002;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/tenten/LayoutAnimation1$100000002;-><init>(Lcom/tenten/LayoutAnimation1;)V

    check-cast v5, Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "boompawnert"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    return-void
.end method


# virtual methods
.method public boompaw()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/tenten/LayoutAnimation1;->getVisibility()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v5, :cond_0

    .line 72
    new-instance v4, Landroid/os/Handler;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/tenten/LayoutAnimation1$100000003;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/tenten/LayoutAnimation1$100000003;-><init>(Lcom/tenten/LayoutAnimation1;)V

    check-cast v5, Ljava/lang/Runnable;

    const/16 v6, 0x96

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 90
    :goto_0
    return-void

    .line 84
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/tenten/LayoutAnimation1;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "tago"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 87
    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation1;->c:Landroid/content/Context;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tenten/LayoutAnimation1;->setVisibility(I)V

    .line 89
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/tenten/LayoutAnimation1;->enter:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/tenten/LayoutAnimation1;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    goto :goto_0
.end method

.method public boompawnert()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/tenten/LayoutAnimation1;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 97
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tenten/LayoutAnimation1;->setVisibility(I)V

    .line 98
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayoutAnimation1;->enter:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/tenten/LayoutAnimation1;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public boompawpaw()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/tenten/LayoutAnimation1;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v3, :cond_0

    .line 104
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/tenten/LayoutAnimation1$100000004;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/tenten/LayoutAnimation1$100000004;-><init>(Lcom/tenten/LayoutAnimation1;)V

    check-cast v3, Ljava/lang/Runnable;

    const/16 v4, 0x96

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    :cond_0
    return-void
.end method

.method public setAnimations()V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Landroid/view/animation/ScaleAnimation;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const v10, 0x3e4ccccd    # 0.2f

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v3, v2, Lcom/tenten/LayoutAnimation1;->enter:Landroid/view/animation/Animation;

    .line 120
    move-object v2, v0

    new-instance v3, Landroid/view/animation/ScaleAnimation;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const v10, 0x3e4ccccd    # 0.2f

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v3, v2, Lcom/tenten/LayoutAnimation1;->exit:Landroid/view/animation/Animation;

    .line 121
    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayoutAnimation1;->enter:Landroid/view/animation/Animation;

    const/16 v3, 0x12c

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 122
    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayoutAnimation1;->exit:Landroid/view/animation/Animation;

    const/16 v3, 0x12c

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 123
    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayoutAnimation1;->enter:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 124
    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayoutAnimation1;->exit:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
