.class Lcom/fmd/statusbarcolor/color$1;
.super Ljava/lang/Object;
.source "color.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fmd/statusbarcolor/color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fmd/statusbarcolor/color;


# direct methods
.method constructor <init>(Lcom/fmd/statusbarcolor/color;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fmd/statusbarcolor/color$1;->this$0:Lcom/fmd/statusbarcolor/color;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fmd/statusbarcolor/color$1;->this$0:Lcom/fmd/statusbarcolor/color;

    # invokes: Lcom/fmd/statusbarcolor/color;->SetColor()V
    invoke-static {v0}, Lcom/fmd/statusbarcolor/color;->access$0(Lcom/fmd/statusbarcolor/color;)V

    .line 72
    iget-object v0, p0, Lcom/fmd/statusbarcolor/color$1;->this$0:Lcom/fmd/statusbarcolor/color;

    # getter for: Lcom/fmd/statusbarcolor/color;->Updater:Landroid/os/Handler;
    invoke-static {v0}, Lcom/fmd/statusbarcolor/color;->access$1(Lcom/fmd/statusbarcolor/color;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color$1;->this$0:Lcom/fmd/statusbarcolor/color;

    # getter for: Lcom/fmd/statusbarcolor/color;->UPDATE:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/fmd/statusbarcolor/color;->access$2(Lcom/fmd/statusbarcolor/color;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/fmd/statusbarcolor/color$1;->this$0:Lcom/fmd/statusbarcolor/color;

    # getter for: Lcom/fmd/statusbarcolor/color;->UpdaterTime:I
    invoke-static {v2}, Lcom/fmd/statusbarcolor/color;->access$3(Lcom/fmd/statusbarcolor/color;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method
