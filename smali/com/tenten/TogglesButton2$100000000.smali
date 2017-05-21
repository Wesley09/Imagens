.class Lcom/tenten/TogglesButton2$100000000;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TogglesButton2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenten/TogglesButton2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/tenten/TogglesButton2;


# direct methods
.method constructor <init>(Lcom/tenten/TogglesButton2;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tenten/TogglesButton2$100000000;->this$0:Lcom/tenten/TogglesButton2;

    return-void
.end method

.method static access$0(Lcom/tenten/TogglesButton2$100000000;)Lcom/tenten/TogglesButton2;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tenten/TogglesButton2$100000000;->this$0:Lcom/tenten/TogglesButton2;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Landroid/content/Intent;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "boompaw"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 39
    move-object v5, v0

    iget-object v5, v5, Lcom/tenten/TogglesButton2$100000000;->this$0:Lcom/tenten/TogglesButton2;

    iget-object v5, v5, Lcom/tenten/TogglesButton2;->c:Landroid/content/Context;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    const/4 v5, 0x1

    move v0, v5

    return v0
.end method
