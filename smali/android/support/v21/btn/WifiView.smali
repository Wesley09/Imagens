.class public Landroid/support/v21/btn/WifiView;
.super Landroid/widget/ImageView;
.source "WifiView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/btn/WifiView$100000000;
    }
.end annotation


# instance fields
.field A_CONECT_CHANGE:Ljava/lang/String;

.field A_INET_COND:Ljava/lang/String;

.field A_RSSI_CHANGED:Ljava/lang/String;

.field A_WIFI_STATE:Ljava/lang/String;

.field A_WIFI_STATE_CHANGE:Ljava/lang/String;

.field private br:Landroid/content/BroadcastReceiver;

.field f:Ljava/lang/String;

.field inetCond:I

.field isConected:Z

.field lastSignal:I

.field s:Ljava/lang/String;

.field sWifiImages:[[Landroid/graphics/drawable/Drawable;

.field temporaryWifiNotConect:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    .prologue
    .line 23
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v21/btn/WifiView;->isConected:Z

    move-object v6, v0

    const-string v7, "stat_sys_wifi_signal_"

    iput-object v7, v6, Landroid/support/v21/btn/WifiView;->s:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "_fully"

    iput-object v7, v6, Landroid/support/v21/btn/WifiView;->f:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "android.net.wifi.STATE_CHANGE"

    iput-object v7, v6, Landroid/support/v21/btn/WifiView;->A_WIFI_STATE:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    iput-object v7, v6, Landroid/support/v21/btn/WifiView;->A_WIFI_STATE_CHANGE:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "android.net.wifi.RSSI_CHANGED"

    iput-object v7, v6, Landroid/support/v21/btn/WifiView;->A_RSSI_CHANGED:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "android.net.conn.INET_CONDITION_ACTION"

    iput-object v7, v6, Landroid/support/v21/btn/WifiView;->A_INET_COND:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    iput-object v7, v6, Landroid/support/v21/btn/WifiView;->A_CONECT_CHANGE:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v21/btn/WifiView;->lastSignal:I

    move-object v6, v0

    move-object v7, v0

    const-string v8, "stat_sys_wifi_signal_0"

    invoke-direct {v7, v8}, Landroid/support/v21/btn/WifiView;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v21/btn/WifiView;->temporaryWifiNotConect:Landroid/graphics/drawable/Drawable;

    .line 24
    const/4 v6, 0x2

    new-array v6, v6, [[Landroid/graphics/drawable/Drawable;

    move-object v4, v6

    .line 25
    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x0

    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v21/btn/WifiView;->s:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v21/btn/WifiView;->n(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/v21/btn/WifiView;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x1

    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v21/btn/WifiView;->s:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/support/v21/btn/WifiView;->n(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/v21/btn/WifiView;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x2

    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v21/btn/WifiView;->s:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/support/v21/btn/WifiView;->n(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/v21/btn/WifiView;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x3

    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v21/btn/WifiView;->s:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/support/v21/btn/WifiView;->n(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/v21/btn/WifiView;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v10

    aput-object v8, v6, v7

    .line 26
    move-object v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x0

    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v21/btn/WifiView;->s:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/v21/btn/WifiView;->n(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v21/btn/WifiView;->f:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/v21/btn/WifiView;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x1

    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v21/btn/WifiView;->s:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v14, v0

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/support/v21/btn/WifiView;->n(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v21/btn/WifiView;->f:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/v21/btn/WifiView;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x2

    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v21/btn/WifiView;->s:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v14, v0

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/support/v21/btn/WifiView;->n(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v21/btn/WifiView;->f:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/v21/btn/WifiView;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x3

    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v21/btn/WifiView;->s:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v14, v0

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/support/v21/btn/WifiView;->n(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v21/btn/WifiView;->f:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/v21/btn/WifiView;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v10

    aput-object v8, v6, v7

    .line 27
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroid/support/v21/btn/WifiView;->sWifiImages:[[Landroid/graphics/drawable/Drawable;

    .line 28
    move-object v6, v0

    const/4 v7, 0x0

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/support/v21/btn/WifiView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/support/v21/btn/WifiView;->setVisibility(I)V

    .line 30
    move-object v6, v0

    new-instance v7, Landroid/support/v21/btn/WifiView$100000000;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v21/btn/WifiView$100000000;-><init>(Landroid/support/v21/btn/WifiView;)V

    iput-object v7, v6, Landroid/support/v21/btn/WifiView;->br:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/btn/WifiView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/btn/WifiView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v7, v1

    const-string v8, "drawable"

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v21/btn/WifiView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, v5

    .line 136
    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method n(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

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
    .line 49
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 50
    new-instance v4, Landroid/content/IntentFilter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/WifiView;->A_WIFI_STATE:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 51
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/WifiView;->A_WIFI_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/WifiView;->A_RSSI_CHANGED:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/WifiView;->A_INET_COND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/WifiView;->A_CONECT_CHANGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    move-object v4, v2

    const-string v5, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/btn/WifiView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/WifiView;->br:Landroid/content/BroadcastReceiver;

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
    .line 63
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 64
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/btn/WifiView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/WifiView;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateKonek(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v1

    const-string v9, "networkInfo"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    move-object v5, v8

    .line 71
    move-object v8, v1

    const-string v9, "inetCondition"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/16 v9, 0x32

    if-le v8, v9, :cond_0

    .line 72
    const/4 v8, 0x1

    move v4, v8

    .line 76
    :goto_0
    move-object v8, v5

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 96
    :goto_1
    return-void

    .line 74
    :cond_0
    const/4 v8, 0x0

    move v4, v8

    goto :goto_0

    .line 78
    :pswitch_0
    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroid/support/v21/btn/WifiView;->inetCond:I

    .line 79
    move-object v8, v5

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 80
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/v21/btn/WifiView;->isConected:Z

    .line 82
    move-object v8, v0

    iget v8, v8, Landroid/support/v21/btn/WifiView;->lastSignal:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 83
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/btn/WifiView;->sWifiImages:[[Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    iget v9, v9, Landroid/support/v21/btn/WifiView;->inetCond:I

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v6, v8

    .line 87
    :goto_2
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v21/btn/WifiView;->setVisibility(I)V

    .line 88
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v21/btn/WifiView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    goto :goto_1

    .line 85
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/btn/WifiView;->sWifiImages:[[Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    iget v9, v9, Landroid/support/v21/btn/WifiView;->inetCond:I

    aget-object v8, v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/support/v21/btn/WifiView;->lastSignal:I

    aget-object v8, v8, v9

    move-object v6, v8

    goto :goto_2

    .line 91
    :cond_2
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Landroid/support/v21/btn/WifiView;->lastSignal:I

    .line 92
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v21/btn/WifiView;->isConected:Z

    .line 93
    move-object v8, v0

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/support/v21/btn/WifiView;->setVisibility(I)V

    .line 94
    goto :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateWifi(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v8, 0x0

    move v4, v8

    .line 103
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/btn/WifiView;->A_WIFI_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 104
    move-object v8, v1

    const-string v9, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 105
    const/4 v8, 0x1

    move v4, v8

    .line 107
    :cond_0
    move v8, v4

    if-nez v8, :cond_1

    .line 108
    move-object v8, v0

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/support/v21/btn/WifiView;->setVisibility(I)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 111
    move-object v8, v1

    const-string v9, "connected"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_3

    .line 112
    move-object v8, v0

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/support/v21/btn/WifiView;->setVisibility(I)V

    :cond_3
    goto :goto_0

    .line 114
    :cond_4
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/btn/WifiView;->A_RSSI_CHANGED:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 115
    move-object v8, v1

    const-string v9, "newRssi"

    const/16 v10, -0xc8

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v21/btn/WifiView;->sWifiImages:[[Landroid/graphics/drawable/Drawable;

    array-length v9, v9

    invoke-static {v8, v9}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v8

    move v5, v8

    .line 116
    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroid/support/v21/btn/WifiView;->lastSignal:I

    if-eq v8, v9, :cond_1

    .line 117
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroid/support/v21/btn/WifiView;->lastSignal:I

    .line 119
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v21/btn/WifiView;->isConected:Z

    if-eqz v8, :cond_5

    .line 120
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/btn/WifiView;->sWifiImages:[[Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    iget v9, v9, Landroid/support/v21/btn/WifiView;->inetCond:I

    aget-object v8, v8, v9

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 124
    :goto_1
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v21/btn/WifiView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 122
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/btn/WifiView;->temporaryWifiNotConect:Landroid/graphics/drawable/Drawable;

    move-object v6, v8

    goto :goto_1
.end method
