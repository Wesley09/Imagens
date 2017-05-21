.class public enum Lcom/serajr/utils/BlurUtils$BlurEngine;
.super Ljava/lang/Enum;
.source "BlurUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serajr/utils/BlurUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4029
    name = "BlurEngine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/serajr/utils/BlurUtils$BlurEngine;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/serajr/utils/BlurUtils$BlurEngine;

.field public static final FastBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

.field public static final RenderScriptBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

.field public static final StackBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;


# direct methods
.method static final constructor <clinit>()V
    .locals 7

    new-instance v2, Lcom/serajr/utils/BlurUtils$BlurEngine;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "RenderScriptBlur"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/serajr/utils/BlurUtils$BlurEngine;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/serajr/utils/BlurUtils$BlurEngine;->RenderScriptBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    new-instance v2, Lcom/serajr/utils/BlurUtils$BlurEngine;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "StackBlur"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/serajr/utils/BlurUtils$BlurEngine;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/serajr/utils/BlurUtils$BlurEngine;->StackBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    new-instance v2, Lcom/serajr/utils/BlurUtils$BlurEngine;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "FastBlur"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/serajr/utils/BlurUtils$BlurEngine;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/serajr/utils/BlurUtils$BlurEngine;->FastBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/serajr/utils/BlurUtils$BlurEngine;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    sget-object v5, Lcom/serajr/utils/BlurUtils$BlurEngine;->RenderScriptBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    sget-object v5, Lcom/serajr/utils/BlurUtils$BlurEngine;->StackBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    sget-object v5, Lcom/serajr/utils/BlurUtils$BlurEngine;->FastBlur:Lcom/serajr/utils/BlurUtils$BlurEngine;

    aput-object v5, v3, v4

    sput-object v2, Lcom/serajr/utils/BlurUtils$BlurEngine;->$VALUES:[Lcom/serajr/utils/BlurUtils$BlurEngine;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/serajr/utils/BlurUtils$BlurEngine;
    .locals 8

    .prologue
    .line 25
    move-object v0, p0

    sget-object v5, Lcom/serajr/utils/BlurUtils$BlurEngine;->$VALUES:[Lcom/serajr/utils/BlurUtils$BlurEngine;

    move-object v1, v5

    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v1

    array-length v6, v6

    if-lt v5, v6, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_0
    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Lcom/serajr/utils/BlurUtils$BlurEngine;->name()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    move-object v0, v5

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/serajr/utils/BlurUtils$BlurEngine;
    .locals 3

    .prologue
    .line 25
    sget-object v2, Lcom/serajr/utils/BlurUtils$BlurEngine;->$VALUES:[Lcom/serajr/utils/BlurUtils$BlurEngine;

    invoke-virtual {v2}, [Lcom/serajr/utils/BlurUtils$BlurEngine;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/serajr/utils/BlurUtils$BlurEngine;

    move-object v0, v2

    return-object v0
.end method
