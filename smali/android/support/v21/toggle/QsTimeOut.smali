.class public Landroid/support/v21/toggle/QsTimeOut;
.super Landroid/support/v21/toggle/QuickSettingsView;
.source "QsTimeOut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/toggle/QsTimeOut$Observe;
    }
.end annotation


# static fields
.field static TIME10M:I

.field static TIME15:I

.field static TIME1M:I

.field static TIME2M:I

.field static TIME30:I

.field static TIME30M:I

.field static TIME5M:I


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .locals 4

    const/16 v2, 0x3a98

    sput v2, Landroid/support/v21/toggle/QsTimeOut;->TIME15:I

    const/16 v2, 0x7530

    sput v2, Landroid/support/v21/toggle/QsTimeOut;->TIME30:I

    const v2, 0xea60

    sput v2, Landroid/support/v21/toggle/QsTimeOut;->TIME1M:I

    const v2, 0x1d4c0

    sput v2, Landroid/support/v21/toggle/QsTimeOut;->TIME2M:I

    const v2, 0x493e0

    sput v2, Landroid/support/v21/toggle/QsTimeOut;->TIME5M:I

    sget v2, Landroid/support/v21/toggle/QsTimeOut;->TIME1M:I

    const/16 v3, 0xa

    mul-int/lit8 v2, v2, 0xa

    sput v2, Landroid/support/v21/toggle/QsTimeOut;->TIME10M:I

    sget v2, Landroid/support/v21/toggle/QsTimeOut;->TIME1M:I

    const/16 v3, 0x1e

    mul-int/lit8 v2, v2, 0x1e

    sput v2, Landroid/support/v21/toggle/QsTimeOut;->TIME30M:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v21/toggle/QuickSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const-string v5, "qs_screen_timeout_"

    iput-object v5, v4, Landroid/support/v21/toggle/QsTimeOut;->a:Ljava/lang/String;

    .line 72
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v21/toggle/QsTimeOut;->updateState()V

    .line 73
    new-instance v4, Landroid/support/v21/toggle/QsTimeOut$Observe;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v21/toggle/QsTimeOut$Observe;-><init>(Landroid/support/v21/toggle/QsTimeOut;)V

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsTimeOut$Observe;->o()V

    return-void
.end method

.method static synthetic access$1000000(Landroid/support/v21/toggle/QsTimeOut;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v21/toggle/QsTimeOut;->updateState()V

    return-void
.end method

.method public static convertToString(I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 77
    move v0, p0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v4, v0

    const v5, 0xea60

    if-lt v4, v5, :cond_0

    move v4, v0

    const v5, 0xea60

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move v4, v0

    const v5, 0xea60

    if-ge v4, v5, :cond_1

    const-string v4, "s"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    :cond_0
    move v4, v0

    const/16 v5, 0x3e8

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "m"

    goto :goto_1
.end method

.method private updateState()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/toggle/QsTimeOut;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/toggle/QsTimeOut;->getCurrentTimeOut()I

    move-result v5

    invoke-static {v5}, Landroid/support/v21/toggle/QsTimeOut;->convertToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v21/toggle/QsTimeOut;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsTimeOut;->updateQsIcon(Landroid/graphics/drawable/Drawable;)V

    .line 84
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Screen Time Out "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/toggle/QsTimeOut;->getCurrentTimeOut()I

    move-result v4

    invoke-static {v4}, Landroid/support/v21/toggle/QsTimeOut;->convertToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    const-string v5, "qs_color"

    invoke-virtual {v4, v5}, Landroid/support/v21/toggle/QsTimeOut;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v21/toggle/QsTimeOut;->updateQsTitle(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method getCurrentTimeOut()I
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsTimeOut;->cr()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    sget v4, Landroid/support/v21/toggle/QsTimeOut;->TIME15:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method protected handleLongClick()Z
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 17
    move-object v4, v2

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 18
    move-object v4, v2

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 19
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/toggle/QuickSettingsView;->cc:Landroid/content/Context;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method protected toggleState()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/toggle/QsTimeOut;->getCurrentTimeOut()I

    move-result v5

    move v2, v5

    .line 49
    move v5, v2

    sget v6, Landroid/support/v21/toggle/QsTimeOut;->TIME15:I

    if-ne v5, v6, :cond_0

    .line 50
    sget v5, Landroid/support/v21/toggle/QsTimeOut;->TIME30:I

    move v3, v5

    .line 64
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/toggle/QsTimeOut;->cr()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    move v7, v3

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v5

    return-void

    .line 51
    :cond_0
    sget v5, Landroid/support/v21/toggle/QsTimeOut;->TIME30:I

    move v6, v2

    if-ne v5, v6, :cond_1

    .line 52
    sget v5, Landroid/support/v21/toggle/QsTimeOut;->TIME1M:I

    move v3, v5

    goto :goto_0

    .line 53
    :cond_1
    move v5, v2

    sget v6, Landroid/support/v21/toggle/QsTimeOut;->TIME1M:I

    if-ne v5, v6, :cond_2

    .line 54
    sget v5, Landroid/support/v21/toggle/QsTimeOut;->TIME2M:I

    move v3, v5

    goto :goto_0

    .line 55
    :cond_2
    move v5, v2

    sget v6, Landroid/support/v21/toggle/QsTimeOut;->TIME2M:I

    if-ne v5, v6, :cond_3

    .line 56
    sget v5, Landroid/support/v21/toggle/QsTimeOut;->TIME5M:I

    move v3, v5

    goto :goto_0

    .line 57
    :cond_3
    move v5, v2

    sget v6, Landroid/support/v21/toggle/QsTimeOut;->TIME5M:I

    if-ne v5, v6, :cond_4

    .line 58
    sget v5, Landroid/support/v21/toggle/QsTimeOut;->TIME10M:I

    move v3, v5

    goto :goto_0

    .line 59
    :cond_4
    move v5, v2

    sget v6, Landroid/support/v21/toggle/QsTimeOut;->TIME10M:I

    if-ne v5, v6, :cond_5

    .line 60
    sget v5, Landroid/support/v21/toggle/QsTimeOut;->TIME30M:I

    move v3, v5

    goto :goto_0

    .line 62
    :cond_5
    sget v5, Landroid/support/v21/toggle/QsTimeOut;->TIME15:I

    move v3, v5

    goto :goto_0
.end method
