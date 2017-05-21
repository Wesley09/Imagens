.class Lcom/tenten/LayE11$100000001;
.super Landroid/content/BroadcastReceiver;
.source "LayE11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenten/LayE11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/tenten/LayE11;


# direct methods
.method constructor <init>(Lcom/tenten/LayE11;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tenten/LayE11$100000001;->this$0:Lcom/tenten/LayE11;

    return-void
.end method

.method static access$0(Lcom/tenten/LayE11$100000001;)Lcom/tenten/LayE11;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayE11$100000001;->this$0:Lcom/tenten/LayE11;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayE11$100000001;->this$0:Lcom/tenten/LayE11;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/tenten/LayE11;->setVisibility(I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayE11$100000001;->this$0:Lcom/tenten/LayE11;

    move-object v5, v0

    iget-object v5, v5, Lcom/tenten/LayE11$100000001;->this$0:Lcom/tenten/LayE11;

    invoke-static {v5}, Lcom/tenten/LayE11;->access$L1000002(Lcom/tenten/LayE11;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tenten/LayE11;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
