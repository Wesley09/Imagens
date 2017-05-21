.class public Landroid/support/v21/btn/SettingsButton;
.super Landroid/widget/ImageView;
.source "SettingsButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/btn/SettingsButton$100000000;
    }
.end annotation


# instance fields
.field private cc:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/btn/SettingsButton;->cc:Landroid/content/Context;

    .line 17
    move-object v4, v0

    new-instance v5, Landroid/support/v21/btn/SettingsButton$100000000;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v21/btn/SettingsButton$100000000;-><init>(Landroid/support/v21/btn/SettingsButton;)V

    invoke-virtual {v4, v5}, Landroid/support/v21/btn/SettingsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$L1000000(Landroid/support/v21/btn/SettingsButton;)Landroid/content/Context;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/SettingsButton;->cc:Landroid/content/Context;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Landroid/support/v21/btn/SettingsButton;Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v21/btn/SettingsButton;->cc:Landroid/content/Context;

    return-void
.end method
