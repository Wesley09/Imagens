.class Lcom/bloody/badboy/a;
.super Ljava/lang/Object;
.source "MaterialRipple.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bloody/badboy/MaterialRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/bloody/badboy/MaterialRipple;


# direct methods
.method constructor <init>(Lcom/bloody/badboy/MaterialRipple;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bloody/badboy/a;->this$0:Lcom/bloody/badboy/MaterialRipple;

    return-void
.end method

.method static access$0(Lcom/bloody/badboy/a;)Lcom/bloody/badboy/MaterialRipple;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/bloody/badboy/a;->this$0:Lcom/bloody/badboy/MaterialRipple;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/bloody/badboy/a;->this$0:Lcom/bloody/badboy/MaterialRipple;

    invoke-virtual {v2}, Lcom/bloody/badboy/MaterialRipple;->invalidate()V

    return-void
.end method
