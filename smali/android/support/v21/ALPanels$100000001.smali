.class Landroid/support/v21/ALPanels$100000001;
.super Ljava/lang/Object;
.source "ALPanels.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/ALPanels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/ALPanels;


# direct methods
.method constructor <init>(Landroid/support/v21/ALPanels;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/ALPanels$100000001;->this$0:Landroid/support/v21/ALPanels;

    return-void
.end method

.method static access$0(Landroid/support/v21/ALPanels$100000001;)Landroid/support/v21/ALPanels;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels$100000001;->this$0:Landroid/support/v21/ALPanels;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/ALPanels$100000001;->this$0:Landroid/support/v21/ALPanels;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/ALPanels$100000001;->this$0:Landroid/support/v21/ALPanels;

    iget v3, v3, Landroid/support/v21/ALPanels;->mSlidingState:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/v21/ALPanels;->access$1000009(Landroid/support/v21/ALPanels;IZ)V

    return-void
.end method
