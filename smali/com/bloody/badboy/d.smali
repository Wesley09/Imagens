.class public enum Lcom/bloody/badboy/d;
.super Ljava/lang/Enum;
.source "MaterialRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bloody/badboy/MaterialRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4029
    name = "RippleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bloody/badboy/d;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/bloody/badboy/d;

.field public static final DOUBLE:Lcom/bloody/badboy/d;

.field public static final RECTANGLE:Lcom/bloody/badboy/d;

.field public static final SIMPLE:Lcom/bloody/badboy/d;


# instance fields
.field type:I


# direct methods
.method static final constructor <clinit>()V
    .locals 8

    new-instance v2, Lcom/bloody/badboy/d;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "SIMPLE"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/bloody/badboy/d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bloody/badboy/d;->SIMPLE:Lcom/bloody/badboy/d;

    new-instance v2, Lcom/bloody/badboy/d;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "DOUBLE"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/bloody/badboy/d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bloody/badboy/d;->DOUBLE:Lcom/bloody/badboy/d;

    new-instance v2, Lcom/bloody/badboy/d;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "RECTANGLE"

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/bloody/badboy/d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bloody/badboy/d;->RECTANGLE:Lcom/bloody/badboy/d;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/bloody/badboy/d;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    sget-object v5, Lcom/bloody/badboy/d;->SIMPLE:Lcom/bloody/badboy/d;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x1

    sget-object v5, Lcom/bloody/badboy/d;->DOUBLE:Lcom/bloody/badboy/d;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x2

    sget-object v5, Lcom/bloody/badboy/d;->RECTANGLE:Lcom/bloody/badboy/d;

    aput-object v5, v3, v4

    sput-object v2, Lcom/bloody/badboy/d;->$VALUES:[Lcom/bloody/badboy/d;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/bloody/badboy/d;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bloody/badboy/d;
    .locals 9

    move-object v0, p0

    sget-object v6, Lcom/bloody/badboy/d;->$VALUES:[Lcom/bloody/badboy/d;

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

    invoke-virtual {v6}, Lcom/bloody/badboy/d;->name()Ljava/lang/String;

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

.method public static final values()[Lcom/bloody/badboy/d;
    .locals 3

    sget-object v2, Lcom/bloody/badboy/d;->$VALUES:[Lcom/bloody/badboy/d;

    invoke-virtual {v2}, [Lcom/bloody/badboy/d;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/bloody/badboy/d;

    move-object v0, v2

    return-object v0
.end method
