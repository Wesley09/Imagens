.class Landroid/support/v21/toggle/QsData$100000000;
.super Ljava/lang/Object;
.source "QsData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/toggle/QsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/toggle/QsData;


# direct methods
.method constructor <init>(Landroid/support/v21/toggle/QsData;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/toggle/QsData$100000000;->this$0:Landroid/support/v21/toggle/QsData;

    return-void
.end method

.method static access$0(Landroid/support/v21/toggle/QsData$100000000;)Landroid/support/v21/toggle/QsData;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsData$100000000;->this$0:Landroid/support/v21/toggle/QsData;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
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

    iget-object v2, v2, Landroid/support/v21/toggle/QsData$100000000;->this$0:Landroid/support/v21/toggle/QsData;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/toggle/QsData$100000000;->this$0:Landroid/support/v21/toggle/QsData;

    invoke-virtual {v3}, Landroid/support/v21/toggle/QsData;->getConect()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v21/toggle/QsData;->setActive(I)V

    .line 64
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsData$100000000;->this$0:Landroid/support/v21/toggle/QsData;

    invoke-virtual {v2}, Landroid/support/v21/toggle/QsData;->updateState()V

    .line 65
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/toggle/QsData$100000000;->this$0:Landroid/support/v21/toggle/QsData;

    invoke-static {v2}, Landroid/support/v21/toggle/QsData;->access$L1000000(Landroid/support/v21/toggle/QsData;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v0

    const/16 v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    return-void

    .line 63
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
