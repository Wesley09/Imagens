.class Lcom/tenten/LayoutAnimation1$100000002;
.super Landroid/content/BroadcastReceiver;
.source "LayoutAnimation1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenten/LayoutAnimation1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/tenten/LayoutAnimation1;


# direct methods
.method constructor <init>(Lcom/tenten/LayoutAnimation1;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tenten/LayoutAnimation1$100000002;->this$0:Lcom/tenten/LayoutAnimation1;

    return-void
.end method

.method static access$0(Lcom/tenten/LayoutAnimation1$100000002;)Lcom/tenten/LayoutAnimation1;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/LayoutAnimation1$100000002;->this$0:Lcom/tenten/LayoutAnimation1;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/tenten/LayoutAnimation1$100000002;->this$0:Lcom/tenten/LayoutAnimation1;

    invoke-virtual {v4}, Lcom/tenten/LayoutAnimation1;->boompawnert()V

    return-void
.end method
