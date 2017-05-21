.class Lcom/bloody/badboy/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MaterialRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bloody/badboy/MaterialRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/bloody/badboy/MaterialRipple;


# direct methods
.method constructor <init>(Lcom/bloody/badboy/MaterialRipple;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bloody/badboy/b;->this$0:Lcom/bloody/badboy/MaterialRipple;

    return-void
.end method

.method static access$0(Lcom/bloody/badboy/b;)Lcom/bloody/badboy/MaterialRipple;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/bloody/badboy/b;->this$0:Lcom/bloody/badboy/MaterialRipple;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/bloody/badboy/b;->this$0:Lcom/bloody/badboy/MaterialRipple;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/bloody/badboy/MaterialRipple;->animateRipple(Landroid/view/MotionEvent;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/bloody/badboy/b;->this$0:Lcom/bloody/badboy/MaterialRipple;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v3, v4}, Lcom/bloody/badboy/MaterialRipple;->access$1000032(Lcom/bloody/badboy/MaterialRipple;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x1

    move v0, v3

    return v0
.end method
