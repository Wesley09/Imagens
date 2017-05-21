.class public enum Landroid/support/v21/ScrollState;
.super Ljava/lang/Enum;
.source "ScrollState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/v21/ScrollState;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Landroid/support/v21/ScrollState;

.field public static final DOWN:Landroid/support/v21/ScrollState;

.field public static final STOP:Landroid/support/v21/ScrollState;

.field public static final UP:Landroid/support/v21/ScrollState;


# direct methods
.method static final constructor <clinit>()V
    .locals 7

    new-instance v2, Landroid/support/v21/ScrollState;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "STOP"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v21/ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/support/v21/ScrollState;->STOP:Landroid/support/v21/ScrollState;

    new-instance v2, Landroid/support/v21/ScrollState;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "UP"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v21/ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/support/v21/ScrollState;->UP:Landroid/support/v21/ScrollState;

    new-instance v2, Landroid/support/v21/ScrollState;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "DOWN"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/support/v21/ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/support/v21/ScrollState;->DOWN:Landroid/support/v21/ScrollState;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/support/v21/ScrollState;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    sget-object v5, Landroid/support/v21/ScrollState;->STOP:Landroid/support/v21/ScrollState;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    sget-object v5, Landroid/support/v21/ScrollState;->UP:Landroid/support/v21/ScrollState;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    sget-object v5, Landroid/support/v21/ScrollState;->DOWN:Landroid/support/v21/ScrollState;

    aput-object v5, v3, v4

    sput-object v2, Landroid/support/v21/ScrollState;->$VALUES:[Landroid/support/v21/ScrollState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v21/ScrollState;
    .locals 9

    .prologue
    .line 38
    move-object v0, p0

    sget-object v6, Landroid/support/v21/ScrollState;->$VALUES:[Landroid/support/v21/ScrollState;

    move-object v2, v6

    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move-object v7, v2

    array-length v7, v7

    if-lt v6, v7, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_0
    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v21/ScrollState;->name()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    move-object v0, v6

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static final values()[Landroid/support/v21/ScrollState;
    .locals 3

    .prologue
    .line 38
    sget-object v2, Landroid/support/v21/ScrollState;->$VALUES:[Landroid/support/v21/ScrollState;

    invoke-virtual {v2}, [Landroid/support/v21/ScrollState;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/support/v21/ScrollState;

    move-object v0, v2

    return-object v0
.end method
