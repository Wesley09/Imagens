.class public abstract Landroid/support/v21/toggle/QuickSettingsView;
.super Landroid/widget/LinearLayout;
.source "QuickSettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field protected static final ACTIVE:I = 0x1

.field public static final C:Ljava/lang/String; = "color"

.field public static final COLOR_ACTIVE:Ljava/lang/String; = "color_on"

.field public static final COLOR_DEACTIVE:Ljava/lang/String; = "color_off"

.field public static final COLOR_PREPARE:Ljava/lang/String; = "color_ing"

.field public static final D:Ljava/lang/String; = "drawable"

.field protected static final DEACTIVE:I = 0x0

.field protected static final PREPARED:I = 0x3

.field protected static final PREPARING:I = 0x2

.field public static final SETTING_PACKAGE_TARGET:Ljava/lang/String; = "com.android.settings"


# instance fields
.field public cc:Landroid/content/Context;

.field mActiveStatus:I

.field mActivityTarget:Ljava/lang/String;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mDivider:Landroid/view/View;

.field mIcon:Landroid/widget/ImageView;

.field mIntentFilter:Landroid/content/IntentFilter;

.field mPackageTarget:Ljava/lang/String;

.field mTitle:Landroid/widget/TextView;

.field showIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v21/toggle/QuickSettingsView;->showIndicator:Z

    .line 29
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    .line 30
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QuickSettingsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QuickSettingsView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 32
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->mPackageTarget:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->mActivityTarget:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QuickSettingsView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 33
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v21/toggle/QuickSettingsView;->initializeView()V

    return-void
.end method

.method private collapse()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 154
    const-string v6, "android.app.StatusBarManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 155
    move-object v6, v3

    const-string v7, "collapse"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v4, v6

    .line 156
    move-object v6, v4

    move-object v7, v2

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    return-void

    :catch_0
    move-exception v6

    move-object v2, v6

    goto :goto_0
.end method

.method private collapsePanels()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    return-void
.end method

.method private initializeView()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v21/toggle/QuickSettingsView;->setOrientation(I)V

    .line 47
    move-object v5, v0

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/support/v21/toggle/QuickSettingsView;->setGravity(I)V

    .line 48
    move-object v5, v0

    new-instance v6, Landroid/widget/TextView;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Landroid/support/v21/toggle/QuickSettingsView;->mTitle:Landroid/widget/TextView;

    .line 49
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QuickSettingsView;->mTitle:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 50
    move-object v5, v0

    new-instance v6, Landroid/widget/ImageView;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Landroid/support/v21/toggle/QuickSettingsView;->mIcon:Landroid/widget/ImageView;

    .line 51
    move-object v5, v0

    new-instance v6, Landroid/view/View;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Landroid/support/v21/toggle/QuickSettingsView;->mDivider:Landroid/view/View;

    .line 52
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v5

    .line 53
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v5

    .line 54
    move-object v5, v3

    const/16 v6, 0xf

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 55
    move-object v5, v3

    const/16 v6, 0xf

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 56
    move-object v5, v3

    const/16 v6, 0xf

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 57
    move-object v5, v3

    const/16 v6, 0xf

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 58
    move-object v5, v3

    const/4 v6, 0x1

    int-to-float v6, v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 59
    move-object v5, v3

    const/4 v6, 0x1

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 60
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QuickSettingsView;->mDivider:Landroid/view/View;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    move-object v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 62
    move-object v5, v2

    const/4 v6, 0x1

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 63
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QuickSettingsView;->mTitle:Landroid/widget/TextView;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QuickSettingsView;->mIcon:Landroid/widget/ImageView;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QuickSettingsView;->mTitle:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/toggle/QuickSettingsView;->mIcon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v21/toggle/QuickSettingsView;->addView(Landroid/view/View;I)V

    .line 67
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/toggle/QuickSettingsView;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/support/v21/toggle/QuickSettingsView;->addView(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected cr()Landroid/content/ContentResolver;
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected getActiveStatus()I
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/toggle/QuickSettingsView;->mActiveStatus:I

    move v0, v2

    return v0
.end method

.method protected getColor(Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QuickSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    const-string v6, "color"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QuickSettingsView;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move v0, v3

    return v0
.end method

.method protected getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QuickSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/toggle/QuickSettingsView;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected abstract handleLongClick()Z
.end method

.method protected onAttachedToWindow()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 75
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QuickSettingsView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QuickSettingsView;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v2, :cond_0

    .line 76
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QuickSettingsView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
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
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QuickSettingsView;->toggleState()V

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
    .line 83
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QuickSettingsView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QuickSettingsView;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v2, :cond_0

    .line 84
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QuickSettingsView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.systemui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    move-object v5, v0

    :try_start_0
    invoke-direct {v5}, Landroid/support/v21/toggle/QuickSettingsView;->collapsePanels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/toggle/QuickSettingsView;->handleLongClick()Z

    move-result v5

    move v0, v5

    return v0

    .line 136
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 138
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v21/toggle/QuickSettingsView;->collapse()V

    goto :goto_0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QuickSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method protected setActive(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v21/toggle/QuickSettingsView;->mActiveStatus:I

    return-void
.end method

.method protected setActivityTarget(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/toggle/QuickSettingsView;->mActivityTarget:Ljava/lang/String;

    .line 120
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/toggle/QuickSettingsView;->invalidate()V

    return-void
.end method

.method protected showIndicator(ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Landroid/support/v21/toggle/QuickSettingsView;->showIndicator:Z

    .line 96
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->mDivider:Landroid/view/View;

    if-eqz v4, :cond_0

    move v4, v1

    if-eqz v4, :cond_0

    .line 97
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QuickSettingsView;->removeAllViews()V

    .line 98
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->mDivider:Landroid/view/View;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 99
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QuickSettingsView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QuickSettingsView;->addView(Landroid/view/View;)V

    .line 100
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QuickSettingsView;->mDivider:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QuickSettingsView;->addView(Landroid/view/View;)V

    .line 101
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QuickSettingsView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QuickSettingsView;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected abstract toggleState()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public updateQsBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/content/IntentFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/toggle/QuickSettingsView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v21/toggle/QuickSettingsView;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method protected updateQsIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QuickSettingsView;->mIcon:Landroid/widget/ImageView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected updateQsTitle(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->mTitle:Landroid/widget/TextView;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    move v4, v2

    const/4 v5, 0x0

    if-ne v4, v5, :cond_0

    move v4, v2

    const/4 v5, 0x0

    if-eq v4, v5, :cond_1

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->mTitle:Landroid/widget/TextView;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
