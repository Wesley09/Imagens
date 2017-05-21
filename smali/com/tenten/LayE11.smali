.class public Lcom/tenten/LayE11;
.super Landroid/widget/LinearLayout;
.source "LayE11.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenten/LayE11$100000000;,
        Lcom/tenten/LayE11$100000001;
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private enter:Landroid/view/animation/Animation;

.field private exit:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tenten/LayE11;->c:Landroid/content/Context;

    .line 36
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tenten/LayE11;->setVisibility(I)V

    .line 37
    move-object v4, v0

    invoke-direct {v4}, Lcom/tenten/LayE11;->setAnimations()V

    .line 38
    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayE11;->c:Landroid/content/Context;

    new-instance v5, Lcom/tenten/LayE11$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/tenten/LayE11$100000000;-><init>(Lcom/tenten/LayE11;)V

    check-cast v5, Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "labas"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 45
    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayE11;->c:Landroid/content/Context;

    new-instance v5, Lcom/tenten/LayE11$100000001;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/tenten/LayE11$100000001;-><init>(Lcom/tenten/LayE11;)V

    check-cast v5, Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "tago"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    return-void
.end method

.method static synthetic access$L1000001(Lcom/tenten/LayE11;)Landroid/view/animation/Animation;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayE11;->exit:Landroid/view/animation/Animation;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/tenten/LayE11;)Landroid/view/animation/Animation;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayE11;->enter:Landroid/view/animation/Animation;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000001(Lcom/tenten/LayE11;Landroid/view/animation/Animation;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tenten/LayE11;->exit:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/tenten/LayE11;Landroid/view/animation/Animation;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tenten/LayE11;->enter:Landroid/view/animation/Animation;

    return-void
.end method

.method private setAnimations()V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v3, v2, Lcom/tenten/LayE11;->exit:Landroid/view/animation/Animation;

    .line 59
    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayE11;->exit:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 60
    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayE11;->exit:Landroid/view/animation/Animation;

    const/16 v3, 0x1f4

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 61
    move-object v2, v0

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v3, v2, Lcom/tenten/LayE11;->enter:Landroid/view/animation/Animation;

    .line 66
    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayE11;->enter:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 67
    move-object v2, v0

    iget-object v2, v2, Lcom/tenten/LayE11;->enter:Landroid/view/animation/Animation;

    const/16 v3, 0x190

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method
