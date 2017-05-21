.class public Lcom/tenten/LayoutAnimation3;
.super Landroid/widget/LinearLayout;
.source "LayoutAnimation3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenten/LayoutAnimation3$100000000;,
        Lcom/tenten/LayoutAnimation3$100000001;,
        Lcom/tenten/LayoutAnimation3$100000002;,
        Lcom/tenten/LayoutAnimation3$100000003;
    }
.end annotation


# instance fields
.field at:Landroid/util/AttributeSet;

.field c:Landroid/content/Context;

.field fadeIn:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tenten/LayoutAnimation3;->c:Landroid/content/Context;

    .line 48
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/tenten/LayoutAnimation3;->at:Landroid/util/AttributeSet;

    .line 49
    move-object v4, v0

    invoke-virtual {v4}, Lcom/tenten/LayoutAnimation3;->setAnimations()V

    .line 50
    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation3;->c:Landroid/content/Context;

    new-instance v5, Lcom/tenten/LayoutAnimation3$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/tenten/LayoutAnimation3$100000000;-><init>(Lcom/tenten/LayoutAnimation3;)V

    check-cast v5, Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "boompaw"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 56
    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation3;->c:Landroid/content/Context;

    new-instance v5, Lcom/tenten/LayoutAnimation3$100000001;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/tenten/LayoutAnimation3$100000001;-><init>(Lcom/tenten/LayoutAnimation3;)V

    check-cast v5, Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "boompawpaw"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 62
    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation3;->c:Landroid/content/Context;

    new-instance v5, Lcom/tenten/LayoutAnimation3$100000002;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/tenten/LayoutAnimation3$100000002;-><init>(Lcom/tenten/LayoutAnimation3;)V

    check-cast v5, Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "shitbrix"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    return-void
.end method


# virtual methods
.method public boompaw()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-object v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/tenten/LayoutAnimation3;->setVisibility(I)V

    .line 72
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/tenten/LayoutAnimation3$100000003;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/tenten/LayoutAnimation3$100000003;-><init>(Lcom/tenten/LayoutAnimation3;)V

    check-cast v3, Ljava/lang/Runnable;

    const/16 v4, 0x1c2

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

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
    .line 82
    move-object v0, p0

    new-instance v2, Lcom/tenten/LayoutAnimation1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation3;->c:Landroid/content/Context;

    move-object v5, v0

    iget-object v5, v5, Lcom/tenten/LayoutAnimation3;->at:Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Lcom/tenten/LayoutAnimation1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v2}, Lcom/tenten/LayoutAnimation1;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v3, :cond_0

    new-instance v2, Lcom/tenten/LayoutAnimation2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation3;->c:Landroid/content/Context;

    move-object v5, v0

    iget-object v5, v5, Lcom/tenten/LayoutAnimation3;->at:Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Lcom/tenten/LayoutAnimation2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v2}, Lcom/tenten/LayoutAnimation2;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v3, :cond_1

    .line 83
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/tenten/LayoutAnimation3;->boompaw()V

    :cond_1
    return-void
.end method

.method public setAnimations()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, v2, Lcom/tenten/LayoutAnimation3;->fadeIn:Landroid/view/animation/Animation;

    .line 89
    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayoutAnimation3;->fadeIn:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 90
    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayoutAnimation3;->fadeIn:Landroid/view/animation/Animation;

    const/16 v3, 0x1f4

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method
